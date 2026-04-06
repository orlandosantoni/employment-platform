import Link from 'next/link'

export default function Header() {
  return (
    <header className="bg-white border-b border-gray-200">
      <div className="max-w-6xl mx-auto px-6 h-16 flex items-center justify-between">
        <Link href="/" className="font-serif font-bold text-gray-900 text-lg hover:text-brand-blue transition-colors">
          Civic Tech DC
        </Link>
        <nav className="flex items-center gap-6">
          <Link href="/" className="text-sm text-gray-600 hover:text-brand-blue transition-colors">
            Projects
          </Link>
          <a
            href="https://www.civictechdc.org"
            target="_blank"
            rel="noopener noreferrer"
            className="text-sm text-gray-600 hover:text-brand-blue transition-colors"
          >
            Main Site
          </a>
          <a
            href="https://www.civictechdc.org/slack"
            target="_blank"
            rel="noopener noreferrer"
            className="text-sm bg-brand-blue text-white px-4 py-1.5 rounded hover:opacity-90 transition-opacity"
          >
            Join Slack
          </a>
        </nav>
      </div>
    </header>
  )
}
