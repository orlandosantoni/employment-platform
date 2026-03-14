-- Civic Tech DC: Employment Platform
-- Phase 1 Schema
-- Run this in the Supabase SQL editor

-- ============================================================
-- ENUMS
-- ============================================================

create type project_status as enum (
  'active',
  'incubator',
  'seeking_volunteers',
  'paused',
  'completed'
);

-- ============================================================
-- TABLES
-- ============================================================

create table projects (
  id            uuid primary key default gen_random_uuid(),
  name          text not null,
  slug          text not null unique,
  description   text,
  status        project_status not null default 'active',
  contact_email text,
  tags          text[] not null default '{}',
  created_at    timestamptz not null default now()
);

create table volunteers (
  id            uuid primary key default gen_random_uuid(),
  name          text not null,
  avatar_url    text,
  bio           text,
  skills        text[] not null default '{}',
  linkedin_url  text,
  github_url    text,
  website_url   text
);

create table project_members (
  id            uuid primary key default gen_random_uuid(),
  project_id    uuid not null references projects(id) on delete cascade,
  volunteer_id  uuid not null references volunteers(id) on delete cascade,
  role_title    text,
  is_lead       boolean not null default false,
  unique (project_id, volunteer_id)
);

create table open_roles (
  id            uuid primary key default gen_random_uuid(),
  project_id    uuid not null references projects(id) on delete cascade,
  title         text not null,
  description   text
);

-- ============================================================
-- INDEXES
-- ============================================================

create index on project_members (project_id);
create index on project_members (volunteer_id);
create index on open_roles (project_id);
create index on projects (status);
create index on projects using gin (tags);
