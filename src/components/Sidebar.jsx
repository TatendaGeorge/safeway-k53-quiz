import { NavLink } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import { Icon } from './ui'

export default function Sidebar() {
  const { user, isAdmin, signOut } = useAuth()

  const navItems = [
    { to: '/dashboard', icon: 'home', label: 'Home' },
    { to: '/practice', icon: 'book', label: 'Practice' },
    { to: '/exam', icon: 'clipboard', label: 'Exam' },
    { to: '/history', icon: 'history', label: 'History', disabled: true },
  ]

  const adminItems = [
    { to: '/admin', icon: 'users', label: 'Admin' },
  ]

  return (
    <aside className="sidebar">
      <div className="sidebar-header">
        <div className="sidebar-logo">
          <img src="/logo.png" alt="Safe Way Driving School" className="sidebar-logo-img" />
        </div>
      </div>

      <nav className="sidebar-nav">
        <div className="sidebar-section">
          {navItems.map(item => (
            item.disabled ? (
              <span key={item.to} className="sidebar-link sidebar-link--disabled">
                <Icon name={item.icon} s={18} />
                <span>{item.label}</span>
              </span>
            ) : (
              <NavLink
                key={item.to}
                to={item.to}
                end={item.to === '/dashboard'}
                className={({ isActive }) =>
                  'sidebar-link' + (isActive ? ' sidebar-link--active' : '')
                }
              >
                <Icon name={item.icon} s={18} />
                <span>{item.label}</span>
              </NavLink>
            )
          ))}
        </div>

        {isAdmin && (
          <>
            <div className="sidebar-divider" />
            <div className="sidebar-section">
              <div className="sidebar-section-label">Admin</div>
              {adminItems.map(item => (
                <NavLink
                  key={item.to}
                  to={item.to}
                  className={({ isActive }) =>
                    'sidebar-link' + (isActive ? ' sidebar-link--active' : '')
                  }
                >
                  <Icon name={item.icon} s={18} />
                  <span>{item.label}</span>
                </NavLink>
              ))}
            </div>
          </>
        )}
      </nav>

      <div className="sidebar-footer">
        <div className="sidebar-divider" />
        <div className="sidebar-user">
          <div className="sidebar-user-avatar">
            {user?.email?.charAt(0).toUpperCase()}
          </div>
          <div className="sidebar-user-info">
            <span className="sidebar-user-email">{user?.email}</span>
          </div>
        </div>
        <button onClick={signOut} className="sidebar-link sidebar-link--logout">
          <Icon name="logout" s={18} />
          <span>Sign out</span>
        </button>
      </div>
    </aside>
  )
}
