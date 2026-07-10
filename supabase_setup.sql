-- Execute este script no Supabase: SQL Editor > New query > Run
create table if not exists public.painel_storage (
  storage_key text primary key,
  storage_value text not null,
  updated_at timestamptz not null default now()
);

alter table public.painel_storage enable row level security;

drop policy if exists "Leitura publica painel" on public.painel_storage;
create policy "Leitura publica painel"
on public.painel_storage for select
to anon
using (true);

drop policy if exists "Inclusao publica painel" on public.painel_storage;
create policy "Inclusao publica painel"
on public.painel_storage for insert
to anon
with check (true);

drop policy if exists "Atualizacao publica painel" on public.painel_storage;
create policy "Atualizacao publica painel"
on public.painel_storage for update
to anon
using (true)
with check (true);

drop policy if exists "Exclusao publica painel" on public.painel_storage;
create policy "Exclusao publica painel"
on public.painel_storage for delete
to anon
using (true);

create index if not exists painel_storage_updated_at_idx
on public.painel_storage (updated_at desc);
