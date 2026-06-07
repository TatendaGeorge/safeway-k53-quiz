const LETTERS = ["A", "B", "C", "D", "E"]

export const SECTION_COLOR = {
  signs: "var(--brand)",
  rules: "#8A5BD6",
  controls: "#0E9CA8",
  road_signs: "var(--brand)",
  rules_of_the_road: "#8A5BD6",
  vehicle_controls: "#0E9CA8",
}

export function IconCheck({ s = 16 }) {
  return (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="currentColor"
      strokeWidth="3.2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M5 13l4 4L19 7" />
    </svg>
  )
}

export function IconX({ s = 16 }) {
  return (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="currentColor"
      strokeWidth="3.2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M6 6l12 12M18 6L6 18" />
    </svg>
  )
}

export function Icon({ name, s = 22 }) {
  const p = {
    width: s, height: s, viewBox: "0 0 24 24", fill: "none", stroke: "currentColor",
    strokeWidth: 1.8, strokeLinecap: "round", strokeLinejoin: "round"
  }
  if (name === "book") return <svg {...p}><path d="M4 5a2 2 0 0 1 2-2h12v16H6a2 2 0 0 0-2 2z" /><path d="M4 19a2 2 0 0 1 2-2h12" /></svg>
  if (name === "clipboard") return <svg {...p}><rect x="6" y="4" width="12" height="17" rx="2" /><path d="M9 4V3a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v1" /><path d="M9 11h6M9 15h4" /></svg>
  if (name === "arrow") return <svg {...p}><path d="M5 12h14M13 6l6 6-6 6" /></svg>
  if (name === "back") return <svg {...p}><path d="M19 12H5M11 18l-6-6 6-6" /></svg>
  if (name === "close") return <svg {...p}><path d="M6 6l12 12M18 6L6 18" /></svg>
  if (name === "flag") return <svg {...p}><path d="M5 21V4M5 4h11l-2 4 2 4H5" /></svg>
  if (name === "redo") return <svg {...p}><path d="M21 8a8 8 0 1 0 1 6" /><path d="M21 3v5h-5" /></svg>
  if (name === "home") return <svg {...p}><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z" /><polyline points="9,22 9,12 15,12 15,22" /></svg>
  if (name === "play") return <svg {...p}><polygon points="5,3 19,12 5,21" /></svg>
  if (name === "history") return <svg {...p}><circle cx="12" cy="12" r="10" /><polyline points="12,6 12,12 16,14" /></svg>
  if (name === "chart") return <svg {...p}><path d="M18 20V10M12 20V4M6 20v-6" /></svg>
  if (name === "settings") return <svg {...p}><circle cx="12" cy="12" r="3" /><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1-2.83 2.83l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-4 0v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1 0-4h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 2.83-2.83l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 4 0v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 0 4h-.09a1.65 1.65 0 0 0-1.51 1z" /></svg>
  if (name === "logout") return <svg {...p}><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4" /><polyline points="16,17 21,12 16,7" /><line x1="21" y1="12" x2="9" y2="12" /></svg>
  if (name === "users") return <svg {...p}><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" /><circle cx="9" cy="7" r="4" /><path d="M23 21v-2a4 4 0 0 0-3-3.87" /><path d="M16 3.13a4 4 0 0 1 0 7.75" /></svg>
  if (name === "grid") return <svg {...p}><rect x="3" y="3" width="7" height="7" /><rect x="14" y="3" width="7" height="7" /><rect x="3" y="14" width="7" height="7" /><rect x="14" y="14" width="7" height="7" /></svg>
  if (name === "check") return <svg {...p}><path d="M5 13l4 4L19 7" /></svg>
  if (name === "clock") return <svg {...p}><circle cx="12" cy="12" r="10" /><polyline points="12,6 12,12 16,14" /></svg>
  if (name === "trending") return <svg {...p}><polyline points="23,6 13.5,15.5 8.5,10.5 1,18" /><polyline points="17,6 23,6 23,12" /></svg>
  if (name === "mail") return <svg {...p}><rect x="2" y="4" width="20" height="16" rx="2" /><path d="M22 6l-10 7L2 6" /></svg>
  if (name === "phone") return <svg {...p}><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" /></svg>
  if (name === "map") return <svg {...p}><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z" /><circle cx="12" cy="10" r="3" /></svg>
  if (name === "menu") return <svg {...p}><path d="M3 12h18M3 6h18M3 18h18" /></svg>
  return null
}

export function ProgressBar({ index, total }) {
  const pct = Math.round(((index + 1) / total) * 100)
  return (
    <div className="pbar">
      <div className="pbar-fill" style={{ width: pct + "%" }} />
    </div>
  )
}

export function ProgressDots({ index, total, answered }) {
  return (
    <div className="pdots">
      {Array.from({ length: total }).map((_, i) => (
        <span key={i} className={"pdot" + (i === index ? " is-now" : answered[i] != null ? " is-done" : "")} />
      ))}
    </div>
  )
}

function optionState(i, selected, revealed, correct) {
  if (revealed) {
    if (i === correct) return "correct"
    if (i === selected) return "wrong"
    return "muted"
  }
  return i === selected ? "selected" : "idle"
}

export function AnswerOptions({ variant = "rows", options, selected, revealed, correct, onSelect }) {
  return (
    <div className={"opts opts--" + variant}>
      {options.map((opt, i) => {
        const st = optionState(i, selected, revealed, correct)
        const badge = variant === "list" ? (i + 1) : LETTERS[i]
        const optionText = typeof opt === 'string' ? opt : opt.option_text
        return (
          <button
            key={opt.id || i}
            type="button"
            className={"opt opt-" + st}
            disabled={revealed}
            onClick={() => onSelect(i, opt)}
          >
            <span className="opt-badge">{badge}</span>
            <span className="opt-text">{optionText}</span>
            {st === "correct" && <span className="opt-mark good"><IconCheck /></span>}
            {st === "wrong" && <span className="opt-mark bad"><IconX /></span>}
          </button>
        )
      })}
    </div>
  )
}

export function Feedback({ correct, explanation }) {
  return (
    <div className={"feedback " + (correct ? "is-good" : "is-bad")}>
      <div className="feedback-head">
        <span className="feedback-icon">{correct ? <IconCheck s={15} /> : <IconX s={15} />}</span>
        {correct ? "Correct!" : "Not quite"}
      </div>
      {explanation && <p className="feedback-body">{explanation}</p>}
    </div>
  )
}

export function Btn({ kind = "ghost", type = "button", children, className = "", ...p }) {
  return (
    <button type={type} className={"btn btn-" + kind + (className ? " " + className : "")} {...p}>
      {children}
    </button>
  )
}

export function SectionChip({ section, label }) {
  const c = SECTION_COLOR[section] || "var(--brand)"
  return (
    <span className="chip" style={{
      color: c,
      background: `color-mix(in srgb, ${c} 12%, transparent)`,
      borderColor: `color-mix(in srgb, ${c} 26%, transparent)`,
    }}>
      <span className="chip-dot" style={{ background: c }} />
      {label}
    </span>
  )
}
