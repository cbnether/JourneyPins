# Repository Guidelines

## Project Structure & Module Organization

This repository is a small static web app. The main application lives in `index.html`, which contains the HTML shell, embedded CSS, bundled location data, and browser-side JavaScript. `README.md` documents basic usage. There is currently no separate `src/`, `tests/`, or `assets/` directory, and no package manager metadata.

Keep changes scoped and easy to review. If the app grows, prefer splitting repeated data and behavior into clear files such as `src/data/parks.js`, `src/map.js`, and `styles.css` instead of adding more large blocks to `index.html`.

## Build, Test, and Development Commands

- `python3 -m http.server 8000`: serve the repository over HTTP for local browser testing.
- Open `http://localhost:8000/index.html`: run the app with browser APIs and remote CDN resources enabled.
- Opening `index.html` directly may render the page, but HTTP serving is preferred for features that depend on browser/network behavior.

There is no build step. The app loads Leaflet and fonts from CDNs, so internet access is required for the complete map experience.

## Coding Style & Naming Conventions

Use two-space indentation for HTML, CSS, and JavaScript to match the existing file. Prefer descriptive camelCase names for JavaScript variables and functions, such as `showParksOnMap` and `templeCompleteKey`. CSS class names use lowercase hyphenated selectors, such as `.filter-modal` and `.category-tab-button`.

Keep data objects consistent: location entries should include `name`, `state` or `states`, `lat`, `lng`, and a `type` or category marker where relevant. Avoid unrelated formatting churn in `index.html`.

## Testing Guidelines

There is no automated test framework yet. For each change, manually test in a browser served from `python3 -m http.server 8000`. Verify map rendering, category toggles, filters, visited/completed state, notes, and mobile layout. Because progress is stored in `localStorage`, test both fresh and existing browser storage when changing persistence keys.

## Commit & Pull Request Guidelines

Recent commits use short, plain-language summaries, for example `updated a new filter button`. Keep commit messages concise and action-oriented.

Pull requests should include a brief description, screenshots or screen recordings for visible UI changes, manual test notes, and any data source changes. Link related issues when available and call out changes to storage keys, CDN dependencies, or browser compatibility.

## Security & Configuration Tips

Do not commit private API keys. If adding configuration, document expected local setup in `README.md` and keep secrets outside tracked files. Treat bundled keys as public because client-side code is visible to every browser user.
