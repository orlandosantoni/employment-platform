export default function Footer() {
  return (
    <footer className="bg-gray-100 border-t border-gray-200 mt-auto">
      <div className="max-w-6xl mx-auto px-6 py-10 flex flex-col sm:flex-row justify-between gap-8">
        <div>
          <p className="font-serif font-bold text-gray-900 mb-1">Civic Tech DC</p>
          <p className="text-sm text-gray-500 max-w-xs">
            A community of volunteers building civic technology in Washington, DC.
          </p>
        </div>
        <div className="flex gap-12">
          <div>
            <p className="text-xs font-semibold text-gray-500 uppercase tracking-wide mb-3">Get Involved</p>
            <ul className="flex flex-col gap-2">
              <li>
                <a href="https://www.civictechdc.org/slack" target="_blank" rel="noopener noreferrer" className="text-sm text-brand-blue hover:underline">
                  Join Slack
                </a>
              </li>
            </ul>
          </div>
          <div>
            <p className="text-xs font-semibold text-gray-500 uppercase tracking-wide mb-3">Connect</p>
            <ul className="flex flex-col gap-2">
              <li>
                <a href="https://github.com/civictechdc" target="_blank" rel="noopener noreferrer" className="text-sm text-brand-blue hover:underline">
                  GitHub
                </a>
              </li>
              <li>
                <a href="https://www.civictechdc.org/code-of-conduct" target="_blank" rel="noopener noreferrer" className="text-sm text-brand-blue hover:underline">
                  Code of Conduct
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
  )
}
