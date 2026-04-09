import GitHubSignInButton from '@/components/GitHubSignInButton'

type Props = {
  searchParams: Promise<{ error?: string; next?: string }>
}

function safeNextPath(next: string | undefined): string {
  if (!next || !next.startsWith('/') || next.startsWith('//')) {
    return '/'
  }
  return next
}

export default async function LoginPage(props: Props) {
  const searchParams = await props.searchParams
  const nextPath = safeNextPath(searchParams.next)
  const showAuthError = searchParams.error === 'auth'

  return (
    <div className="flex flex-1 flex-col min-h-0">
      <div className="bg-brand-blue text-white py-14 px-6">
        <div className="max-w-6xl mx-auto">
          <h1 className="text-4xl font-bold mb-3">Sign in</h1>
          <p className="text-blue-100 text-lg max-w-xl">
            Use your GitHub account to sign in or create an account.
          </p>
        </div>
      </div>
      <main className="flex flex-1 flex-col items-center justify-center px-6 py-12 max-w-6xl mx-auto w-full">
        <div className="w-full max-w-md border-2 border-brand-gold rounded-xl p-8 bg-white shadow-sm">
          {showAuthError && (
            <p className="text-sm text-red-600 mb-6 text-center" role="alert">
              Something went wrong while signing in. Please try again.
            </p>
          )}
          <GitHubSignInButton nextPath={nextPath} />
        </div>
      </main>
    </div>
  )
}
