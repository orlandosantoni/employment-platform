import { supabase } from '@/lib/supabase'
import { Project } from '@/lib/types'
import ProjectsFilter from '@/components/ProjectsFilter'

export default async function Home() {
  const { data: projects, error } = await supabase
    .from('projects')
    .select('*')
    .order('created_at', { ascending: false })

  if (error) {
    return <pre className="p-8 text-red-600">Error: {error.message}</pre>
  }

  return (
    <main className="max-w-6xl mx-auto px-6 py-12">
      <div className="mb-10">
        <h1 className="text-3xl font-bold text-gray-900">Projects</h1>
        <p className="mt-2 text-gray-500">
          Browse all Civic Tech DC projects and find where to contribute.
        </p>
      </div>
      <ProjectsFilter projects={projects as Project[]} />
    </main>
  )
}
