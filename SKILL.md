---
name: gbdi-design
description: Use when building, styling or reviewing any interface, prototype, chart or slide for GBDI (Global Building Data Initiative, gbdi.io), including its Vue/Quasar app, or when the user mentions GBDI brand colours (Primary Green #189D7E), SK Modernist, Satoshi, hero cards, or screens about embodied / whole-life carbon data of buildings.
user-invocable: true
---

# GBDI design system

> Maintained by the EPFL ENAC IT4R team for the GBDI platform, distilled from
> **GBDI Brand Guidelines v01 (2024, Lazy Sundays)** and the `lmc-gbdi` frontend.
> Not an official GBDI publication: when it disagrees with the guidelines, they win.

Read **`AGENTS.md`** first (operating rules). Then **`README.md`** from
"Design principles" down (the why, then the spec). Then **study
`examples/home.html`**: it is what finished GBDI output looks like. Pull in as needed:
`tokens/gbdi.css` (tokens), `css/gbdi.css` (classes), `kits/quasar/` (production
Quasar app), `assets/` (logos).

- **Prototype / mock / static page** → link `css/gbdi.css`, copy `assets/`.
- **Production (Vue + Quasar)** → `kits/quasar/` and its `README.md`.

With no brief, ask what to build and for whom (public overview or expert
detail), then work as a GBDI designer.

## Hard rules

- Tokens only (`var(--gbdi-*)`, or `tokens.$…` in Sass). No raw hex outside `tokens/` and `kits/quasar/02-tokens/_options.scss`.
- SK Modernist for headings ≥ 32px; Satoshi for everything else. Never ship font files.
- Primary Green in small splashes (buttons, icons, highlights). Bright and Dark colours never fill a background.
- Pastel fills only on hero cards; **one set of hero cards per page**. Other cards: white or `#F6F8F8` with a 1px `#EEF2F2` border.
- Flat: borders, not shadows (shadow only on menus/tooltips). No gradients, no textures.
- Every number has a unit and a source. Charts: green first, then blue, purple, orange.
- Illustrations: 1px `#646464` line, `#D5E6E2` accent, no white fill on grey. Never redraw the logo: use `assets/`.
- Red is **not** a GBDI colour: `--gbdi-color-status-error` is a flagged suggestion.
