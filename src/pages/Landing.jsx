import { Link } from 'react-router-dom'
import { Icon, SECTION_COLOR } from '../components/ui'

const SECTIONS = {
  road_signs: { id: 'road_signs', name: 'Road Signs', pass: 23, total: 30 },
  rules_of_the_road: { id: 'rules_of_the_road', name: 'Rules of the Road', pass: 22, total: 30 },
  vehicle_controls: { id: 'vehicle_controls', name: 'Vehicle Controls', pass: 6, total: 8 },
}

export default function Landing() {
  return (
    <div className="landing">
      <header className="landing-header">
        <div className="landing-header-inner">
          <div className="landing-logo">
            <img src="/logo.png" alt="Safe Way Driving School" className="landing-logo-img" />
          </div>
          <nav className="landing-nav">
            <a href="#home" className="landing-nav-item">Home</a>
            <a href="#about" className="landing-nav-item">About</a>
            <a href="#contact" className="landing-nav-item">Contact</a>
          </nav>
          <Link to="/login" className="btn btn-primary landing-header-cta">
            Login
          </Link>
        </div>
      </header>

      <main className="landing-main">
        <section id="home" className="landing-hero">
          <div className="landing-hero-content">
            <div className="landing-badge">K53 Learners Test · South Africa</div>
            <h1 className="landing-title">
              Pass Your<br />
              <span className="landing-title-accent">K53 Test</span>
            </h1>
            <p className="landing-tagline">Safe Roads Begin With You.</p>
            <p className="landing-desc">
              Prepare for your South African learner's licence test with confidence.
              Practice real-style questions and test yourself under exam conditions.
            </p>
            <div className="landing-ctas">
              <Link to="/login" className="btn btn-primary landing-cta">
                Get Started
                <Icon name="arrow" s={18} />
              </Link>
              <a href="#about" className="btn btn-ghost landing-cta">
                Learn More
              </a>
            </div>
          </div>
          <div className="landing-hero-visual">
            {/* Phone Mockup */}
            <div className="phone-mockup">
              <div className="phone-frame">
                {/* Status Bar */}
                <div className="phone-status-bar">
                  <span>9:41</span>
                  <div className="phone-status-icons">
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M12 3c-4.97 0-9 4.03-9 9s4.03 9 9 9c.83 0 1.5-.67 1.5-1.5 0-.39-.15-.74-.39-1.01-.23-.26-.38-.61-.38-.99 0-.83.67-1.5 1.5-1.5H16c2.76 0 5-2.24 5-5 0-4.42-4.03-8-9-8z"/></svg>
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M1 9l2 2c4.97-4.97 13.03-4.97 18 0l2-2C16.93 2.93 7.08 2.93 1 9zm8 8l3 3 3-3c-1.65-1.66-4.34-1.66-6 0zm-4-4l2 2c2.76-2.76 7.24-2.76 10 0l2-2C15.14 9.14 8.87 9.14 5 13z"/></svg>
                    <div className="phone-battery"></div>
                  </div>
                </div>

                {/* App Header */}
                <div className="phone-app-header">
                  <img src="/logo.png" alt="Safe Way" className="phone-app-logo" />
                  <span className="phone-question-count">12 / 30</span>
                </div>

                {/* Progress Bar */}
                <div className="phone-progress">
                  <div className="phone-progress-fill" style={{ width: '40%' }}></div>
                </div>

                {/* Question Card */}
                <div className="phone-content">
                  {/* Road Sign */}
                  <div className="phone-sign-container">
                    <svg viewBox="0 0 100 100" className="phone-road-sign">
                      <polygon
                        points="50,5 95,50 50,95 5,50"
                        fill="#F5A623"
                        stroke="#1A1A1A"
                        strokeWidth="3"
                      />
                      <text x="50" y="58" textAnchor="middle" fill="#1A1A1A" fontSize="32" fontWeight="bold">!</text>
                    </svg>
                  </div>

                  <p className="phone-question">What does this sign warn you about?</p>

                  {/* Answer Options */}
                  <div className="phone-options">
                    <button className="phone-option">
                      <span className="phone-option-letter">A</span>
                      <span>Road work ahead</span>
                    </button>
                    <button className="phone-option phone-option--selected">
                      <span className="phone-option-letter">B</span>
                      <span>General warning</span>
                      <svg className="phone-option-check" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"/>
                      </svg>
                    </button>
                    <button className="phone-option phone-option--disabled">
                      <span className="phone-option-letter">C</span>
                      <span>Speed limit zone</span>
                    </button>
                  </div>

                  {/* Next Button */}
                  <button className="phone-next-btn">
                    Next Question
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                      <path d="M9 5l7 7-7 7"/>
                    </svg>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section className="landing-features">
          <h2 className="landing-section-title">Choose Your Study Mode</h2>
          <div className="landing-features-grid">
            <div className="landing-feature-card">
              <div className="landing-feature-icon landing-feature-icon--practice">
                <Icon name="book" s={28} />
              </div>
              <h3>Practice Mode</h3>
              <p>Learn with instant feedback after every question. Take your time with no pressure - perfect for building knowledge and understanding.</p>
            </div>
            <div className="landing-feature-card">
              <div className="landing-feature-icon landing-feature-icon--exam">
                <Icon name="clipboard" s={28} />
              </div>
              <h3>Exam Simulation</h3>
              <p>Test yourself under real exam conditions with timed questions. Experience the actual test format before your official exam.</p>
            </div>
          </div>
        </section>

        <section id="about" className="landing-about">
          <div className="landing-about-content">
            <h2 className="landing-section-title">About the K53 Test</h2>
            <p className="landing-about-text">
              The K53 learner's licence test consists of 68 questions across three sections.
              You must pass each section individually to obtain your learner's licence.
            </p>
            <div className="landing-sections">
              {Object.values(SECTIONS).map(s => (
                <div key={s.id} className="landing-sec-card">
                  <span className="landing-sec-dot" style={{ background: SECTION_COLOR[s.id] }} />
                  <div className="landing-sec-info">
                    <span className="landing-sec-name">{s.name}</span>
                    <span className="landing-sec-meta">{s.total} questions · {s.pass} to pass</span>
                  </div>
                </div>
              ))}
            </div>
          </div>
          <div className="landing-stats">
            <div className="landing-stat">
              <span className="landing-stat-value">68</span>
              <span className="landing-stat-label">Total Questions</span>
            </div>
            <div className="landing-stat">
              <span className="landing-stat-value">3</span>
              <span className="landing-stat-label">Test Sections</span>
            </div>
            <div className="landing-stat">
              <span className="landing-stat-value">51</span>
              <span className="landing-stat-label">Min. to Pass</span>
            </div>
          </div>
        </section>

        <section className="landing-why">
          <h2 className="landing-section-title">Why Choose Safe Way?</h2>
          <div className="landing-why-grid">
            <div className="landing-why-card">
              <div className="landing-why-icon">
                <Icon name="check" s={24} />
              </div>
              <h3>Real Exam Questions</h3>
              <p>Practice with questions that mirror the actual K53 learner's test format.</p>
            </div>
            <div className="landing-why-card">
              <div className="landing-why-icon">
                <Icon name="clock" s={24} />
              </div>
              <h3>Learn at Your Pace</h3>
              <p>No rush. Study whenever you want, wherever you are.</p>
            </div>
            <div className="landing-why-card">
              <div className="landing-why-icon">
                <Icon name="trending" s={24} />
              </div>
              <h3>Track Progress</h3>
              <p>Monitor your improvement and know when you're ready for the real test.</p>
            </div>
          </div>
        </section>

        <section className="landing-cta-section">
          <h2>Ready to start practicing?</h2>
          <p>Join thousands of learners preparing for their K53 test.</p>
          <Link to="/login" className="btn btn-primary landing-cta-big">
            Get Started Free
            <Icon name="arrow" s={18} />
          </Link>
        </section>

        <section id="contact" className="landing-contact">
          <div className="landing-contact-inner">
            <div className="landing-contact-info">
              <h2 className="landing-section-title">Contact Us</h2>
              <p className="landing-contact-text">
                Have questions about our K53 practice tests or need assistance?
                We're here to help you on your journey to getting your learner's licence.
              </p>
              <div className="landing-contact-details">
                <div className="landing-contact-item">
                  <Icon name="mail" s={20} />
                  <span>info@safewaydriving.co.za</span>
                </div>
                <div className="landing-contact-item">
                  <Icon name="phone" s={20} />
                  <span>+27 12 345 6789</span>
                </div>
                <div className="landing-contact-item">
                  <Icon name="map" s={20} />
                  <span>Johannesburg, South Africa</span>
                </div>
              </div>
            </div>
            <form className="landing-contact-form" onSubmit={(e) => e.preventDefault()}>
              <div className="landing-form-field">
                <label htmlFor="name">Name</label>
                <input type="text" id="name" placeholder="Your name" />
              </div>
              <div className="landing-form-field">
                <label htmlFor="email">Email</label>
                <input type="email" id="email" placeholder="you@example.com" />
              </div>
              <div className="landing-form-field">
                <label htmlFor="message">Message</label>
                <textarea id="message" rows={4} placeholder="How can we help you?" />
              </div>
              <button type="submit" className="btn btn-primary landing-form-submit">
                Send Message
              </button>
            </form>
          </div>
        </section>
      </main>

      <footer className="landing-footer">
        <div className="landing-footer-inner">
          <div className="landing-footer-brand">
            <img src="/logo.png" alt="Safe Way Driving School" className="landing-footer-logo" />
          </div>
          <div className="landing-footer-links">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
            <Link to="/login">Login</Link>
          </div>
          <p className="landing-footer-copy">
            © {new Date().getFullYear()} Safe Way Driving School. All rights reserved.
          </p>
        </div>
      </footer>
    </div>
  )
}
