-- Civic Tech DC: Employment Platform
-- Seed Data
-- Run this in the Supabase SQL editor after schema.sql

-- ============================================================
-- PROJECTS
-- ============================================================

insert into projects (id, name, slug, description, status, contact_email, tags) values
  (
    '11111111-0000-0000-0000-000000000001',
    'DC Open Data Portal',
    'dc-open-data-portal',
    'A public-facing portal that aggregates and visualizes open datasets published by DC government agencies. Our goal is to make civic data accessible and useful for residents, journalists, and researchers.',
    'active',
    'opendata@civictechdc.org',
    '{"Python", "React", "Data Visualization", "PostgreSQL"}'
  ),
  (
    '11111111-0000-0000-0000-000000000002',
    'Affordable Housing Tracker',
    'affordable-housing-tracker',
    'An interactive map and database tracking affordable housing units across DC — including availability, eligibility requirements, and application status. Helps residents find housing and advocates track policy impact.',
    'seeking_volunteers',
    'housing@civictechdc.org',
    '{"React", "Node.js", "Mapbox", "PostgreSQL"}'
  ),
  (
    '11111111-0000-0000-0000-000000000003',
    'Transit Accessibility Auditor',
    'transit-accessibility-auditor',
    'A mobile-friendly tool for volunteers to audit and report accessibility issues at Metro stations and bus stops. Data feeds into a public dashboard used by WMATA and disability advocacy groups.',
    'active',
    'transit@civictechdc.org',
    '{"React Native", "Python", "FastAPI", "GIS"}'
  ),
  (
    '11111111-0000-0000-0000-000000000004',
    'Neighborhood Budget Explorer',
    'neighborhood-budget-explorer',
    'An interactive tool that breaks down DC''s annual budget by neighborhood and agency, allowing residents to understand where their tax dollars go and compare spending across wards.',
    'incubator',
    'budget@civictechdc.org',
    '{"D3.js", "Python", "Data Analysis"}'
  ),
  (
    '11111111-0000-0000-0000-000000000005',
    'DC Council Bill Tracker',
    'dc-council-bill-tracker',
    'Monitors DC Council legislation in real time — tracking bill status, sponsor activity, public hearings, and voting records. Sends alerts to subscribed residents when bills they care about advance.',
    'active',
    'bills@civictechdc.org',
    '{"Python", "Web Scraping", "React", "PostgreSQL"}'
  ),
  (
    '11111111-0000-0000-0000-000000000006',
    'Volunteer Connect',
    'volunteer-connect',
    'This platform! A directory of Civic Tech DC projects and volunteers, helping new contributors find where to plug in and giving existing volunteers a place to showcase their work.',
    'active',
    'volunteer@civictechdc.org',
    '{"Next.js", "Supabase", "TypeScript"}'
  ),
  (
    '11111111-0000-0000-0000-000000000007',
    'School Performance Dashboard',
    'school-performance-dashboard',
    'A public dashboard visualizing DCPS school performance data — test scores, attendance, teacher retention, and facility conditions — to help parents make informed decisions and hold administrators accountable.',
    'completed',
    'schools@civictechdc.org',
    '{"React", "Python", "Data Visualization"}'
  ),
  (
    '11111111-0000-0000-0000-000000000008',
    '311 Response Time Analyzer',
    '311-response-time-analyzer',
    'Analyzed DC 311 service request data to surface patterns in response times across wards and request types. Findings were presented to the DC Office of Unified Communications.',
    'completed',
    '311@civictechdc.org',
    '{"Python", "Data Analysis", "Jupyter"}'
  ),
  (
    '11111111-0000-0000-0000-000000000009',
    'Eviction Early Warning System',
    'eviction-early-warning-system',
    'A data pipeline and alert system that identifies neighborhoods and buildings with rising eviction filings, enabling legal aid organizations to proactively reach at-risk tenants.',
    'paused',
    'eviction@civictechdc.org',
    '{"Python", "PostgreSQL", "Data Analysis"}'
  ),
  (
    '11111111-0000-0000-0000-000000000010',
    'Participatory Budgeting App',
    'participatory-budgeting-app',
    'A mobile app prototype built for a DC ward council pilot, allowing residents to vote on how a portion of discretionary funds should be spent in their neighborhood.',
    'completed',
    'pb@civictechdc.org',
    '{"React Native", "Node.js", "UX Design"}'
  );

