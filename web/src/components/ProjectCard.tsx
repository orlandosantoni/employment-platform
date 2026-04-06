import Link from 'next/link'
import { Project } from '@/lib/types'
import StatusBadge from './StatusBadge'

export default function ProjectCard({ project }: { project: Project }) {
  return (
    <Link href={`/projects/${project.slug}`}>
      <div className="group border-2 border-brand-gold rounded-xl p-6 hover:shadow-md transition-all bg-white h-full flex flex-col gap-4">
        <div className="flex items-start justify-between gap-4">
          <h2 className="text-lg font-semibold text-brand-blue group-hover:underline leading-tight">
            {project.name}
          </h2>
          <StatusBadge status={project.status} />
        </div>

        {project.description && (
          <p className="text-sm text-gray-600 leading-relaxed line-clamp-3">
            {project.description}
          </p>
        )}

        {project.tags.length > 0 && (
          <div className="flex flex-wrap gap-2 mt-auto pt-2">
            {project.tags.map((tag) => (
              <span
                key={tag}
                className="bg-gray-100 text-gray-600 text-xs px-2 py-1 rounded-md"
              >
                {tag}
              </span>
            ))}
          </div>
        )}
      </div>
    </Link>
  )
}
