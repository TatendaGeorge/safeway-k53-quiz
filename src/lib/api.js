import { supabase } from './supabase'

async function getAuthHeader() {
  const { data: { session } } = await supabase.auth.getSession()
  if (!session) throw new Error('Not authenticated')
  return `Bearer ${session.access_token}`
}

export async function startQuiz(categorySlug = 'road_signs', numQuestions = 30) {
  const response = await fetch('/api/quiz-start', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Authorization: await getAuthHeader(),
    },
    body: JSON.stringify({
      category_slug: categorySlug,
      num_questions: numQuestions,
    }),
  })

  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to start quiz')
  }

  return response.json()
}

export async function startFullQuiz(mode = 'practice') {
  const response = await fetch('/api/quiz-start-full', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Authorization: await getAuthHeader(),
    },
    body: JSON.stringify({ mode }),
  })

  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to start full test')
  }

  return response.json()
}

export async function submitAnswer(attemptId, questionId, selectedOptionId) {
  const response = await fetch('/api/quiz-answer', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Authorization: await getAuthHeader(),
    },
    body: JSON.stringify({
      attempt_id: attemptId,
      question_id: questionId,
      selected_option_id: selectedOptionId,
    }),
  })

  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to submit answer')
  }

  return response.json()
}

export async function completeQuiz(attemptId) {
  const response = await fetch('/api/quiz-complete', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Authorization: await getAuthHeader(),
    },
    body: JSON.stringify({
      attempt_id: attemptId,
    }),
  })

  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to complete quiz')
  }

  return response.json()
}

// Admin API functions
export async function checkAdminStatus() {
  const response = await fetch('/api/admin/check', {
    headers: { Authorization: await getAuthHeader() },
  })
  if (!response.ok) return { is_admin: false }
  return response.json()
}

export async function getAdminUsers() {
  const response = await fetch('/api/admin/users', {
    headers: { Authorization: await getAuthHeader() },
  })
  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to fetch users')
  }
  return response.json()
}

export async function createAdminUser(userData) {
  const response = await fetch('/api/admin/users', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Authorization: await getAuthHeader(),
    },
    body: JSON.stringify(userData),
  })
  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to create user')
  }
  return response.json()
}

export async function getAdminAttempts(userId = null) {
  const url = userId ? `/api/admin/attempts?user_id=${userId}` : '/api/admin/attempts'
  const response = await fetch(url, {
    headers: { Authorization: await getAuthHeader() },
  })
  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to fetch attempts')
  }
  return response.json()
}

export async function getAdminAttemptDetail(attemptId) {
  const response = await fetch(`/api/admin/attempt-detail?attempt_id=${attemptId}`, {
    headers: { Authorization: await getAuthHeader() },
  })
  if (!response.ok) {
    const error = await response.json()
    throw new Error(error.error || 'Failed to fetch attempt details')
  }
  return response.json()
}