-- ============================================================
-- VOLUNTEERS
-- ============================================================

insert into volunteers (id, name, bio, skills, linkedin_url, github_url) values
  (
    '22222222-0000-0000-0000-000000000001',
    'Maya Chen',
    'Full-stack developer with a background in civic data. Passionate about making government information accessible to everyone.',
    '{"Python", "React", "PostgreSQL", "Data Visualization"}',
    'https://linkedin.com/in/mayachen',
    'https://github.com/mayachen'
  ),
  (
    '22222222-0000-0000-0000-000000000002',
    'James Okafor',
    'Backend engineer and open source contributor. Interested in the intersection of technology and housing policy.',
    '{"Node.js", "PostgreSQL", "Python", "Docker"}',
    'https://linkedin.com/in/jamesokafor',
    'https://github.com/jamesokafor'
  ),
  (
    '22222222-0000-0000-0000-000000000003',
    'Sofia Reyes',
    'UX designer focused on accessibility and civic products. Previously designed tools for FEMA and the Census Bureau.',
    '{"UX Design", "Figma", "User Research", "Accessibility"}',
    'https://linkedin.com/in/sofiareyes',
    null
  ),
  (
    '22222222-0000-0000-0000-000000000004',
    'David Park',
    'Data scientist with expertise in geospatial analysis. Enjoys turning messy government datasets into clear insights.',
    '{"Python", "GIS", "Data Analysis", "Mapbox", "Jupyter"}',
    'https://linkedin.com/in/davidpark',
    'https://github.com/davidpark'
  ),
  (
    '22222222-0000-0000-0000-000000000005',
    'Priya Nair',
    'Frontend developer and D3.js enthusiast. Believes in open data as a tool for democratic accountability.',
    '{"React", "D3.js", "TypeScript", "Data Visualization"}',
    'https://linkedin.com/in/priyanair',
    'https://github.com/priyanair'
  ),
  (
    '22222222-0000-0000-0000-000000000006',
    'Marcus Williams',
    'Product manager and community organizer. Helps translate community needs into product requirements for civic tech projects.',
    '{"Product Management", "User Research", "Agile"}',
    'https://linkedin.com/in/marcuswilliams',
    null
  ),
  (
    '22222222-0000-0000-0000-000000000007',
    'Aisha Thompson',
    'Mobile developer specializing in React Native. Interested in transit, accessibility, and making DC more livable.',
    '{"React Native", "TypeScript", "React", "Node.js"}',
    'https://linkedin.com/in/aishathompson',
    'https://github.com/aishathompson'
  ),
  (
    '22222222-0000-0000-0000-000000000008',
    'Leo Martinez',
    'DevOps and backend engineer. Keeps the infrastructure running so everyone else can build.',
    '{"Python", "Docker", "PostgreSQL", "FastAPI", "AWS"}',
    'https://linkedin.com/in/leomartinez',
    'https://github.com/leomartinez'
  );

-- ============================================================
-- PROJECT MEMBERS
-- ============================================================

