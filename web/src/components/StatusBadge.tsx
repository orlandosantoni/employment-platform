import { ProjectStatus } from '@/lib/types'

const config: Record<ProjectStatus, { label: string; className: string }> = {
  active: {
    label: 'Active',
    className: 'bg-green-100 text-green-800',
  },
  incubator: {
    label: 'Incubator',
    className: 'bg-purple-100 text-purple-800',
  },
  seeking_volunteers: {
    label: 'Seeking Volunteers',
    className: 'bg-blue-100 text-blue-800',
  },
  paused: {
    label: 'Paused',
    className: 'bg-yellow-100 text-yellow-800',
  },
  completed: {
    label: 'Completed',
    className: 'bg-gray-100 text-gray-600',
  },
}

export default function StatusBadge({ status }: { status: ProjectStatus }) {
  const { label, className } = config[status]
  return (
    <span className={`inline-block rounded-full px-3 py-1 text-xs font-medium whitespace-nowrap ${className}`}>
      {label}
    </span>
  )
}
