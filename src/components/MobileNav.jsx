import { useState } from 'react'
import { NavLink } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import { Icon } from './ui'

export default function MobileNav() {
  const [isOpen, setIsOpen] = useState(false)
  const { user, isAdmin, signOut } = useAuth()

  const navItems = [
    { to: '/dashboard', icon: 'home', label: 'Home' },
    { to: '/practice', icon: 'book', label: 'Practice' },
    { to: '/exam', icon: 'clipboard', label: 'Exam' },
  ]

  const handleSignOut = () => {
    setIsOpen(false)
    signOut()
  }

  return (
    <>
      {/* Mobile Header */}
      <header className="mobile-header">
        <img src="/logo.png" alt="Safe Way" className="mobile-header-logo" />
        <button
          className="mobile-menu-btn"
          onClick={() => setIsOpen(true)}
          aria-label="Open menu"
        >
          <Icon name="menu" s={24} />
        </button>
      </header>

      {/* Overlay */}
      {isOpen && (
        <div
          className="mobile-overlay"
          onClick={() => setIsOpen(false)}
        />
      )}

      {/* Slide-out Menu */}
      <div className={`mobile-drawer ${isOpen ? 'mobile-drawer--open' : ''}`}>
        <div className="mobile-drawer-header">
          <img src="/logo.png" alt="Safe Way" className="mobile-drawer-logo" />
          <button
            className="mobile-close-btn"
            onClick={() => setIsOpen(false)}
            aria-label="Close menu"
          >
            <Icon name="close" s={24} />
          </button>
        </div>

        <nav className="mobile-drawer-nav">
          {navItems.map(item => (
            <NavLink
              key={item.to}
              to={item.to}
              end={item.to === '/dashboard'}
              className={({ isActive }) =>
                'mobile-drawer-link' + (isActive ? ' mobile-drawer-link--active' : '')
              }
              onClick={() => setIsOpen(false)}
            >
              <Icon name={item.icon} s={22} />
              <span>{item.label}</span>
            </NavLink>
          ))}

          {isAdmin && (
            <>
              <div className="mobile-drawer-divider" />
              <NavLink
                to="/admin"
                className={({ isActive }) =>
                  'mobile-drawer-link' + (isActive ? ' mobile-drawer-link--active' : '')
                }
                onClick={() => setIsOpen(false)}
              >
                <Icon name="users" s={22} />
                <span>Admin</span>
              </NavLink>
            </>
          )}
        </nav>

        <div className="mobile-drawer-footer">
          <div className="mobile-drawer-user">
            <div className="mobile-drawer-avatar">
              {user?.email?.charAt(0).toUpperCase()}
            </div>
            <span className="mobile-drawer-email">{user?.email}</span>
          </div>
          <button
            className="mobile-drawer-link mobile-drawer-link--logout"
            onClick={handleSignOut}
          >
            <Icon name="logout" s={22} />
            <span>Sign out</span>
          </button>
        </div>
      </div>

      {/* Bottom Tab Bar */}
      <nav className="mobile-tabbar">
        {navItems.map(item => (
          <NavLink
            key={item.to}
            to={item.to}
            end={item.to === '/dashboard'}
            className={({ isActive }) =>
              'mobile-tab' + (isActive ? ' mobile-tab--active' : '')
            }
          >
            <Icon name={item.icon} s={22} />
            <span>{item.label}</span>
          </NavLink>
        ))}
        <button
          className="mobile-tab"
          onClick={() => setIsOpen(true)}
        >
          <Icon name="menu" s={22} />
          <span>More</span>
        </button>
      </nav>
    </>
  )
}
