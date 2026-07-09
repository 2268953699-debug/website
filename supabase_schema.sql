-- Supabase setup for 双人自律打卡同步版
-- 1) 在 Supabase SQL Editor 运行本文件
-- 2) Table Editor 打开 buddy_rooms → Realtime 勾选/启用；或在 Database Replication 中把该表加入 realtime publication
-- 3) 在网页设置里填入 Project URL 和 anon public key

create table if not exists public.buddy_rooms (
  room_id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.buddy_rooms enable row level security;

drop policy if exists "Allow anonymous read by room" on public.buddy_rooms;
drop policy if exists "Allow anonymous upsert by room" on public.buddy_rooms;

create policy "Allow anonymous read by room"
on public.buddy_rooms
for select
to anon
using (true);

create policy "Allow anonymous upsert by room"
on public.buddy_rooms
for insert
to anon
with check (true);

create policy "Allow anonymous update by room"
on public.buddy_rooms
for update
to anon
using (true)
with check (true);
