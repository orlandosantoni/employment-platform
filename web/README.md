# Civic Tech DC — Web

Next.js (App Router) frontend for the employment platform. See the [repository root README](../README.md) for product context.

## Environment

Create `web/.env.local` with:

```bash
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
```

## GitHub sign-in (Supabase Auth)

1. In the [Supabase Dashboard](https://supabase.com/dashboard) → **Authentication** → **Providers**, enable **GitHub** and add your GitHub OAuth App **Client ID** and **Client Secret**.
2. In GitHub → **Settings** → **Developer settings** → **OAuth Apps**, create an app. Set **Authorization callback URL** to the value Supabase shows for GitHub (the Supabase project callback URL), not your Next.js route.
3. Under **Authentication** → **URL Configuration**, add these to **Redirect URLs**:
   - Local: `http://localhost:3000/auth/callback`
   - Production: `https://your-domain.com/auth/callback`

The app route `/auth/callback` exchanges the auth code for a session; after a successful sign-in, users are sent to `/` or to a safe relative `next` query path when present.

## Development

```bash
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000).

## Scripts

| Command       | Description        |
| ------------- | ------------------ |
| `npm run dev` | Start dev server   |
| `npm run build` | Production build |
| `npm run start` | Start production server |
| `npm run lint`  | Run ESLint       |
