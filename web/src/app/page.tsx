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
    <>
      <div className="bg-brand-blue text-white py-14 px-6">
        <div className="max-w-6xl mx-auto">
          <h1 className="text-4xl font-bold mb-3">Current and past projects</h1>
          <p className="text-blue-100 text-lg max-w-xl">
            See what Civic Tech DC is working on and find where you can contribute.
          </p>
        </div>
      </div>
      <main className="max-w-6xl mx-auto px-6 py-12">
        <ProjectsFilter projects={projects as Project[]} />
      </main>
    </>
  )
}
