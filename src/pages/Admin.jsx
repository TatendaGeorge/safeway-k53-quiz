import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import {
  checkAdminStatus,
  getAdminUsers,
  createAdminUser,
  getAdminAttempts,
  getAdminAttemptDetail
} from '../lib/api'

// Supabase-inspired icons
const Icons = {
  users: (
    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/>
      <circle cx="9" cy="7" r="4"/>
      <path d="M23 21v-2a4 4 0 0 0-3-3.87"/>
      <path d="M16 3.13a4 4 0 0 1 0 7.75"/>
    </svg>
  ),
  tests: (
    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
      <polyline points="14 2 14 8 20 8"/>
      <line x1="16" y1="13" x2="8" y2="13"/>
      <line x1="16" y1="17" x2="8" y2="17"/>
      <polyline points="10 9 9 9 8 9"/>
    </svg>
  ),
  home: (
    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/>
      <polyline points="9 22 9 12 15 12 15 22"/>
    </svg>
  ),
  plus: (
    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <line x1="12" y1="5" x2="12" y2="19"/>
      <line x1="5" y1="12" x2="19" y2="12"/>
    </svg>
  ),
  check: (
    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <polyline points="20 6 9 17 4 12"/>
    </svg>
  ),
  x: (
    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <line x1="18" y1="6" x2="6" y2="18"/>
      <line x1="6" y1="6" x2="18" y2="18"/>
    </svg>
  ),
  eye: (
    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"/>
      <circle cx="12" cy="12" r="3"/>
    </svg>
  ),
  back: (
    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <line x1="19" y1="12" x2="5" y2="12"/>
      <polyline points="12 19 5 12 12 5"/>
    </svg>
  ),
  copy: (
    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
      <rect x="9" y="9" width="13" height="13" rx="2" ry="2"/>
      <path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/>
    </svg>
  ),
}

