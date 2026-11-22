-- Familien-Essensplaner: initiales Datenbankschema
-- Im Supabase SQL Editor ausführen. Keine Service-Role-Schlüssel im Browser verwenden.

create extension if not exists pgcrypto;

create table if not exists public.families (
  id uuid primary key default gen_random_uuid(),
  name text not null default 'Meine Familie',
  created_by uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now()
);

create table if not exists public.family_members (
  family_id uuid not null references public.families(id) on delete cascade,
  user_id uuid not null references auth.users(id) on delete cascade,
  role text not null default 'member' check (role in ('owner', 'member')),
  joined_at timestamptz not null default now(),
  primary key (family_id, user_id)
);

create or replace function public.is_family_member(target_family uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1 from public.family_members fm
    where fm.family_id = target_family and fm.user_id = auth.uid()
  );
$$;

create or replace function public.add_family_creator_as_owner()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.family_members (family_id, user_id, role)
  values (new.id, new.created_by, 'owner')
  on conflict do nothing;
  return new;
end;
$$;

drop trigger if exists family_creator_membership on public.families;
create trigger family_creator_membership
after insert on public.families
for each row execute function public.add_family_creator_as_owner();

create table if not exists public.dishes (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references public.families(id) on delete cascade,
  title text not null,
  description text,
  category text,
  prep_minutes integer check (prep_minutes is null or prep_minutes >= 0),
  cook_minutes integer check (cook_minutes is null or cook_minutes >= 0),
  servings integer not null default 3 check (servings > 0),
  ingredients jsonb not null default '[]'::jsonb,
  instructions text,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.dish_favorites (
  dish_id uuid not null references public.dishes(id) on delete cascade,
  user_id uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (dish_id, user_id)
);

create table if not exists public.dish_ratings (
  dish_id uuid not null references public.dishes(id) on delete cascade,
  user_id uuid not null references auth.users(id) on delete cascade,
  rating smallint not null check (rating between 1 and 5),
  updated_at timestamptz not null default now(),
  primary key (dish_id, user_id)
);

create table if not exists public.weekly_meals (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references public.families(id) on delete cascade,
  dish_id uuid references public.dishes(id) on delete set null,
  planned_for date not null,
  meal_slot text not null default 'dinner',
  servings integer not null default 3 check (servings > 0),
  note text,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now()
);

alter table public.families enable row level security;
alter table public.family_members enable row level security;
alter table public.dishes enable row level security;
alter table public.dish_favorites enable row level security;
alter table public.dish_ratings enable row level security;
alter table public.weekly_meals enable row level security;

drop policy if exists "members can read their families" on public.families;
create policy "members can read their families" on public.families
for select to authenticated using (public.is_family_member(id));

drop policy if exists "authenticated users can create a family" on public.families;
create policy "authenticated users can create a family" on public.families
for insert to authenticated with check (created_by = auth.uid());

drop policy if exists "owners can update their families" on public.families;
create policy "owners can update their families" on public.families
for update to authenticated
using (exists (select 1 from public.family_members fm where fm.family_id = id and fm.user_id = auth.uid() and fm.role = 'owner'))
with check (exists (select 1 from public.family_members fm where fm.family_id = id and fm.user_id = auth.uid() and fm.role = 'owner'));

drop policy if exists "members can read family memberships" on public.family_members;
create policy "members can read family memberships" on public.family_members
for select to authenticated using (public.is_family_member(family_id));

drop policy if exists "members can manage family dishes" on public.dishes;
create policy "members can manage family dishes" on public.dishes
for all to authenticated
using (public.is_family_member(family_id))
with check (public.is_family_member(family_id));

drop policy if exists "users manage their own favorites" on public.dish_favorites;
create policy "users manage their own favorites" on public.dish_favorites
for all to authenticated
using (user_id = auth.uid() and exists (select 1 from public.dishes d where d.id = dish_id and public.is_family_member(d.family_id)))
with check (user_id = auth.uid() and exists (select 1 from public.dishes d where d.id = dish_id and public.is_family_member(d.family_id)));

drop policy if exists "users manage their own ratings" on public.dish_ratings;
create policy "users manage their own ratings" on public.dish_ratings
for all to authenticated
using (user_id = auth.uid() and exists (select 1 from public.dishes d where d.id = dish_id and public.is_family_member(d.family_id)))
with check (user_id = auth.uid() and exists (select 1 from public.dishes d where d.id = dish_id and public.is_family_member(d.family_id)));

drop policy if exists "members manage weekly meals" on public.weekly_meals;
create policy "members manage weekly meals" on public.weekly_meals
for all to authenticated
using (public.is_family_member(family_id))
with check (public.is_family_member(family_id));

grant usage on schema public to authenticated;
grant select, insert, update, delete on public.families, public.family_members, public.dishes, public.dish_favorites, public.dish_ratings, public.weekly_meals to authenticated;
