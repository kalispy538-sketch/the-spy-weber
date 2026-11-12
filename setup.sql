-- The Spy Weber video database
-- Run this SQL once in Supabase: SQL Editor -> New query -> Run.

create table if not exists public.spyweber_videos (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  sector text not null check (sector in (
    'headtalk','promo','re-promo','re-pro','ai-editor','cinematic','motion'
  )),
  youtube_id text not null check (youtube_id ~ '^[A-Za-z0-9_-]{11}$'),
  created_at timestamptz not null default now()
);

alter table public.spyweber_videos enable row level security;

drop policy if exists "Public can view Spy Weber videos" on public.spyweber_videos;
create policy "Public can view Spy Weber videos"
on public.spyweber_videos for select
to anon, authenticated
using (true);

drop policy if exists "Signed-in admins can add Spy Weber videos" on public.spyweber_videos;
create policy "Signed-in admins can add Spy Weber videos"
on public.spyweber_videos for insert
to authenticated
with check (auth.uid() is not null);

drop policy if exists "Signed-in admins can delete Spy Weber videos" on public.spyweber_videos;
create policy "Signed-in admins can delete Spy Weber videos"
on public.spyweber_videos for delete
to authenticated
using (auth.uid() is not null);

-- IMPORTANT:
-- In Supabase Dashboard -> Authentication -> Providers / Sign In settings,
-- disable public email sign-ups. Keep only your existing admin account.
-- The public page uses the publishable key only; never put a service_role key in GitHub.
