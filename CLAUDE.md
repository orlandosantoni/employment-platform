# CLAUDE.md — Civic Tech DC: Employment Platform

This file provides context for Claude Code when working in this project.

## What This Is

A standalone volunteer directory and project showcase for a civic tech non-profit (Civic Tech DC). The platform lets new volunteers discover projects and find where to contribute, and gives existing volunteers a way to showcase their work publicly.

It will grow in phases — starting as a simple admin-managed directory, eventually becoming a full volunteer job board with self-service accounts.

## Key Documents

- `VISION.md` — Full product vision, target audience, feature phases, and open questions
- `DATA_MODEL.md` — Database schema with table definitions, relationships, and Phase 2 notes

## Stack

| Layer | Technology |
|---|---|
| Frontend | Next.js (App Router) |
| Database / Backend | Supabase (PostgreSQL) |
| Hosting | Vercel |

- **No custom backend server** — Supabase auto-generated REST API handles data access in Phase 1
- **No auth in Phase 1** — all content is admin-managed directly via the Supabase dashboard
- **TypeScript** preferred throughout

## Project Phases

- **Phase 1 (current)** — Admin-managed project directory. Projects, team members, open roles. Contact via email button.
- **Phase 2** — Invite-based volunteer accounts. Self-service profiles. Join request flow. Project admin roles.
- **Phase 3** — Open registration. Skills matching. Full volunteer job board. Potential paid contracts.

## Data Model (summary)

Four tables in Phase 1:
- `projects` — name, slug, description, status, contact_email, tags (text[])
- `volunteers` — name, avatar_url, bio, skills (text[]), social links
- `project_members` — joins volunteers to projects with role_title and is_lead flag
- `open_roles` — per-project open positions with title and description

## Conventions

- Keep Phase 1 simple — resist adding features beyond what is scoped
- `role_title` on `project_members` is free text for now; can be formalized into an enum later
- Multiple project leads are allowed (`is_lead = true` on multiple `project_members` rows)
- Tags and skills are plain text arrays — no normalized skills tables until Phase 3 if needed
