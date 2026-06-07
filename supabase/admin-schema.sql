-- Admin Schema Extension
-- Run this in Supabase SQL Editor after schema.sql

-- User profiles table to track admin status
create table if not exists user_profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  email text,
  full_name text,
  is_admin boolean default false,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Enable RLS
alter table user_profiles enable row level security;

-- Users can read their own profile
create policy "Users read own profile" on user_profiles
  for select using (auth.uid() = id);

-- Users can update their own profile (but not is_admin)
create policy "Users update own profile" on user_profiles
  for update using (auth.uid() = id);

-- Admins can read all profiles
create policy "Admins read all profiles" on user_profiles
  for select using (
    exists (select 1 from user_profiles where id = auth.uid() and is_admin = true)
  );

-- Admins can update all profiles
create policy "Admins update all profiles" on user_profiles
  for update using (
    exists (select 1 from user_profiles where id = auth.uid() and is_admin = true)
  );

-- Admins can insert profiles
create policy "Admins insert profiles" on user_profiles
  for insert with check (
    exists (select 1 from user_profiles where id = auth.uid() and is_admin = true)
  );

-- Admins can read all quiz attempts
create policy "Admins read all attempts" on quiz_attempts
  for select using (
    exists (select 1 from user_profiles where id = auth.uid() and is_admin = true)
  );

-- Admins can read all quiz answers
create policy "Admins read all answers" on quiz_answers
  for select using (
    exists (select 1 from user_profiles where id = auth.uid() and is_admin = true)
  );

-- Function to auto-create profile on user signup
create or replace function handle_new_user()
returns trigger as $$
begin
  insert into user_profiles (id, email, full_name)
  values (new.id, new.email, new.raw_user_meta_data->>'full_name');
  return new;
end;
$$ language plpgsql security definer;

-- Trigger for new user signup
drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function handle_new_user();

-- Create profile for existing users (run once)
insert into user_profiles (id, email)
select id, email from auth.users
on conflict (id) do nothing;

-- Make the first user (or specific email) an admin
-- Update this email to your admin email
update user_profiles set is_admin = true
where email = 'georgetatenda27@gmail.com';
