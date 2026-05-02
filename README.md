# National Park Bucket List

Open `index.html` in a browser to use the app.

The app reads `NPS_API_KEY` from the local `.env` file. Because browsers cannot read
local files directly from `file://`, serve the directory over HTTP if you want the
NPS data layer to load:

```bash
python3 -m http.server 8000
```

What it does:
- Shows official U.S. national parks on a map
- Includes a second blue layer for a few other National Park Service sites
- Lets you search by park or state
- Lets you filter by state with chips
- Lets you mark parks as visited
- Saves your progress on this device in the browser

If you want, I can next turn this into a fuller app with:
- a real data source for every NPS site
- account-based sync across devices
- a cleaner mobile experience
- import/export of your visited parks
# JourneyPins
