import 'dotenv/config'
import express from 'express'
import cors from 'cors'
import { fileURLToPath } from 'url'
import { dirname } from 'path'

// Import API handlers
import authSignup from './api/auth-signup.js'
import authLogin from './api/auth-login.js'
import quizStart from './api/quiz-start.js'
import quizStartFull from './api/quiz-start-full.js'
import quizAnswer from './api/quiz-answer.js'
import quizComplete from './api/quiz-complete.js'
// Admin routes
import adminCheck from './api/admin/check.js'
import adminUsers from './api/admin/users.js'
import adminCreateUser from './api/admin/create-user.js'
import adminAttempts from './api/admin/attempts.js'
import adminAttemptDetail from './api/admin/attempt-detail.js'

const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

const app = express()
const PORT = 3001

app.use(cors())
app.use(express.json())

// Wrap Vercel-style handlers for Express
const wrapHandler = (handler) => async (req, res) => {
  try {
    await handler(req, res)
  } catch (error) {
    console.error('API Error:', error)
    if (!res.headersSent) {
      res.status(500).json({ error: error.message })
    }
  }
}

// API routes
app.post('/api/auth/signup', wrapHandler(authSignup))
app.post('/api/auth/login', wrapHandler(authLogin))
app.post('/api/quiz-start', wrapHandler(quizStart))
app.post('/api/quiz-start-full', wrapHandler(quizStartFull))
app.post('/api/quiz-answer', wrapHandler(quizAnswer))
app.post('/api/quiz-complete', wrapHandler(quizComplete))

// Admin routes
app.get('/api/admin/check', wrapHandler(adminCheck))
app.get('/api/admin/users', wrapHandler(adminUsers))
app.post('/api/admin/users', wrapHandler(adminCreateUser))
app.get('/api/admin/attempts', wrapHandler(adminAttempts))
app.get('/api/admin/attempt-detail', wrapHandler(adminAttemptDetail))

app.listen(PORT, () => {
  console.log(`API server running at http://localhost:${PORT}`)
})
