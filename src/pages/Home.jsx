import { Link } from 'react-router-dom'
import { Icon, SECTION_COLOR } from '../components/ui'
import Sidebar from '../components/Sidebar'

const SECTIONS = {
  road_signs: { id: 'road_signs', name: 'Road Signs', pass: 23, total: 30 },
  rules_of_the_road: { id: 'rules_of_the_road', name: 'Rules of the Road', pass: 22, total: 30 },
  vehicle_controls: { id: 'vehicle_controls', name: 'Vehicle Controls', pass: 6, total: 8 },
}

export default function Home() {

  return (
    <div className="sidebar-layout">
      <Sidebar />
      <main className="sidebar-main">
        <div className="sidebar-main-inner">
          <div className="page-content screen-anim">
            <div className="home-hero">
              <div className="home-eyebrow">Safe Way Driving School · K53 Learners</div>
              <h1 className="home-title">Practice until<br />you're ready.</h1>
              <p className="home-sub">
                Safe Roads Begin With You. Work through real-style K53 questions on road
                signs, the rules of the road and vehicle controls.
              </p>
            </div>

            <div className="home-actions">
              <Link to="/practice" className="action-card action-card--practice">
                <div className="action-icon">
                  <Icon name="book" s={28} />
                </div>
                <div className="action-content">
                  <h2>Practice Mode</h2>
                  <p>Learn with instant feedback after every question. No time pressure.</p>
                </div>
                <div className="action-arrow">
                  <Icon name="arrow" s={20} />
                </div>
              </Link>

              <Link to="/exam" className="action-card action-card--exam">
                <div className="action-icon">
                  <Icon name="clipboard" s={28} />
                </div>
                <div className="action-content">
                  <h2>Exam Simulation</h2>
                  <p>Test yourself under real exam conditions with timed questions.</p>
                </div>
                <div className="action-arrow">
                  <Icon name="arrow" s={20} />
                </div>
              </Link>
            </div>

            <div className="home-info">
              <h3 className="home-info-title">About the K53 Test</h3>
              <p className="home-info-text">
                The K53 learner's licence test consists of 68 questions across three sections.
                You must pass each section individually to obtain your learner's licence.
              </p>

              <div className="home-sections">
                {Object.values(SECTIONS).map(s => (
                  <div key={s.id} className="sec-card">
                    <span className="sec-dot" style={{ background: SECTION_COLOR[s.id] }} />
                    <div className="sec-info">
                      <span className="sec-name">{s.name}</span>
                      <span className="sec-meta">{s.total} questions · {s.pass} to pass</span>
                    </div>
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
