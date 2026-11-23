-- Familien-Einladungen für Alpha 0.2
-- Einladungs-Token werden ausschließlich gehasht gespeichert und sind 7 Tage gültig.

create table if not exists public.family_invitations (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references public.families(id) on delete cascade,
  token_hash text not null unique,
  created_by uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),
  expires_at timestamptz not null,
  accepted_by uuid references auth.users(id) on delete set null,
  accepted_at timestamptz
);

create index if not exists family_invitations_family_id_idx
  on public.family_invitations (family_id);

alter table public.family_invitations enable row level security;

-- Kein direkter Tabellenzugriff durch App-Nutzer; Zugriff erfolgt nur über RPCs.
revoke all on table public.family_invitations from anon, authenticated;

create or replace function public.create_family_invitation()
returns table (invitation_token text, expires_at timestamptz)
language plpgsql
security definer
set search_path = public, extensions, pg_temp
as $$
declare
  v_family_id uuid;
  v_token text;
  v_expires_at timestamptz;
begin
  if auth.uid() is null then
    raise exception 'Anmeldung erforderlich.';
  end if;

  select fm.family_id
    into v_family_id
  from public.family_members fm
  where fm.user_id = auth.uid()
    and fm.role = 'owner'
  order by fm.joined_at
  limit 1;

  if v_family_id is null then
    raise exception 'Nur Familien-Eigentümer können Einladungen erstellen.';
  end if;

  v_token := encode(gen_random_bytes(32), 'hex');
  v_expires_at := now() + interval '7 days';

  insert into public.family_invitations (
    family_id, token_hash, created_by, expires_at
  )
  values (
    v_family_id,
    encode(digest(v_token, 'sha256'), 'hex'),
    auth.uid(),
    v_expires_at
  );

  return query select v_token, v_expires_at;
end;
$$;

create or replace function public.accept_family_invitation(invitation_token text)
returns uuid
language plpgsql
security definer
set search_path = public, extensions, pg_temp
as $$
declare
  v_invitation public.family_invitations%rowtype;
begin
  if auth.uid() is null then
    raise exception 'Bitte melde dich zuerst an.';
  end if;

  if invitation_token is null
     or length(invitation_token) <> 64
     or invitation_token !~ '^[0-9a-f]{64}$' then
    raise exception 'Der Einladungslink ist ungültig.';
  end if;

  select *
    into v_invitation
  from public.family_invitations fi
  where fi.token_hash = encode(digest(invitation_token, 'sha256'), 'hex')
  for update;

  if not found then
    raise exception 'Die Einladung wurde nicht gefunden oder ist ungültig.';
  end if;

  if v_invitation.accepted_at is not null then
    raise exception 'Diese Einladung wurde bereits verwendet.';
  end if;

  if v_invitation.expires_at <= now() then
    raise exception 'Diese Einladung ist abgelaufen.';
  end if;

  if exists (
    select 1
    from public.family_members fm
    where fm.family_id = v_invitation.family_id
      and fm.user_id = auth.uid()
  ) then
    raise exception 'Du bist bereits Mitglied dieser Familie.';
  end if;

  insert into public.family_members (family_id, user_id, role)
  values (v_invitation.family_id, auth.uid(), 'member');

  update public.family_invitations
  set accepted_by = auth.uid(),
      accepted_at = now()
  where id = v_invitation.id;

  return v_invitation.family_id;
end;
$$;

revoke all on function public.create_family_invitation() from public, anon;
revoke all on function public.accept_family_invitation(text) from public, anon;

grant execute on function public.create_family_invitation() to authenticated;
grant execute on function public.accept_family_invitation(text) to authenticated;
