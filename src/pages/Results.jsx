import { useState, useEffect } from 'react'
import { useParams, useLocation, Link, useNavigate } from 'react-router-dom'
import { completeQuiz } from '../lib/api'
import { Btn, Icon, IconCheck, IconX, SECTION_COLOR } from '../components/ui'

const K53_STRUCTURE = {
  road_signs: { id: 'road_signs', name: 'Road Signs', pass: 23, total: 30 },
  rules_of_the_road: { id: 'rules_of_the_road', name: 'Rules of the Road', pass: 22, total: 30 },
  vehicle_controls: { id: 'vehicle_controls', name: 'Vehicle Controls', pass: 6, total: 8 },
}

export default function Results() {
  const { attemptId } = useParams()
  const location = useLocation()
  const navigate = useNavigate()
  const [results, setResults] = useState(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')

  const stateData = location.state || {}
  const {
    questions = [],
    answers = [],
    mode = 'practice',
    elapsed = 0,
    isFullTest = false,
    sectionResults = null,
  } = stateData

  useEffect(() => {
    const fetchResults = async () => {
      try {
        const data = await completeQuiz(attemptId)
        setResults(data)
      } catch (err) {
        setError(err.message)
      } finally {
        setLoading(false)
      }
    }

    fetchResults()
  }, [attemptId])

  if (loading) {
    return (
      <div className="results" style={{ textAlign: 'center', paddingTop: '100px' }}>
        <p style={{ color: 'var(--muted)' }}>Loading results...</p>
      </div>
    )
  }

  if (error || !results) {
    return (
      <div className="results screen-anim">
        <div style={{ padding: '20px', background: 'var(--bad-tint)', color: 'var(--bad)',
          borderRadius: 'var(--radius)', marginBottom: '20px' }}>
          {error || 'Failed to load results'}
        </div>
        <Link to="/">
          <Btn kind="ghost">Back to Home</Btn>
        </Link>
      </div>
    )
  }

  const { correct_answers, total_questions } = results

  // Calculate overall pass/fail
  let overallPassed = false
  let pct = Math.round((correct_answers / total_questions) * 100)

  if (isFullTest && sectionResults) {
    // For full test: must pass ALL sections
    overallPassed = Object.values(sectionResults).every(s => s.passed)
  } else {
    // For single section: use 77% rule
    overallPassed = pct >= 77
  }

  const R = 54
  const C = 2 * Math.PI * R
  const off = C * (1 - pct / 100)
  const ring = overallPassed ? 'var(--good)' : 'var(--bad)'

  const mm = String(Math.floor(elapsed / 60)).padStart(2, '0')
  const ss = String(elapsed % 60).padStart(2, '0')

  // Count section failures for the verdict
  const failedSections = isFullTest && sectionResults
    ? Object.values(sectionResults).filter(s => !s.passed).length
    : 0

  return (
    <div className="results screen-anim">
      <div className="res-hero">
        <div className="res-ring">
          <svg viewBox="0 0 140 140" width="150" height="150">
            <circle cx="70" cy="70" r={R} fill="none" stroke="var(--line)" strokeWidth="12" />
            <circle
              cx="70" cy="70" r={R} fill="none" stroke={ring} strokeWidth="12"
              strokeLinecap="round" strokeDasharray={C} strokeDashoffset={off}
              transform="rotate(-90 70 70)" style={{ transition: 'stroke-dashoffset .9s ease' }}
            />
            <text x="70" y="66" textAnchor="middle" className="res-pct" fill="var(--ink)">{pct}%</text>
            <text x="70" y="88" textAnchor="middle" className="res-pctsub" fill="var(--muted)">
              {correct_answers}/{total_questions}
            </text>
          </svg>
        </div>
        <div className="res-headtext">
          <div className={`res-verdict ${overallPassed ? 'is-pass' : 'is-fail'}`}>
            {overallPassed ? 'Pass' : 'Fail'}
          </div>
          <h1 className="res-title">
            {overallPassed
              ? "Congratulations! You passed the K53 test."
              : isFullTest && failedSections > 0
                ? `You failed ${failedSections} section${failedSections > 1 ? 's' : ''}. Review and try again.`
                : 'Almost there — review and retry.'}
          </h1>
          <p className="res-sub">
            {mode === 'exam' ? `Exam simulation · ${mm}:${ss}` : 'Practice session'}
            {isFullTest
              ? ' · Must pass all 3 sections to pass overall'
              : ' · You need 77% to pass the official test.'}
          </p>
        </div>
      </div>

      {/* Per-section results for full test */}
      {isFullTest && sectionResults && (
        <div className="res-sections">
          {Object.entries(K53_STRUCTURE).map(([sectionId, config]) => {
            const sectionData = sectionResults[sectionId]
            if (!sectionData) return null

            const { correct, total, pass, passed, name } = sectionData
            const gotPct = correct / total
            const reqPct = pass / total

            return (
              <div key={sectionId} className="res-sec">
                <div className="res-sec-top">
                  <span className="sec-dot" style={{ background: SECTION_COLOR[sectionId] }} />
                  <span className="res-sec-name">{name}</span>
                  <span className={`res-sec-tag ${passed ? 'ok' : 'no'}`}>
                    {passed ? 'Passed' : 'Failed'}
                  </span>
                </div>
                <div className="res-bar">
                  <div
                    className="res-bar-fill"
                    style={{
                      width: `${Math.round(gotPct * 100)}%`,
                      background: passed ? 'var(--good)' : 'var(--bad)'
                    }}
                  />
                  <div className="res-bar-req" style={{ left: `${Math.round(reqPct * 100)}%` }} title="Pass mark" />
                </div>
                <div className="res-sec-meta">
                  <span>{correct}/{total} correct</span>
                  <span>Pass mark: {pass}/{total} ({Math.round(reqPct * 100)}%)</span>
                </div>
              </div>
            )
          })}
        </div>
      )}

      {/* Single section result */}
      {!isFullTest && (
        <div className="res-sections">
          <div className="res-sec">
            <div className="res-sec-top">
              <span className="sec-dot" style={{ background: 'var(--accent)' }} />
              <span className="res-sec-name">Your Score</span>
              <span className={`res-sec-tag ${overallPassed ? 'ok' : 'no'}`}>
                {overallPassed ? 'Passed' : 'Below pass'}
              </span>
            </div>
            <div className="res-bar">
              <div
                className="res-bar-fill"
                style={{
                  width: `${pct}%`,
                  background: overallPassed ? 'var(--good)' : 'var(--bad)'
                }}
              />
              <div className="res-bar-req" style={{ left: '77%' }} title="Pass mark" />
            </div>
            <div className="res-sec-meta">
              <span>{correct_answers}/{total_questions} correct</span>
              <span>Pass mark 77%</span>
            </div>
          </div>
        </div>
      )}

      <div className="res-actions">
        <Btn kind="ghost" onClick={() => navigate('/')}>
          <Icon name="home" s={16} />Home
        </Btn>
        <Btn kind="primary" onClick={() => navigate('/')}>
          <Icon name="redo" s={16} />Try again
        </Btn>
      </div>
    </div>
  )
}
