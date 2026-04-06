'use client'

import { useState, useMemo } from 'react'
import { Project, ProjectStatus } from '@/lib/types'
import ProjectCard from './ProjectCard'

const STATUS_OPTIONS: { value: ProjectStatus | 'all'; label: string }[] = [
  { value: 'all', label: 'All' },
  { value: 'active', label: 'Active' },
  { value: 'seeking_volunteers', label: 'Seeking Volunteers' },
  { value: 'incubator', label: 'Incubator' },
  { value: 'paused', label: 'Paused' },
  { value: 'completed', label: 'Completed' },
]

export default function ProjectsFilter({ projects }: { projects: Project[] }) {
  const [status, setStatus] = useState<ProjectStatus | 'all'>('all')
  const [search, setSearch] = useState('')

  const allTags = useMemo(
    () => Array.from(new Set(projects.flatMap((p) => p.tags))).sort(),
    [projects]
  )
  const [selectedTag, setSelectedTag] = useState<string | null>(null)

  const filtered = useMemo(() => {
    return projects.filter((p) => {
      if (status !== 'all' && p.status !== status) return false
      if (selectedTag && !p.tags.includes(selectedTag)) return false
      if (search && !p.name.toLowerCase().includes(search.toLowerCase()) &&
          !p.description?.toLowerCase().includes(search.toLowerCase())) return false
      return true
    })
  }, [projects, status, selectedTag, search])

  return (
    <div className="flex flex-col gap-6">
      {/* Search */}
      <input
        type="text"
        placeholder="Search projects..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className="w-full border border-gray-200 rounded-lg px-4 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-gray-300"
      />

      {/* Status filter */}
      <div className="flex flex-wrap gap-2">
        {STATUS_OPTIONS.map((opt) => (
          <button
            key={opt.value}
            onClick={() => setStatus(opt.value)}
            className={`px-4 py-1.5 rounded-full text-sm font-medium transition-colors ${
              status === opt.value
                ? 'bg-gray-900 text-white'
                : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
            }`}
          >
            {opt.label}
          </button>
        ))}
      </div>

      {/* Tag filter */}
      <div className="flex flex-wrap gap-2">
        {allTags.map((tag) => (
          <button
            key={tag}
            onClick={() => setSelectedTag(selectedTag === tag ? null : tag)}
            className={`px-3 py-1 rounded-md text-xs font-medium transition-colors ${
              selectedTag === tag
                ? 'bg-gray-900 text-white'
                : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
            }`}
          >
            {tag}
          </button>
        ))}
      </div>

      {/* Results */}
      {filtered.length === 0 ? (
        <p className="text-sm text-gray-500 py-8 text-center">No projects match your filters.</p>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
          {filtered.map((project) => (
            <ProjectCard key={project.id} project={project} />
          ))}
        </div>
      )}
    </div>
  )
}
