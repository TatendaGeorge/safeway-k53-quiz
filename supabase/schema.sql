-- K53 Learners Licence Quiz App Schema
-- Run this in Supabase SQL Editor

-- Categories: road_signs, rules_of_the_road, vehicle_controls
create table categories (
  id serial primary key,
  slug text unique not null,
  name text not null,
  description text
);

insert into categories (slug, name, description) values
  ('road_signs', 'Road Signs', 'Road signs, signals and markings'),
  ('rules_of_the_road', 'Rules of the Road', 'Rules and regulations governing road use'),
  ('vehicle_controls', 'Vehicle Controls', 'Vehicle mechanics and controls');

-- Questions
create table questions (
  id serial primary key,
  category_id integer references categories(id) not null,
  source text,                    -- e.g. "freek53.xyz - Road Sign Test 1"
  question_text text not null,
  image_url text,                 -- sign/marking image
  created_at timestamptz default now()
);

-- Answer options (3 per question)
create table options (
  id serial primary key,
  question_id integer references questions(id) on delete cascade not null,
  label char(1) not null,         -- a, b, c
  option_text text not null,
  is_correct boolean default false not null
);

-- User quiz attempts
create table quiz_attempts (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) on delete cascade not null,
  category_id integer references categories(id),
  total_questions integer not null,
  correct_answers integer default 0,
  completed_at timestamptz,
  created_at timestamptz default now()
);

-- Individual answer records per attempt
create table quiz_answers (
  id serial primary key,
  attempt_id uuid references quiz_attempts(id) on delete cascade not null,
  question_id integer references questions(id) not null,
  selected_option_id integer references options(id),
  is_correct boolean not null,
  answered_at timestamptz default now()
);

-- Indexes
create index idx_questions_category on questions(category_id);
create index idx_options_question on options(question_id);
create index idx_quiz_attempts_user on quiz_attempts(user_id);
create index idx_quiz_answers_attempt on quiz_answers(attempt_id);

-- RLS policies
alter table categories enable row level security;
alter table questions enable row level security;
alter table options enable row level security;
alter table quiz_attempts enable row level security;
alter table quiz_answers enable row level security;

-- Anyone can read questions/categories/options
create policy "Public read categories" on categories for select using (true);
create policy "Public read questions" on questions for select using (true);
create policy "Public read options" on options for select using (true);

-- Users can only see/create their own attempts
create policy "Users read own attempts" on quiz_attempts
  for select using (auth.uid() = user_id);
create policy "Users insert own attempts" on quiz_attempts
  for insert with check (auth.uid() = user_id);
create policy "Users update own attempts" on quiz_attempts
  for update using (auth.uid() = user_id);

create policy "Users read own answers" on quiz_answers
  for select using (
    attempt_id in (select id from quiz_attempts where user_id = auth.uid())
  );
create policy "Users insert own answers" on quiz_answers
  for insert with check (
    attempt_id in (select id from quiz_attempts where user_id = auth.uid())
  );

-- RPC function to increment quiz score
create or replace function increment_score(attempt_id_param uuid)
returns void as $$
  update quiz_attempts
  set correct_answers = correct_answers + 1
  where id = attempt_id_param;
$$ language sql security definer;
