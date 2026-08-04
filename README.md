# JourneyPins

Open `index.html` in a browser to use the app. Serve the directory over HTTP so
the map, NPS data, and Supabase authentication can load correctly:

```bash
python3 -m http.server 8000
```

The app:

- Shows official U.S. national parks on a map
- Includes a second blue layer for other National Park Service sites
- Lets you search and filter by state
- Gives signed-in users a five-step checklist to mark visited parks, NPS sites, states, temples, and church history locations in batches
- Lets authenticated users mark places visited and save notes and photos
- Saves each user's progress in the Supabase `journeypins_progress` table

Create an account or sign in from the Account panel. If email confirmation is
enabled for the Supabase project, confirm the account email before signing in.

The app reads `NPS_API_KEY` from a local `.env` file when present and falls back
to the bundled key for the NPS data layer. The Supabase publishable key is safe
to include in this browser app; never place a Supabase service-role key here.

The checklist uses the same bundled and live NPS lists as the map. Checklist
changes autosave to the signed-in user's progress row. The
`journeypins_progress.checklist_onboarding_seen` field records whether the
first-time checklist prompt has been dismissed; the checklist can still be
reopened from any category panel.
