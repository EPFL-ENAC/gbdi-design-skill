# Examples

Tokens and rules get an agent most of the way. Finished screens close the gap:
agents and people read these before building something new, and output
converges on them. Every good GBDI page you build should leave a copy here.

## Adding one

1. Save a self-contained HTML page that links `../css/gbdi.css` and `../assets/`.
   Name it for the screen: `country-benchmark.html`, `sign-in.html`.
2. Use placeholder data marked as such, and no real people's names or contacts.
3. Add a row below.

## Index

| File | Screen | Shows |
|------|--------|-------|
| `home.html` | Platform home | Header, two-tone display line, lead, primary + secondary buttons, the one hero-card set, three standard cards with line illustrations, a grey data panel (stacked bars, table, download), footnoted sources. |

Open them in a browser, or serve the repo (`python3 -m http.server`, then
<http://localhost:8000/examples/home.html>). Fonts load from Fontshare and the
gbdi.io CDN, so you need a network connection.

The same page runs in the Quasar app at `/demo` (`lmc-gbdi`, `frontend/src/pages/DemoPage.vue`).
`/demo/project` (`ProjectPage.vue`) shows a real OpenBDF project from `/api/overview`: headline hero
cards, then six chart-and-table views (stage, element, stage by element, hotspots, data types, mass).
`/demo/project_1` to `_3` lay the same data out three ways, all in the GBDI design:
a brand-book spread, the building drawn as a section of its carbon, and an analyst's
drawing sheet with an element × stage heat table and a mass-against-carbon plot.
