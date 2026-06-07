import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { startFullQuiz } from '../lib/api'
import { Btn, Icon, SECTION_COLOR } from '../components/ui'
import Sidebar from '../components/Sidebar'
import MobileNav from '../components/MobileNav'

const SECTIONS = {
  road_signs: { id: 'road_signs', name: 'Road Signs', short: 'Signs', pass: 23, total: 30 },
  rules_of_the_road: { id: 'rules_of_the_road', name: 'Rules of the Road', short: 'Rules', pass: 22, total: 30 },
  vehicle_controls: { id: 'vehicle_controls', name: 'Vehicle Controls', short: 'Controls', pass: 6, total: 8 },
}

export default function Exam() {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const navigate = useNavigate()

  const handleStart = async () => {
    setError('')
    setLoading(true)

    try {
      const data = await startFullQuiz('exam')
      navigate(`/quiz/${data.attempt_id}`, {
        state: {
          questions: data.questions,
          totalQuestions: data.total_questions,
          mode: 'exam',
          focus: 'full_test',
          isFullTest: true,
          structure: data.structure,
        },
      })
    } catch (err) {
      setError(err.message)
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="sidebar-layout">
      <Sidebar />
      <MobileNav />
      <main className="sidebar-main">
        <div className="sidebar-main-inner">
          <div className="page-content screen-anim">
            <div className="page-header">
              <div className="page-icon page-icon--exam">
                <Icon name="clipboard" s={24} />
              </div>
              <div>
                <h1 className="page-title">Exam Simulation</h1>
                <p className="page-desc">Test yourself under real exam conditions with timed questions.</p>
              </div>
            </div>

      <div className="page-section">
        <h2 className="page-section-title">Exam conditions</h2>
        <div className="feature-grid">
          <div className="feature-card">
            <div className="feature-icon"><Icon name="history" s={20} /></div>
            <h3>Timed Test</h3>
            <p>A timer tracks how long you take, just like the real K53 learner's test.</p>
          </div>
          <div className="feature-card">
            <div className="feature-icon"><Icon name="close" s={20} /></div>
            <h3>No Hints</h3>
            <p>You won't see if answers are correct until you complete the entire exam.</p>
          </div>
          <div className="feature-card">
            <div className="feature-icon"><Icon name="chart" s={20} /></div>
            <h3>Full Results</h3>
            <p>Get a detailed breakdown of your performance across all sections.</p>
          </div>
        </div>
      </div>

      <div className="exam-info-card">
        <div className="exam-info-header">
          <Icon name="clipboard" s={20} />
          <span>Full K53 Learner's Test</span>
        </div>
        <div className="exam-info-body">
          <div className="exam-stat">
            <span className="exam-stat-value">68</span>
            <span className="exam-stat-label">Questions</span>
          </div>
          <div className="exam-stat">
            <span className="exam-stat-value">3</span>
            <span className="exam-stat-label">Sections</span>
          </div>
          <div className="exam-stat">
            <span className="exam-stat-value">51</span>
            <span className="exam-stat-label">To Pass</span>
          </div>
        </div>
      </div>

      {error && (
        <div className="page-error">{error}</div>
      )}

      <div className="page-actions">
        <Btn kind="primary" onClick={handleStart} disabled={loading}>
          {loading ? 'Starting...' : 'Start Exam'}
          <Icon name="arrow" s={18} />
        </Btn>
      </div>

            <div className="page-section">
              <h2 className="page-section-title">Section requirements</h2>
              <p className="page-section-desc">You must pass each section individually to pass the test.</p>
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
