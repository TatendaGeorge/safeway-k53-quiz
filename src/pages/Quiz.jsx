import { useState, useEffect } from 'react'
import { useParams, useLocation, useNavigate } from 'react-router-dom'
import { submitAnswer, completeQuiz } from '../lib/api'
import { useTheme } from '../context/ThemeContext'
import {
  Btn, Icon, AnswerOptions, Feedback, ProgressBar, ProgressDots, SectionChip
} from '../components/ui'

const SECTION_LABELS = {
  road_signs: 'Signs',
  rules_of_the_road: 'Rules',
  vehicle_controls: 'Controls',
}

const K53_STRUCTURE = {
  road_signs: { questions: 30, pass: 23, name: 'Road Signs' },
  rules_of_the_road: { questions: 30, pass: 22, name: 'Rules of the Road' },
  vehicle_controls: { questions: 8, pass: 6, name: 'Vehicle Controls' },
}

export default function Quiz() {
  const { attemptId } = useParams()
  const location = useLocation()
  const navigate = useNavigate()
  const { theme } = useTheme()

  const [questions, setQuestions] = useState([])
  const [currentIndex, setCurrentIndex] = useState(0)
  const [selectedOption, setSelectedOption] = useState(null)
  const [selectedOptionId, setSelectedOptionId] = useState(null)
  const [feedback, setFeedback] = useState(null)
  const [loading, setLoading] = useState(false)
  const [answers, setAnswers] = useState([]) // { selected, selectedId, correct, feedback }
  const [elapsed, setElapsed] = useState(0)
  const [pendingSubmissions, setPendingSubmissions] = useState([]) // Queue for batch submission

  const mode = location.state?.mode || 'practice'
  const isExam = mode === 'exam'
  const isFullTest = location.state?.isFullTest || false
  const structure = location.state?.structure || K53_STRUCTURE

  useEffect(() => {
    if (location.state?.questions) {
      setQuestions(location.state.questions)
      setAnswers(location.state.questions.map(() => null))
    } else {
      navigate('/')
    }
  }, [location.state, navigate])

  // Timer for exam mode
  useEffect(() => {
    if (!isExam) return
    const t = setInterval(() => setElapsed(e => e + 1), 1000)
    return () => clearInterval(t)
  }, [isExam])

  const currentQuestion = questions[currentIndex]
  const isLastQuestion = currentIndex === questions.length - 1
  const revealed = !isExam && feedback !== null
  const answeredCount = answers.filter(a => a !== null && a.selectedId !== undefined).length

  const mm = String(Math.floor(elapsed / 60)).padStart(2, '0')
  const ss = String(elapsed % 60).padStart(2, '0')

  const handleSelectOption = (index, option) => {
    if (revealed) return
    setSelectedOption(index)
    setSelectedOptionId(option.id)
  }

  const handleSubmitAnswer = async () => {
    if (selectedOptionId === null) return

    // Check if already answered this question
    if (answers[currentIndex]?.selectedId !== undefined) {
      // Already answered, just navigate
      if (isExam) {
        if (isLastQuestion) {
          await handleComplete()
        } else {
          goToQuestion(currentIndex + 1)
        }
      }
      return
    }

    setLoading(true)
    try {
      // Queue for batch submission later
      setPendingSubmissions(prev => [...prev, {
        questionId: currentQuestion.id,
        selectedOptionId,
      }])

      if (isExam) {
        // In exam mode, store locally and navigate immediately
        const newAnswers = [...answers]
        newAnswers[currentIndex] = {
          selected: selectedOption,
          selectedId: selectedOptionId,
          correct: null // Will be determined on completion
        }
        setAnswers(newAnswers)

        if (isLastQuestion) {
          await handleComplete()
        } else {
          goToQuestion(currentIndex + 1)
        }
      } else {
        // Practice mode - need server feedback for correct answer
        const result = await submitAnswer(attemptId, currentQuestion.id, selectedOptionId)

        const newAnswers = [...answers]
        newAnswers[currentIndex] = {
          selected: selectedOption,
          selectedId: selectedOptionId,
          correct: result.is_correct,
          feedback: {
            is_correct: result.is_correct,
            correct_option: result.correct_option,
          }
        }
        setAnswers(newAnswers)

        setFeedback({
          is_correct: result.is_correct,
          correct_option: result.correct_option,
        })
      }
    } catch (err) {
      console.error('Failed to submit answer:', err)
    } finally {
      setLoading(false)
    }
  }

  const handleComplete = async () => {
    setLoading(true)
    try {
      // In exam mode, batch submit all answers
      let finalAnswers = [...answers]

      if (isExam && pendingSubmissions.length > 0) {
        // Submit all pending answers and get results
        const results = await Promise.all(
          pendingSubmissions.map(sub =>
            submitAnswer(attemptId, sub.questionId, sub.selectedOptionId)
          )
        )

        // Map results back to answers
        pendingSubmissions.forEach((sub, idx) => {
          const questionIndex = questions.findIndex(q => q.id === sub.questionId)
          if (questionIndex !== -1 && finalAnswers[questionIndex]) {
            finalAnswers[questionIndex].correct = results[idx].is_correct
          }
        })
      }

      await completeQuiz(attemptId)

      // Calculate per-section results for full test
      let sectionResults = null
      if (isFullTest) {
        sectionResults = {}
        for (const [section, config] of Object.entries(structure)) {
          let correct = 0
          let totalAnswered = 0

          questions.forEach((q, idx) => {
            const qSection = q.section || q.category_slug
            if (qSection === section) {
              const ans = finalAnswers[idx]
              if (ans !== null && ans.selectedId !== undefined) {
                totalAnswered++
                if (ans.correct) correct++
              }
            }
          })

          const total = config.questions
          const passed = correct >= config.pass

          sectionResults[section] = {
            correct,
            total,
            pass: config.pass,
            passed,
            name: config.name,
          }
        }
      }

      navigate(`/results/${attemptId}`, {
        state: { questions, answers: finalAnswers, mode, elapsed, isFullTest, sectionResults, structure }
      })
    } catch (err) {
      console.error('Failed to complete quiz:', err)
    } finally {
      setLoading(false)
    }
  }

  // Navigate to a specific question and restore its state
  const goToQuestion = (index) => {
    if (index < 0 || index >= questions.length) return

    setCurrentIndex(index)

    // Restore previous answer state if exists
    const prevAnswer = answers[index]
    if (prevAnswer && prevAnswer.selectedId !== undefined) {
      setSelectedOption(prevAnswer.selected)
      setSelectedOptionId(prevAnswer.selectedId)
      setFeedback(prevAnswer.feedback || null)
    } else {
      setSelectedOption(null)
      setSelectedOptionId(null)
      setFeedback(null)
    }
  }

  const handleNext = async () => {
    if (isLastQuestion) {
      await handleComplete()
    } else {
      goToQuestion(currentIndex + 1)
    }
  }

  const handlePrev = () => {
    if (currentIndex > 0) {
      goToQuestion(currentIndex - 1)
    }
  }

  const handleExit = () => {
    if (confirm('Are you sure you want to exit? Your progress will be lost.')) {
      navigate('/')
    }
  }

  if (!currentQuestion) {
    return (
      <div className="practice" style={{ textAlign: 'center', paddingTop: '100px' }}>
        <p style={{ color: 'var(--muted)' }}>Loading...</p>
      </div>
    )
  }

  const canNext = isExam ? selectedOption !== null : feedback !== null
  const correctOptionIndex = feedback?.correct_option
    ? currentQuestion.options.findIndex(o => o.id === feedback.correct_option.id)
    : -1

  return (
    <div className="practice screen-anim">
      {/* Header */}
      <header className={`phead phead--${theme.chrome}`}>
        <button type="button" className="phead-exit" onClick={handleExit} aria-label="Exit">
          <Icon name="close" s={18} />
        </button>
        <div className="phead-mid">
          <SectionChip
            section={currentQuestion.category_slug || 'road_signs'}
            label={SECTION_LABELS[currentQuestion.category_slug] || 'Signs'}
          />
          <span className="phead-count">
            Question <b>{currentIndex + 1}</b> <span className="phead-of">of {questions.length}</span>
          </span>
        </div>
        <div className="phead-right">
          <span className={`mode-tag mode-tag--${mode}`}>{isExam ? 'Exam' : 'Practice'}</span>
          {isExam && <span className="timer">{mm}:{ss}</span>}
        </div>
        {theme.chrome === 'soft'
          ? <ProgressDots index={currentIndex} total={questions.length} answered={answers} />
          : <ProgressBar index={currentIndex} total={questions.length} />
        }
      </header>

      {/* Body */}
      <div className={`pbody ${currentQuestion.image_url ? 'has-media' : 'no-media'}`}>
        <div className="pcol-q">
          <h2 className="qtext">{currentQuestion.question_text}</h2>
          <AnswerOptions
            variant={theme.option}
            options={currentQuestion.options}
            selected={selectedOption}
            revealed={revealed}
            correct={correctOptionIndex}
            onSelect={handleSelectOption}
          />
          {revealed && (
            <Feedback
              correct={feedback.is_correct}
              explanation={`The correct answer is: ${feedback.correct_option?.option_text}`}
            />
          )}
        </div>
        {currentQuestion.image_url && (
          <div className="pcol-media">
            <div className="media-frame">
              <img
                src={currentQuestion.image_url}
                alt="Road sign"
                style={{ maxHeight: '260px', objectFit: 'contain' }}
              />
            </div>
            <div className="media-cap">Road sign</div>
          </div>
        )}
      </div>

      {/* Footer */}
      <footer className="pfoot">
        <Btn kind="ghost" disabled={currentIndex === 0} onClick={handlePrev}>
          <Icon name="back" s={16} />Previous
        </Btn>
        <div className="pfoot-mid">
          <span className="pfoot-progress">{answeredCount}/{questions.length} answered</span>
        </div>
        {!revealed && !isExam ? (
          <Btn kind="primary" disabled={selectedOption === null || loading} onClick={handleSubmitAnswer}>
            {loading ? 'Checking...' : 'Submit'}
          </Btn>
        ) : (
          <Btn kind="primary" disabled={!canNext || loading} onClick={isExam ? handleSubmitAnswer : handleNext}>
            {loading ? 'Loading...' : isLastQuestion ? (isExam ? 'Submit exam' : 'See results') : 'Next'}
            {!isLastQuestion && <Icon name="arrow" s={16} />}
          </Btn>
        )}
      </footer>
    </div>
  )
}
