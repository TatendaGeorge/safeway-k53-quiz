import { createContext, useContext, useState, useEffect } from 'react'

const THEMES = {
  safeway: {
    id: "safeway",
    label: "Safe Way",
    tagline: "Official · bold",
    option: "rows",
    chrome: "bold",
    vars: {
      "--bg": "#FEFCF7",
      "--panel": "#FFFFFF",
      "--ink": "#1A1A1A",
      "--muted": "#5A5A5A",
      "--line": "#E8E4DC",
      "--line-strong": "#D4CFC4",
      "--brand": "#E5A100",
      "--brand-ink": "#B58000",
      "--brand-tint": "#FFF8E6",
      "--good": "#1F9D57",
      "--good-tint": "#E7F6ED",
      "--bad": "#D8443C",
      "--bad-tint": "#FBEAE8",
      "--radius": "6px",
      "--radius-lg": "8px",
      "--shadow": "0 1px 2px rgba(26,26,26,.05)",
      "--shadow-lg": "0 12px 34px -18px rgba(26,26,26,.28)",
      "--font": "'Plus Jakarta Sans', sans-serif",
      "--mono": "'DM Mono', monospace",
      "--app-max": "1080px",
    },
  },
  clearview: {
    id: "clearview",
    label: "Clearview",
    tagline: "Official · minimal",
    option: "rows",
    chrome: "minimal",
    vars: {
      "--bg": "#FBFCFE",
      "--panel": "#FFFFFF",
      "--ink": "#15233B",
      "--muted": "#5E6E85",
      "--line": "#E4E9F2",
      "--line-strong": "#CFD8E6",
      "--brand": "#1B5FD9",
      "--brand-ink": "#0E3E97",
      "--brand-tint": "#EAF1FD",
      "--good": "#1F9D57",
      "--good-tint": "#E7F6ED",
      "--bad": "#D8443C",
      "--bad-tint": "#FBEAE8",
      "--radius": "6px",
      "--radius-lg": "8px",
      "--shadow": "0 1px 2px rgba(20,35,59,.05)",
      "--shadow-lg": "0 12px 34px -18px rgba(20,35,59,.28)",
      "--font": "'Plus Jakarta Sans', sans-serif",
      "--mono": "'DM Mono', monospace",
      "--app-max": "1080px",
    },
  },
  roadmap: {
    id: "roadmap",
    label: "Roadmap",
    tagline: "Friendly · cards",
    option: "cards",
    chrome: "soft",
    vars: {
      "--bg": "#EEF3FB",
      "--panel": "#FFFFFF",
      "--ink": "#152744",
      "--muted": "#64748B",
      "--line": "#E1E9F5",
      "--line-strong": "#C9D6EA",
      "--brand": "#2563E6",
      "--brand-ink": "#1A47B0",
      "--brand-tint": "#E6EEFE",
      "--good": "#16A35A",
      "--good-tint": "#E4F6EC",
      "--bad": "#E04A40",
      "--bad-tint": "#FCEBE9",
      "--radius": "8px",
      "--radius-lg": "10px",
      "--shadow": "0 2px 6px rgba(21,39,68,.06)",
      "--shadow-lg": "0 18px 44px -20px rgba(21,39,68,.34)",
      "--font": "'Plus Jakarta Sans', sans-serif",
      "--mono": "'DM Mono', monospace",
      "--app-max": "1120px",
    },
  },
  cockpit: {
    id: "cockpit",
    label: "Cockpit",
    tagline: "Bold · focused",
    option: "list",
    chrome: "bold",
    vars: {
      "--bg": "#0E1A2E",
      "--panel": "#13233D",
      "--ink": "#EAF1FB",
      "--muted": "#93A7C4",
      "--line": "#23375A",
      "--line-strong": "#334D78",
      "--brand": "#4D8DFF",
      "--brand-ink": "#9CC1FF",
      "--brand-tint": "#1B3563",
      "--good": "#3FBE78",
      "--good-tint": "#15402E",
      "--bad": "#F2665C",
      "--bad-tint": "#43221F",
      "--radius": "4px",
      "--radius-lg": "6px",
      "--shadow": "0 1px 2px rgba(0,0,0,.3)",
      "--shadow-lg": "0 18px 44px -16px rgba(0,0,0,.6)",
      "--font": "'Plus Jakarta Sans', sans-serif",
      "--mono": "'DM Mono', monospace",
      "--app-max": "1120px",
    },
  },
}

const ThemeContext = createContext({})

export function ThemeProvider({ children }) {
  const [themeId, setThemeId] = useState('safeway')
  const theme = THEMES[themeId]

  useEffect(() => {
    // Apply CSS variables to root
    const root = document.documentElement
    Object.entries(theme.vars).forEach(([key, value]) => {
      root.style.setProperty(key, value)
    })
  }, [theme])

  return (
    <ThemeContext.Provider value={{ theme, themeId, setThemeId, THEMES }}>
      <div className="stage">
        {children}
      </div>
    </ThemeContext.Provider>
  )
}

export function useTheme() {
  return useContext(ThemeContext)
}

export { THEMES }