insert into project_members (project_id, volunteer_id, role_title, is_lead) values
  -- DC Open Data Portal
  ('11111111-0000-0000-0000-000000000001', '22222222-0000-0000-0000-000000000001', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000001', '22222222-0000-0000-0000-000000000004', 'Data Engineer', false),
  ('11111111-0000-0000-0000-000000000001', '22222222-0000-0000-0000-000000000005', 'Frontend Developer', false),

  -- Affordable Housing Tracker
  ('11111111-0000-0000-0000-000000000002', '22222222-0000-0000-0000-000000000002', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000002', '22222222-0000-0000-0000-000000000003', 'UX Designer', false),
  ('11111111-0000-0000-0000-000000000002', '22222222-0000-0000-0000-000000000004', 'GIS Developer', false),

  -- Transit Accessibility Auditor
  ('11111111-0000-0000-0000-000000000003', '22222222-0000-0000-0000-000000000007', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000003', '22222222-0000-0000-0000-000000000008', 'Backend Developer', true),
  ('11111111-0000-0000-0000-000000000003', '22222222-0000-0000-0000-000000000003', 'UX Designer', false),

  -- Neighborhood Budget Explorer
  ('11111111-0000-0000-0000-000000000004', '22222222-0000-0000-0000-000000000005', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000004', '22222222-0000-0000-0000-000000000004', 'Data Analyst', false),

  -- DC Council Bill Tracker
  ('11111111-0000-0000-0000-000000000005', '22222222-0000-0000-0000-000000000001', 'Backend Developer', false),
  ('11111111-0000-0000-0000-000000000005', '22222222-0000-0000-0000-000000000008', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000005', '22222222-0000-0000-0000-000000000006', 'Product Manager', false),

  -- Volunteer Connect (this project)
  ('11111111-0000-0000-0000-000000000006', '22222222-0000-0000-0000-000000000006', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000006', '22222222-0000-0000-0000-000000000005', 'Frontend Developer', false),

  -- School Performance Dashboard (completed)
  ('11111111-0000-0000-0000-000000000007', '22222222-0000-0000-0000-000000000001', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000007', '22222222-0000-0000-0000-000000000003', 'UX Designer', false),
  ('11111111-0000-0000-0000-000000000007', '22222222-0000-0000-0000-000000000005', 'Frontend Developer', false),

  -- 311 Response Time Analyzer (completed)
  ('11111111-0000-0000-0000-000000000008', '22222222-0000-0000-0000-000000000004', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000008', '22222222-0000-0000-0000-000000000008', 'Data Engineer', false),

  -- Eviction Early Warning System (paused)
  ('11111111-0000-0000-0000-000000000009', '22222222-0000-0000-0000-000000000002', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000009', '22222222-0000-0000-0000-000000000004', 'Data Analyst', false),

  -- Participatory Budgeting App (completed)
  ('11111111-0000-0000-0000-000000000010', '22222222-0000-0000-0000-000000000007', 'Project Lead', true),
  ('11111111-0000-0000-0000-000000000010', '22222222-0000-0000-0000-000000000003', 'UX Designer', false),
  ('11111111-0000-0000-0000-000000000010', '22222222-0000-0000-0000-000000000006', 'Product Manager', false);

-- ============================================================
-- OPEN ROLES
-- ============================================================

insert into open_roles (project_id, title, description) values
  -- Affordable Housing Tracker (seeking_volunteers)
  (
    '11111111-0000-0000-0000-000000000002',
    'React Developer',
    'Help build and improve the interactive map interface. Familiarity with Mapbox or Leaflet is a plus but not required.'
  ),
  (
    '11111111-0000-0000-0000-000000000002',
    'Backend Developer',
    'Assist with the Node.js API and database queries. We need help optimizing our housing data ingestion pipeline.'
  ),

  -- DC Open Data Portal
  (
    '11111111-0000-0000-0000-000000000001',
    'Python Developer',
    'Help write and maintain ETL scripts that pull data from DC government APIs and load it into our database.'
  ),

  -- Transit Accessibility Auditor
  (
    '11111111-0000-0000-0000-000000000003',
    'React Native Developer',
    'Improve the mobile auditing interface used by field volunteers. Experience with offline-first apps is a big plus.'
  ),
  (
    '11111111-0000-0000-0000-000000000003',
    'UX Researcher',
    'Conduct usability testing with our field volunteers and disability advocates to improve the auditing workflow.'
  ),

  -- Neighborhood Budget Explorer (incubator)
  (
    '11111111-0000-0000-0000-000000000004',
    'D3.js / Data Visualization Developer',
    'We are early stage and looking for someone to help design and build our core budget visualization components.'
  ),
  (
    '11111111-0000-0000-0000-000000000004',
    'Policy Researcher',
    'Help us understand DC budget data and identify the most useful angles for residents. No technical background required.'
  ),

  -- Volunteer Connect (this project)
  (
    '11111111-0000-0000-0000-000000000006',
    'Next.js Developer',
    'Help build the frontend for this platform. We are using Next.js App Router with Supabase as the backend.'
  );
