# GBDI design system: agent operating rules

This file is the tool-neutral instruction set for any coding agent (Claude Code,
OpenCode, Codex, Cursor, …) working in or with this repo. `CLAUDE.md` imports it,
`.cursor/rules/` points to it, `SKILL.md` routes to it. Edit rules here, once.

## What this repo is

The design reference for the **Global Building Data Initiative (GBDI)** platform,
maintained by EPFL ENAC IT4R. Sources, in order of authority:

1. **GBDI Brand Guidelines v01 (2024, Lazy Sundays)**: printed values, then values
   measured from its vector paths. Page numbers (`p.15`) refer to that PDF.
2. **gbdi.io** (its Framer CSS) where the PDF is silent.
3. The `lmc-gbdi` frontend (`frontend/src/css`), copied to `kits/quasar/`.

It is consumed three ways: as an agent skill (you, reading this), as CSS + a
Quasar kit inside a real app, and as quick-copy assets for prototypes. No build
step: everything is static files.

## Read order

1. `AGENTS.md` (this file): how to operate, the rules.
2. `README.md` from **Design principles** down: the why, then the spec.
3. `examples/home.html`: a finished screen. Study it before building a page.
4. As needed: `tokens/gbdi.css`, `css/gbdi.css`, `kits/quasar/`, `assets/`.

With no brief, ask what the user wants to build and who reads it (the public
overview or the expert detail; see "Two scales"), then act as a GBDI designer
producing a static HTML prototype or production Quasar code.

## Architecture

```
kits/quasar/02-tokens/_options.scss   raw palette + scales (Sass)   ← raw values live here…
tokens/gbdi.css                        the same, as --gbdi-* CSS vars ← …and here, nowhere else
        ↓
kits/quasar/  Quasar app layer (decisions → components → Quasar bridge, @layer cascade)
css/gbdi.css  the same patterns as plain classes, for prototypes
        ↓
examples/     finished pages
```

- Class names are shared between `css/gbdi.css` and the kit: `.gbdi-card`,
  `.gbdi-card--grey`, `.gbdi-card--panel`, `.gbdi-hero-card--{green|blue|purple|orange}`,
  `.text-lead`, `.text-display-lead`, `.link`, `.grid-3-col`, `.page-grid`,
  `.btn-secondary`. A prototype ports to the app without renaming.
- In Quasar: `<q-btn unelevated no-caps color="primary">` for the primary button,
  `class="btn-secondary"` for the "Download" button, `outlined` fields.
- Sass in a component: `@use '@/css/02-tokens' as tokens;` then `tokens.$color-text`.
  Charts, canvas and inline styles read the `--gbdi-*` CSS variables.

## Hard rules (brand: follow exactly)

- **Tokens only.** No raw hex in components, pages or examples (the token folders,
  `tokens/` and `02-tokens/`, are the only exception). A colour that is not
  a token does not exist: add it to `_options.scss` and `tokens/gbdi.css` first,
  with its provenance tag.
- **Two typefaces.** SK Modernist (`--gbdi-font-display`) for headings ≥ 32px and
  display numbers; Satoshi (`--gbdi-font-sans`) for 24px/18px headings, body and UI.
  Display headings use weight 400.
- **Never commit or bundle font files.** Satoshi's ITF EULA forbids re-hosting;
  the SK Modernist web licence is unconfirmed. `tokens/fonts.css` loads both from CDNs.
- **Primary Green `#189D7E` in small splashes**: buttons, icons, highlights, the
  first chart series. No Bright or Dark colour fills a large background (p.15, p.17).
- **Green copy below 24px is Green Dark `#206D59`**, never Primary Green (p.17).
- **Pastels fill hero cards only, one set of hero cards per page or app view**
  (p.17, p.26). Each hero card: pastel fill, big number in the Bright tone, one
  short line in the Dark tone. The number is the figure alone (`453`, `42%`,
  `50–90%`); its unit opens the line below ("kgCO₂e/m² on average…"). Need more
  cards? Use standard cards.
- **Standard cards** are white or Green-Grey Card `#F6F8F8`, 1px Green-Grey Border
  `#EEF2F2`, 8px radius, heading + text + optional illustration. Title Black, body
  Grey Dark `#646464`. Any number per page.
- **Primary buttons are Primary Green**, never blue (the sign-in mock on p.40 is not
  followed).
- **Flat surfaces.** Borders separate; no card shadows, no gradients, no textures.
  The one shadow token (`--gbdi-shadow-floating`) is for menus and tooltips.
- **Data viz:** categorical order green → blue → purple → orange; parts of one whole
  use one hue's ramp dark → bright → light → pastel; Orange Bright marks the
  highlighted value (p.15–16). The ramp has four steps: merge the smallest parts
  into "Other" rather than inventing a fifth tone. One exception: life-cycle stages
  A1–A3 / A4–A5 / B / C1–C4 use Green Dark, Green Bright, Green Light and Orange
  Bright (the p.16 "Green Bright + Light + Orange Bright" set), because a pastel
  segment disappears on a grey panel.
- **Illustrations:** 1px Grey Dark `#646464` stroke, Green-Grey Accent `#D5E6E2`
  on a few faces, no white fill on a grey card (p.19, p.24). Use the `.gbdi-illustration`
  hook. Don't invent a new style; don't use stock icon packs as illustrations.
- **Logo:** use the files in `assets/`, never redraw or recolour them. Primary
  (`gbdi-logo-primary.svg`) first; secondary (full name) where GBDI is unknown;
  tertiary (stacked) only where stacking is required; the icon alone only inside
  the product (p.6–9).
- **Red is not GBDI.** `--gbdi-color-status-error` (`#C62828`) is an IT4R
  suggestion. Use it only for form errors and keep the WARNING comment.

## Conventions (ours, not brand law: change them with a reason)

- Spacing is a 4px scale (`--gbdi-spacing-*`), carried over from co2-calculator.
- Buttons are 48px high, never uppercased (`no-caps`, `text-transform: none`).
- No emoji in product UI.
- Hover changes colour or underline, never lifts or scales. Transitions 0.2s ease.
- Focus: one ring everywhere, 2px Green Dark, 2px offset. Disabled stays opacity 1.
- Every number carries a unit; headline numbers carry a footnote to their source.
- Design the states: loading, empty, error, partial data, ≤ 809px wide.

## Building a pattern

1. Use an existing class or Quasar component first.
2. New pattern: add it to `kits/quasar/06-components/` (production) **and**
   `css/gbdi.css` (prototypes), same class name, tokens only.
3. Cover hover, focus, disabled, and the empty / error states that apply.
4. If it is a page others should copy, add it to `examples/` and its index.

## Self-check before you hand over

```bash
# From the project root: raw hex outside the token files (should print nothing)
grep -rnE '#[0-9a-fA-F]{6}\b|#[0-9a-fA-F]{3}\b' --include='*.css' --include='*.scss' --include='*.vue' --include='*.html' . \
  | grep -vE '(^|/)tokens/|02-tokens/|\.md:'
```

Then check by eye: one set of hero cards, one display statement, no bright fills,
units and sources on every number, the screen still reads as GBDI with the green
removed.
