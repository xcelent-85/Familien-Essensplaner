-- Alpha 0.3: gemeinsame, familienübergreifende Rezept-Grundsammlung
-- Im Supabase SQL Editor ausführen.
-- Bestehende Familientabellen und vorhandene Gerichte bleiben unverändert.

create table if not exists public.recipe_catalog (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  title text not null,
  description text,
  category text not null,
  prep_minutes integer not null default 0 check (prep_minutes >= 0),
  cook_minutes integer not null default 0 check (cook_minutes >= 0),
  servings integer not null default 3 check (servings > 0),
  ingredients jsonb not null default '[]'::jsonb
    check (jsonb_typeof(ingredients) = 'array'),
  instructions text not null,
  image_url text,
  is_published boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists recipe_catalog_published_category_idx
  on public.recipe_catalog (category, title)
  where is_published = true;

create index if not exists recipe_catalog_published_time_idx
  on public.recipe_catalog ((prep_minutes + cook_minutes))
  where is_published = true;

alter table public.recipe_catalog enable row level security;

drop policy if exists "published recipes are readable" on public.recipe_catalog;
create policy "published recipes are readable"
  on public.recipe_catalog
  for select
  to anon, authenticated
  using (is_published = true);

grant select on public.recipe_catalog to anon, authenticated;
revoke insert, update, delete on public.recipe_catalog from anon, authenticated;

-- Ein Wochenplaneintrag kann künftig entweder auf ein eigenes Familiengericht
-- (dish_id) oder auf ein Rezept aus dem gemeinsamen Katalog verweisen.
alter table public.weekly_meals
  add column if not exists catalog_recipe_id uuid
  references public.recipe_catalog(id) on delete set null;

create index if not exists weekly_meals_catalog_recipe_idx
  on public.weekly_meals (catalog_recipe_id)
  where catalog_recipe_id is not null;

comment on table public.recipe_catalog is
  'Gemeinsame, veröffentlichte Rezept-Grundsammlung für alle Familien (Alpha 0.3).';
comment on column public.weekly_meals.catalog_recipe_id is
  'Optionaler Verweis auf ein Rezept aus dem gemeinsamen Rezeptkatalog.';
