# Data Model

Phase 1 schema. All content is admin-managed via the Supabase dashboard.

---

## Tables

### `projects`
| Column | Type | Notes |
|---|---|---|
| `id` | uuid | Primary key |
| `name` | text | Display name |
| `slug` | text | URL identifier — e.g. `civic-data-portal` |
| `description` | text | Full project description |
| `status` | enum | `active`, `incubator`, `seeking_volunteers`, `paused`, `completed` |
| `contact_email` | text | Emailed when a visitor clicks the contact button |
| `tags` | text[] | Skills/technologies — e.g. `["Python", "React", "UX Design"]` |
| `created_at` | timestamptz | Auto-set |

---

### `volunteers`
| Column | Type | Notes |
|---|---|---|
| `id` | uuid | Primary key |
| `name` | text | Display name |
| `avatar_url` | text | Link to photo (Supabase Storage or external) |
| `bio` | text | Short personal description |
| `skills` | text[] | e.g. `["Python", "Figma", "Data Analysis"]` |
| `linkedin_url` | text | Optional |
| `github_url` | text | Optional |
| `website_url` | text | Optional |

---

### `project_members`
Join table linking volunteers to projects.

| Column | Type | Notes |
|---|---|---|
| `id` | uuid | Primary key |
| `project_id` | uuid | FK → `projects.id` |
| `volunteer_id` | uuid | FK → `volunteers.id` |
| `role_title` | text | Free text — e.g. "UX Designer", "Backend Dev" |
| `is_lead` | boolean | Multiple leads per project allowed |

---

### `open_roles`
Roles a project is actively looking to fill.

| Column | Type | Notes |
|---|---|---|
| `id` | uuid | Primary key |
| `project_id` | uuid | FK → `projects.id` |
| `title` | text | Free text — e.g. "Frontend Developer" |
| `description` | text | What the role involves and what's needed |

---

## Relationships

```
projects ──< project_members >── volunteers
projects ──< open_roles
```

- A project can have many volunteers (through `project_members`)
- A volunteer can be on many projects (through `project_members`)
- A project can have many open roles
- Multiple `project_members` rows per project can have `is_lead = true`

---

## Phase 2 additions (for reference)

When self-service accounts are introduced:
- Add `auth_user_id` to `volunteers` linking to Supabase Auth
- Add a `join_requests` table (`volunteer_id`, `project_id`, `status`, `message`)
- Row-level security policies to let volunteers edit only their own profile
- Row-level security to let project leads manage their own project