export default function Admin() {
  const navigate = useNavigate()
  const { user, signOut } = useAuth()
  const [isAdmin, setIsAdmin] = useState(false)
  const [loading, setLoading] = useState(true)
  const [activeTab, setActiveTab] = useState('users')

  // Users state
  const [users, setUsers] = useState([])
  const [showAddUser, setShowAddUser] = useState(false)
  const [newUser, setNewUser] = useState({ email: '', password: '', full_name: '', is_admin: false })
  const [userError, setUserError] = useState('')
  const [userSuccess, setUserSuccess] = useState('')
  const [selectedUserId, setSelectedUserId] = useState(null)

  // Attempts state
  const [attempts, setAttempts] = useState([])
  const [selectedAttempt, setSelectedAttempt] = useState(null)
  const [attemptDetail, setAttemptDetail] = useState(null)

  useEffect(() => {
    checkAdmin()
  }, [])

  useEffect(() => {
    if (isAdmin) {
      if (activeTab === 'users') loadUsers()
      if (activeTab === 'tests') loadAttempts()
    }
  }, [isAdmin, activeTab])

  const checkAdmin = async () => {
    try {
      const result = await checkAdminStatus()
      setIsAdmin(result.is_admin)
      if (!result.is_admin) {
        navigate('/dashboard')
      }
    } catch (err) {
      navigate('/dashboard')
    } finally {
      setLoading(false)
    }
  }

  const loadUsers = async () => {
    try {
      const data = await getAdminUsers()
      setUsers(data.users)
    } catch (err) {
      console.error(err)
    }
  }

  const loadAttempts = async (userId = null) => {
    try {
      const data = await getAdminAttempts(userId)
      setAttempts(data.attempts)
    } catch (err) {
      console.error(err)
    }
  }

  const handleCreateUser = async (e) => {
    e.preventDefault()
    setUserError('')
    setUserSuccess('')

    try {
      await createAdminUser(newUser)
      setUserSuccess('User created successfully')
      setNewUser({ email: '', password: '', full_name: '', is_admin: false })
      setShowAddUser(false)
      loadUsers()
    } catch (err) {
      setUserError(err.message)
    }
  }

  const viewUserTests = (userId) => {
    setSelectedUserId(userId)
    setActiveTab('tests')
    loadAttempts(userId)
  }

  const viewAttemptDetail = async (attemptId) => {
    try {
      const data = await getAdminAttemptDetail(attemptId)
      setAttemptDetail(data)
      setSelectedAttempt(attemptId)
    } catch (err) {
      console.error(err)
    }
  }

  const formatDate = (dateStr) => {
    if (!dateStr) return '-'
    return new Date(dateStr).toLocaleDateString('en-ZA', {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    })
  }

  if (loading) {
    return (
      <div className="admin-loading">
        <p>Loading...</p>
      </div>
    )
  }

  if (!isAdmin) {
    return null
  }

  return (
    <div className="admin">
      {/* Sidebar */}
      <aside className="admin-sidebar">
        <div className="admin-logo">
          <span className="admin-logo-icon">K53</span>
          <span className="admin-logo-text">Admin</span>
        </div>

        <nav className="admin-nav">
          <button
            className={`admin-nav-item ${activeTab === 'users' ? 'active' : ''}`}
            onClick={() => { setActiveTab('users'); setSelectedUserId(null); setSelectedAttempt(null); }}
          >
            {Icons.users}
            <span>Users</span>
          </button>
          <button
            className={`admin-nav-item ${activeTab === 'tests' ? 'active' : ''}`}
            onClick={() => { setActiveTab('tests'); setSelectedUserId(null); setSelectedAttempt(null); loadAttempts(); }}
          >
            {Icons.tests}
            <span>Test Results</span>
          </button>
          <div className="admin-nav-divider" />
          <button className="admin-nav-item" onClick={() => navigate('/dashboard')}>
            {Icons.home}
            <span>Back to App</span>
          </button>
        </nav>

        <div className="admin-sidebar-footer">
          <div className="admin-user">
            <span className="admin-user-email">{user?.email}</span>
            <button className="admin-signout" onClick={signOut}>Sign out</button>
          </div>
        </div>
      </aside>

      {/* Main Content */}
      <main className="admin-main">
        {/* Users Tab */}
        {activeTab === 'users' && !selectedAttempt && (
          <>
            <header className="admin-header">
              <div>
                <h1 className="admin-title">Users</h1>
                <p className="admin-subtitle">Manage users and their access to the system</p>
              </div>
              <button className="admin-btn admin-btn-primary" onClick={() => setShowAddUser(true)}>
                {Icons.plus}
                <span>Add user</span>
              </button>
            </header>

            {/* Add User Modal */}
            {showAddUser && (
              <div className="admin-modal-overlay" onClick={() => setShowAddUser(false)}>
                <div className="admin-modal" onClick={e => e.stopPropagation()}>
                  <div className="admin-modal-header">
                    <h2>Add new user</h2>
                    <button className="admin-modal-close" onClick={() => setShowAddUser(false)}>
                      {Icons.x}
                    </button>
                  </div>
                  <form onSubmit={handleCreateUser}>
                    <div className="admin-form-group">
                      <label>Email</label>
                      <input
                        type="email"
                        value={newUser.email}
                        onChange={e => setNewUser({ ...newUser, email: e.target.value })}
                        required
                        placeholder="user@example.com"
                      />
                    </div>
                    <div className="admin-form-group">
                      <label>Full name</label>
                      <input
                        type="text"
                        value={newUser.full_name}
                        onChange={e => setNewUser({ ...newUser, full_name: e.target.value })}
                        placeholder="John Doe"
                      />
                    </div>
                    <div className="admin-form-group">
                      <label>Password</label>
                      <input
                        type="password"
                        value={newUser.password}
                        onChange={e => setNewUser({ ...newUser, password: e.target.value })}
                        required
                        minLength={6}
                        placeholder="Min 6 characters"
                      />
                    </div>
                    <div className="admin-form-check">
                      <input
                        type="checkbox"
                        id="is_admin"
                        checked={newUser.is_admin}
                        onChange={e => setNewUser({ ...newUser, is_admin: e.target.checked })}
                      />
                      <label htmlFor="is_admin">Grant admin privileges</label>
                    </div>
                    {userError && <div className="admin-error">{userError}</div>}
                    {userSuccess && <div className="admin-success">{userSuccess}</div>}
                    <div className="admin-modal-actions">
                      <button type="button" className="admin-btn" onClick={() => setShowAddUser(false)}>
                        Cancel
                      </button>
                      <button type="submit" className="admin-btn admin-btn-primary">
                        Create user
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            )}

            {/* Users Table */}
            <div className="admin-card">
              <table className="admin-table">
                <thead>
                  <tr>
                    <th>User</th>
                    <th>Role</th>
                    <th>Tests taken</th>
                    <th>Joined</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {users.map(u => (
                    <tr key={u.id}>
                      <td>
                        <div className="admin-user-cell">
                          <span className="admin-user-name">{u.full_name || u.email}</span>
                          {u.full_name && <span className="admin-user-email-sub">{u.email}</span>}
                        </div>
                      </td>
                      <td>
                        <span className={`admin-badge ${u.is_admin ? 'admin-badge-green' : ''}`}>
                          {u.is_admin ? 'Admin' : 'User'}
                        </span>
                      </td>
                      <td>{u.attempt_count}</td>
                      <td className="admin-date">{formatDate(u.created_at)}</td>
                      <td>
                        <button
                          className="admin-btn-icon"
                          onClick={() => viewUserTests(u.id)}
                          title="View tests"
                        >
                          {Icons.eye}
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
              {users.length === 0 && (
                <div className="admin-empty">No users found</div>
              )}
            </div>
          </>
        )}

        {/* Tests Tab */}
        {activeTab === 'tests' && !selectedAttempt && (
          <>
            <header className="admin-header">
              <div>
                <h1 className="admin-title">
                  {selectedUserId ? 'User Test Results' : 'All Test Results'}
                </h1>
                <p className="admin-subtitle">
                  {selectedUserId
                    ? 'Viewing tests for selected user'
                    : 'Review all completed tests and answers'}
                </p>
              </div>
              {selectedUserId && (
                <button className="admin-btn" onClick={() => { setSelectedUserId(null); loadAttempts(); }}>
                  {Icons.back}
                  <span>View all</span>
                </button>
              )}
            </header>

            <div className="admin-card">
              <table className="admin-table">
                <thead>
                  <tr>
                    <th>User</th>
                    <th>Score</th>
                    <th>Result</th>
                    <th>Date</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {attempts.map(a => (
                    <tr key={a.id}>
                      <td>
                        <div className="admin-user-cell">
                          <span className="admin-user-name">{a.user_name || a.user_email}</span>
                          {a.user_name && <span className="admin-user-email-sub">{a.user_email}</span>}
                        </div>
                      </td>
                      <td>
                        <span className="admin-score">
                          {a.correct_answers}/{a.total_questions}
                          <span className="admin-score-pct">({a.percentage}%)</span>
                        </span>
                      </td>
                      <td>
                        <span className={`admin-badge ${a.passed ? 'admin-badge-green' : 'admin-badge-red'}`}>
                          {a.passed ? 'Pass' : 'Fail'}
                        </span>
                      </td>
                      <td className="admin-date">{formatDate(a.completed_at)}</td>
                      <td>
                        <button
                          className="admin-btn-icon"
                          onClick={() => viewAttemptDetail(a.id)}
                          title="View answers"
                        >
                          {Icons.eye}
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
              {attempts.length === 0 && (
                <div className="admin-empty">No test results found</div>
              )}
            </div>
          </>
        )}

        {/* Attempt Detail View */}
        {selectedAttempt && attemptDetail && (
          <>
            <header className="admin-header">
              <div>
                <button
                  className="admin-back-link"
                  onClick={() => { setSelectedAttempt(null); setAttemptDetail(null); }}
                >
                  {Icons.back} Back to results
                </button>
                <h1 className="admin-title">Test Review</h1>
                <p className="admin-subtitle">
                  {attemptDetail.attempt.user_name || attemptDetail.attempt.user_email} · {formatDate(attemptDetail.attempt.completed_at)}
                </p>
              </div>
              <div className={`admin-result-badge ${attemptDetail.attempt.passed ? 'pass' : 'fail'}`}>
                {attemptDetail.attempt.passed ? 'PASSED' : 'FAILED'}
                <span>{attemptDetail.attempt.percentage}%</span>
              </div>
            </header>

            {/* Score Summary */}
            <div className="admin-card admin-summary">
              <div className="admin-stat">
                <span className="admin-stat-value">{attemptDetail.attempt.correct_answers}</span>
                <span className="admin-stat-label">Correct</span>
              </div>
              <div className="admin-stat">
                <span className="admin-stat-value">{attemptDetail.attempt.total_questions - attemptDetail.attempt.correct_answers}</span>
                <span className="admin-stat-label">Incorrect</span>
              </div>
              <div className="admin-stat">
                <span className="admin-stat-value">{attemptDetail.attempt.total_questions}</span>
                <span className="admin-stat-label">Total</span>
              </div>
            </div>

            {/* Answers List */}
            <div className="admin-answers">
              {attemptDetail.answers.map((ans, idx) => (
                <div key={idx} className={`admin-answer-card ${ans.is_correct ? 'correct' : 'incorrect'}`}>
                  <div className="admin-answer-header">
                    <span className="admin-answer-num">Q{idx + 1}</span>
                    <span className={`admin-answer-status ${ans.is_correct ? 'correct' : 'incorrect'}`}>
                      {ans.is_correct ? Icons.check : Icons.x}
                      {ans.is_correct ? 'Correct' : 'Incorrect'}
                    </span>
                    {ans.category && <span className="admin-answer-cat">{ans.category}</span>}
                  </div>

                  {ans.image_url && (
                    <div className="admin-answer-image">
                      <img src={ans.image_url} alt="Question" />
                    </div>
                  )}

                  <p className="admin-answer-question">{ans.question_text}</p>

                  <div className="admin-answer-options">
                    {ans.all_options.map((opt, oidx) => (
                      <div
                        key={oidx}
                        className={`admin-option ${opt.is_correct ? 'correct' : ''} ${opt.was_selected && !opt.is_correct ? 'wrong' : ''} ${opt.was_selected ? 'selected' : ''}`}
                      >
                        <span className="admin-option-label">{opt.label.toUpperCase()}</span>
                        <span className="admin-option-text">{opt.text}</span>
                        {opt.is_correct && <span className="admin-option-tag correct">{Icons.check}</span>}
                        {opt.was_selected && !opt.is_correct && <span className="admin-option-tag wrong">{Icons.x}</span>}
                      </div>
                    ))}
                  </div>
                </div>
              ))}
            </div>
          </>
        )}
      </main>
    </div>
  )
}
