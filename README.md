# K53 Learners Licence Quiz App

React + Vercel + Supabase

## Setup

### 1. Supabase
- Create a project at [supabase.com](https://supabase.com)
- Go to SQL Editor → run `supabase/schema.sql`
- Then run `supabase/seed.sql` to load the 60 questions
- Copy your project URL, anon key, and service role key

### 2. Local Dev
```bash
npm install
cp .env.example .env  # fill in your Supabase keys
npm run dev
```

### 3. Deploy to Vercel
```bash
npm i -g vercel
vercel
```
Set environment variables in Vercel dashboard:
- `VITE_SUPABASE_URL`
- `VITE_SUPABASE_ANON_KEY`
- `SUPABASE_URL`
- `SUPABASE_ANON_KEY`
- `SUPABASE_SERVICE_ROLE_KEY`

## Project Structure
```
k53-app/
├── api/                    # Vercel serverless API routes
│   ├── _lib/supabase.js    # Server-side Supabase clients
│   ├── quiz-start.js       # POST - generate quiz, return questions
│   ├── quiz-answer.js      # POST - submit answer, get result
│   └── quiz-complete.js    # POST - finish quiz, get score
├── src/
│   ├── lib/supabase.js     # Frontend Supabase client
│   ├── components/         # React components
│   └── pages/              # Page components
├── supabase/
│   ├── schema.sql          # DB tables, RLS policies, RPC functions
│   └── seed.sql            # 60 K53 questions (road signs tests 1 & 2)
└── .env.example
```

## API Endpoints

### `POST /api/quiz-start`
Start a new quiz. Returns questions without correct answers.
```json
{ "category_slug": "road_signs", "num_questions": 30 }
```

### `POST /api/quiz-answer`
Submit an answer. Returns whether correct + the right answer.
```json
{ "attempt_id": "uuid", "question_id": 1, "selected_option_id": 3 }
```

### `POST /api/quiz-complete`
Finish the quiz. Returns score, percentage, pass/fail (77% pass mark).
```json
{ "attempt_id": "uuid" }
```
