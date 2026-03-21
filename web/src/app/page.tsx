import { supabase } from '@/lib/supabase'

export default async function Home() {
  const { data: projects, error } = await supabase
    .from('projects')
    .select('name, status')

  if (error) {
    return <pre className="p-8 text-red-600">Error: {error.message}</pre>
  }

  return (
    <main className="p-8">
      <h1 className="text-2xl font-bold mb-4">Supabase connection test</h1>
      <ul className="space-y-2">
        {projects.map((p) => (
          <li key={p.name} className="text-sm">
            <span className="font-medium">{p.name}</span>{' '}
            <span className="text-gray-500">({p.status})</span>
          </li>
        ))}
      </ul>
    </main>
  )
}
