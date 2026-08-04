-- Existing progress rows should not be interrupted by the new onboarding prompt.
alter table public.journeypins_progress
  add column if not exists checklist_onboarding_seen boolean not null default true;

-- New progress rows created by the app should show the prompt once.
alter table public.journeypins_progress
  alter column checklist_onboarding_seen set default false;
