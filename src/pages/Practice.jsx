import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { startQuiz, startFullQuiz } from '../lib/api'
import { Btn, Icon, SECTION_COLOR } from '../components/ui'
import Sidebar from '../components/Sidebar'

const SECTIONS = {
  road_signs: { id: 'road_signs', name: 'Road Signs', short: 'Signs', pass: 23, total: 30, questions: 212 },
  rules_of_the_road: { id: 'rules_of_the_road', name: 'Rules of the Road', short: 'Rules', pass: 22, total: 30, questions: 82 },
  vehicle_controls: { id: 'vehicle_controls', name: 'Vehicle Controls', short: 'Controls', pass: 6, total: 8, questions: 14 },
}

export default function Practice() {
  const [focus, setFocus] = useState('full_test')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const navigate = useNavigate()

  const focusOpts = [
    { id: 'full_test', label: 'Full K53 Test', n: 68, desc: '30 + 30 + 8 questions' },
    { id: 'road_signs', label: 'Road Signs', n: SECTIONS.road_signs.questions },
    { id: 'rules_of_the_road', label: 'Rules of the Road', n: SECTIONS.rules_of_the_road.questions },
    { id: 'vehicle_controls', label: 'Vehicle Controls', n: SECTIONS.vehicle_controls.questions },
  ]

  const handleStart = async () => {
    setError('')
    setLoading(true)

    try {
      if (focus === 'full_test') {
        const data = await startFullQuiz('practice')
        navigate(`/quiz/${data.attempt_id}`, {
          state: {
            questions: data.questions,
            totalQuestions: data.total_questions,
            mode: 'practice',
            focus,
            isFullTest: true,
            structure: data.structure,
          },
        })
      } else {
        const numQuestions = focus === 'road_signs' ? 30 : focus === 'rules_of_the_road' ? 30 : 8
        const data = await startQuiz(focus, numQuestions)
        navigate(`/quiz/${data.attempt_id}`, {
          state: {
            questions: data.questions,
            totalQuestions: data.total_questions,
            mode: 'practice',
            focus,
            isFullTest: false,
          },
        })
      }
    } catch (err) {
      setError(err.message)
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="sidebar-layout">
      <Sidebar />
      <main className="sidebar-main">
        <div className="sidebar-main-inner">
          <div className="page-content screen-anim">
      <div className="page-header">
        <div className="page-icon page-icon--practice">
          <Icon name="book" s={24} />
        </div>
        <div>
          <h1 className="page-title">Practice Mode</h1>
          <p className="page-desc">Learn at your own pace with instant feedback after every question.</p>
        </div>
      </div>

      <div className="page-section">
        <h2 className="page-section-title">How it works</h2>
        <div className="feature-grid">
          <div className="feature-card">
            <div className="feature-icon"><Icon name="book" s={20} /></div>
            <h3>Instant Feedback</h3>
            <p>See if you got it right or wrong immediately after answering each question.</p>
          </div>
          <div className="feature-card">
            <div className="feature-icon"><Icon name="flag" s={20} /></div>
            <h3>Learn from Mistakes</h3>
            <p>Get the correct answer and explanation when you make a mistake.</p>
          </div>
          <div className="feature-card">
            <div className="feature-icon"><Icon name="redo" s={20} /></div>
            <h3>No Time Pressure</h3>
            <p>Take your time to read and understand each question thoroughly.</p>
          </div>
        </div>
      </div>

      <div className="page-section">
        <h2 className="page-section-title">Select focus area</h2>
        <div className="focus-cards">
          {focusOpts.map(f => (
            <button
              key={f.id}
              type="button"
              className={"focus-card" + (focus === f.id ? " is-on" : "")}
              onClick={() => setFocus(f.id)}
            >
              <div className="focus-card-header">
                <span className="focus-card-radio" />
                <span className="focus-card-label">{f.label}</span>
              </div>
              <div className="focus-card-meta">
                <span className="focus-card-count">{f.n} questions</span>
                {f.desc && <span className="focus-card-desc">{f.desc}</span>}
              </div>
            </button>
          ))}
        </div>
      </div>

      {error && (
        <div className="page-error">{error}</div>
      )}

      <div className="page-actions">
        <Btn kind="primary" onClick={handleStart} disabled={loading}>
          {loading ? 'Starting...' : 'Start Practice'}
          <Icon name="arrow" s={18} />
        </Btn>
      </div>

            <div className="page-section">
              <h2 className="page-section-title">Pass requirements</h2>
              <div className="pass-grid">
                {Object.values(SECTIONS).map(s => (
                  <div key={s.id} className="pass-card">
                    <span className="pass-dot" style={{ background: SECTION_COLOR[s.id] }} />
                    <span className="pass-name">{s.name}</span>
                    <span className="pass-req">{s.pass}/{s.total} to pass</span>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>
  )
}
