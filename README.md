# Employment Platform — Civic Tech DC

A volunteer directory and project showcase for [Civic Tech DC](https://civictechdc.org). Helps new volunteers discover projects and find where to contribute, and gives existing volunteers a place to showcase their work publicly.

## What It Does

- Browse all active and past civic tech projects
- See who is working on each project and in what role
- Find projects that need your skills
- View volunteer profiles with bios, skills, and links
- Contact project leads to express interest in joining

## Stack

| Layer | Technology |
|---|---|
| Frontend | Next.js (App Router) |
| Database / Backend | Supabase (PostgreSQL) |
| Hosting | Vercel |

## Project Docs

- [`VISION.md`](./VISION.md) — Product vision, target audience, and feature roadmap
- [`DATA_MODEL.md`](./DATA_MODEL.md) — Database schema and table definitions

## Database Setup

SQL files are in the `supabase/` directory. Run them in order in the Supabase SQL editor:

1. `supabase/schema.sql` — creates all tables, enums, and indexes
2. `supabase/seed.sql` — populates sample data for development

## Development Phases

- **Phase 1 (current)** — Admin-managed project directory with filtering and contact links
- **Phase 2** — Invite-based volunteer accounts, self-service profiles, join request flow
- **Phase 3** — Open registration, skills matching, full volunteer job board

## Contributing

This project is built and maintained by volunteers. If you'd like to contribute, reach out via the platform or show up to a [Civic Tech DC meetup](https://civictechdc.org).
