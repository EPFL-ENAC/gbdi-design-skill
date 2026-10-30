# GBDI design: principles and brand foundations

The why and the spec of GBDI interfaces. Distilled from GBDI Brand Guidelines v01
(2024, designed by Lazy Sundays), gbdi.io and the `lmc-gbdi` frontend; where this file
and the guidelines disagree, the guidelines win. Page numbers (`p.15`) refer to that PDF.
Rules to follow: `rules.md`. Files referred to below sit next to this one.

## Design principles

> Build interfaces the way GBDI wants buildings built: with less material, honest
> about what they are made of, readable at every scale, open to everyone, and
> designed for their whole life.

GBDI exists to cut the carbon embodied in buildings by making building data open.
Its brand book asks for things that are "simple, refined and sophisticated",
illustrations that are "open, fine and refined", photography that finds "the beauty
of repetition, balance and shape". The five principles below turn those words into
decisions. Each one starts as an idea and ends as rules you can check.

### 1. Less material

Every element on a screen has an embodied cost: the attention it takes to read it.
A GBDI interface spends that budget the way a good structure spends concrete, only
where it carries load. The guidelines say it in their own terms: green "in small
splashes", pastels only on hero cards, one set of hero cards per page. Restraint is
not a style here. It is how the one thing that matters gets seen.

- Surfaces are flat: white, Green-Grey Card, a 1px Green-Grey Border. No card
  shadows, no gradients, no textures.
- Primary Green is a splash: the primary button, an icon, a highlight, the first
  series of a chart. No Bright or Dark colour ever fills a background.
- One statement per view in SK Modernist. Everything that is read is in Satoshi.
- One set of hero cards per page. Everything else is a standard card.
- A light page is also a low-carbon page: two webfonts, SVG line illustrations, no
  decorative imagery.

### 2. Honest materials

The photography "zooms in to reveal the beauty of detail" and keeps "a limited
palette": the material is shown as it is, not dressed up. Data gets the same
treatment. A figure is worth only as much as its unit, its source and its
uncertainty, which is why every hero number in the guidelines carries a footnote.

- Every number has a unit (kgCO₂e/m², %, t). Every headline number has a source the
  reader can reach.
- A range stays a range (50–90%). Show the spread (P10–P90, whiskers) when the data
  has one. Don't round to impress.
- Colour encodes meaning, never decoration: series run green → blue → purple →
  orange; the parts of one whole run dark → bright → light → pastel within one hue;
  Orange Bright marks the one value to look at.
- Say what the data is: a "Sample data" or "Estimate" badge, a gap shown as a gap,
  never as zero.
- Numbers align right in tables, with tabular figures.

### 3. Two scales

GBDI serves two readers at once. The brand essence names them: free, open
information "for the general public", and "specific and detailed data analytics …
for specific use cases". The photography works the same way: close up on a
material, then a step back to the whole facade. Design both scales, and make the
way between them obvious.

- The overview scale: a display line, a lead sentence, hero numbers, plain words. A
  policy maker gets the point in five seconds.
- The detail scale: standard cards, tables, filters, methodology, downloads. An
  analyst gets everything behind the point.
- One visual language at both scales. Detail is reached by disclosure (a link, an
  expander, a drill-down), never by a different look.
- Rhythm comes from repetition: cards in threes, equal heights, one grid (p.26, p.36).

### 4. Open by default

The wordmark's letters are "open and clean, making it accessible to a broad
audience", and the product is open data. The interface follows: nothing a reader
needs is locked behind decoration, colour alone, or a mouse.

- The control drawn most often in the guidelines is a **Download** button. Wherever
  there is data, offer it (CSV, methodology, citation) as a secondary button.
- A view lives in its URL, so it can be shared and cited.
- Everything works from the keyboard, with one focus ring: 2px Green Dark, 2px offset.
- Body text is Black or Grey Dark. Grey Text (1.78:1 on white) is only for the faded
  half of a display line, or a lead paragraph that repeats what is said elsewhere:
  never for labels, values, or the only copy of a fact. Green text under 24px is
  Green Dark (p.17).
- Line illustrations are decorative (`aria-hidden`); a chart has a table or a
  sentence that says the same thing.

### 5. Whole life

GBDI measures a building across its whole life, from the product stage to the end of
life. Treat a screen the same way. Launch day is stage A; most of a screen's life is
use, upkeep, and states nobody drew.

- Design the states: loading, empty ("No buildings match these filters"), error,
  partial data, long labels, a 360px-wide phone.
- Tokens only. A colour that is not in `tokens/gbdi.css` or the kit does not exist;
  add it there first. That is what makes a renovation cheap.
- Renovate before you rebuild: extend a pattern in `kits/quasar/` and `css/gbdi.css`
  under the same class name instead of forking it in a page.
- When a pattern is replaced, remove the old one.

### The test

Ask these of any screen before it ships:

1. What is the one thing this screen says, and is it the only thing in display type
   or a pastel?
2. Can every number be traced to a unit and a source?
3. Does a newcomer get the headline and an expert get the data, and can both download it?
4. Remove all the green: does it still read as GBDI? The grey-green structure and the
   type should carry the brand; green is the accent.
5. What does it look like empty, loading, and on a phone?

## Brand foundations

### Essence and voice

- **What:** free, open information on a platform with general data visualisations
  and best practice for the public; detailed analytics and material hotspots for
  specific uses. **How:** empower industry and policy decision-makers to drive
  decarbonisation with open building and whole-life carbon (WLC) data. **Why:** a
  global transition towards regenerative built environments (p.3).
- **Audience:** policy makers, industry leaders, building professionals, data providers.
- **Voice:** direct and enabling. The narrative speaks to "you" and uses plain
  action verbs: "Design resilient buildings… Manage your portfolio's footprint…
  Develop effective climate policy." Confident, never alarmist.
- **The "Better …" motif:** Better data, Better materials, Better design, Better
  buildings, Better business, Better planet. Use it for section and card titles.
- **Casing:** buttons are never uppercased. Product headings use sentence case
  ("Better buildings" on the web mock, p.36); posters and slides sometimes set
  display lines in title case ("Better Buildings", p.35).

### Logo (p.6–9)

| File | Version | Use |
|------|---------|-----|
| `assets/gbdi-logo-primary.svg` | Globe + GBDI | First choice, in contexts GBDI owns or is known in. |
| `assets/gbdi-logo-secondary.svg` / `.png` | Globe + full name | Where GBDI is unknown or less known. |
| `assets/gbdi-logo-tertiary.svg` / `.png` | Stacked | Only where a stacked mark fits better; keep rare. |
| `assets/gbdi-icon.svg` | Globe alone | Inside the product (favicon, app bar), where it is clear who GBDI is. Elsewhere, only next to the full logo. |

The globe stands for a global outlook, balanced with an abstracted building and
data lines. The marks are Black `#3E3E3E` on light grounds. Never redraw, recolour
or re-letter them. The SVGs were traced from the guidelines' vector pages; the
PNGs are the ones the `lmc-gbdi` app ships.

### Colour (p.15–19)

**Primary.** Primary Green `#189D7E` (RGB 24 157 126, CMYK 81 15 63 1, Pantone 339 U/C):
a reference to the colours of the globe. Small splashes only.

**Secondary**, for data visualisation first ("not a comprehensive colour palette for
the product", p.16):

| | Pastel | Light | Bright | Dark |
|---|---|---|---|---|
| Green | `#EAFAF0` | `#A6DBC9` | `#189D7E` | `#206D59` |
| Blue | `#E9F7FE` | `#9DD2F3` | `#3592E3` | `#31658D` |
| Purple | `#EFECFE` | `#BAAEF6` | `#8671EF` | `#5C5CAE` |
| Orange | `#FEE6C8` | `#FBCA94` | `#F59B3A` | `#CC7212` |

- Pastels: large fills, and only on hero cards. Bright: copy of 60pt and above, chart
  series. Dark: copy under 24pt, chart emphasis. Bright and Dark never fill a background.

**Supporting**, tuned to sit with the rest (p.18):

| Name | Hex | Role |
|---|---|---|
| Black | `#3E3E3E` | Headings and text. Pure black is never used. |
| Grey Dark | `#646464` | Secondary text, illustration stroke, chart axes. |
| Grey Text | `#BCC4C2` | Lead paragraphs, the faded half of a display line. |
| Green-Grey Accent | `#D5E6E2` | Highlight, control borders, illustration accent, chips. |
| Green-Grey Border | `#EEF2F2` | Card borders, table rules, chart gridlines. |
| Green-Grey Card | `#F6F8F8` | Grey cards, the header, table heads, page bands. |
| White | `#FFFFFF` | Page and white cards. |

**Status.** Success = Green Dark, info = Blue Dark, warning = Orange Dark. The
guidelines have **no red**: error uses `#C62828`, an IT4R suggestion flagged
`--gbdi-suggested-red-not-gbdi` until GBDI validates or replaces it.

### Typography (p.11–13)

- **SK Modernist**, the display face: a modern grotesk crossed with a simpler
  geometric style, optically tuned for screens. Headings of 32px and up, and the big
  numbers on hero cards. Regular weight.
- **Satoshi**, the supporting face: a modernist sans, free for commercial use. Headings
  of 24px and 18px, body, UI.

| Role | Face | Size | Token |
|---|---|---|---|
| h1 / display | SK Modernist | 68 → 50 → 32px | `--gbdi-text-size-display-xl` |
| h2 / hero number | SK Modernist | 60 → 44 → 32px | `--gbdi-text-size-display-lg` |
| h3 | SK Modernist | 32px | `--gbdi-text-size-display-md` |
| h4, card title | Satoshi Regular | 24px | `--gbdi-text-size-heading-lg` |
| h5 | Satoshi Bold | 18px | `--gbdi-text-size-heading-md` |
| Body large, lead | Satoshi | 18px | `--gbdi-text-size-lg` |
| Body | Satoshi | 16px | `--gbdi-text-size-base` |
| UI, labels | Satoshi | 14 / 12px | `--gbdi-text-size-sm` / `-xs` |

Sizes step down at the gbdi.io breakpoints: tablet ≤ 1199px, mobile ≤ 809px. Line
heights: display 1.25, body 1.2, paragraph 1.3, hero text 1.45, long-form 1.6.

**Signature move: one statement, two tones.** A display line in Black followed by its
second half in Grey Text: "Open Data / Better Buildings" (p.13, p.35). Markup:
`<h1>Open Data <span class="text-display-lead">Better Buildings</span></h1>`.

### Shape, space, elevation

- Radii, measured in the PDF: 2px chips, 4px buttons, fields and hero cards, 8px
  standard cards, 10px wide panels; 40px pills (gbdi.io).
- Borders are 1px. Controls are 48px high (the "Download" button), chips 24px.
- Standard card padding 44px, hero card padding 32px (p.26).
- Spacing follows a 4px scale (a convention, not from the guidelines). Page width 1320px.
- Elevation: flat. One soft shadow exists, for floating layers (menus, tooltips).

### Cards (p.26–27)

| | Standard card | Hero card |
|---|---|---|
| Job | Holds a heading, a paragraph, optionally an illustration | Highlights one key message: a big number and one short line |
| Fill | White or Green-Grey Card | One pastel |
| Text | Title Black 24px; body Grey Dark 18px | Number in the hue's Bright, SK Modernist 60px; line in the hue's Dark. The number is the figure alone (`42%`, `453`); its unit starts the line |
| How many | As many as needed, side by side or stacked | **One set per page or application view** |
| Class | `.gbdi-card`, `--grey`, `--panel` | `.gbdi-hero-card--green`, `--blue`, `--purple`, `--orange` |

Orange is not drawn as a hero card in the guidelines. Its number uses Orange Dark,
because Orange Bright on Orange Pastel is 1.8:1.

### Buttons and fields

- **Primary:** Primary Green fill, white label, 4px radius, 48px; hover Green Dark.
  Never blue, even where the sign-in mock (p.40) shows one.
  In Quasar: `<q-btn unelevated no-caps color="primary">`.
- **Secondary:** the guidelines' "Download" button: Green-Grey Card fill, 1px
  Green-Grey Accent border, Black label; hover fills Green-Grey Accent. Class
  `btn-secondary`.
- **Fields:** white, 1px Green-Grey Accent border, 4px radius, 48px, as on the
  sign-in screen (p.40). Focus turns the border Green Dark at 2px.

### Data visualisation (p.15–16)

- Categorical order: green, blue, purple, orange (`--gbdi-dataviz-1..4`). Green first
  builds equity in the brand colour.
- Within one series: the hue's ramp, dark → bright → light → pastel
  (`--gbdi-dataviz-<hue>-1..4`). Example: a stacked bar with a dark segment, a bright
  segment, and the pastel track behind them. Four steps only: merge the smallest
  parts into "Other" before adding a hue.
- Life-cycle stages (A1–A3, A4–A5, B, C1–C4): Green Dark, Green Bright, Green Light,
  Orange Bright, the p.16 "Green Bright + Light + Orange Bright" set. A pastel segment
  would disappear on a grey panel.
- Range charts: Green Light and Green Bright bands for the range, dashed whiskers to
  the extremes, an Orange Bright dot for the value to compare.
- Gridlines Green-Grey Border, axis text Grey Dark, labels at 12–14px.
- Pick tones far enough apart to compare; never rely on hue alone for meaning.

### Photography (p.21)

Free stock (Unsplash), always "stylistic, refined, clean and beautiful". Close up:
the detail of a material. Stepped back: the repetition, balance and shape of a
building. Neutral colours or a limited palette, cropped tight to control detail and
colour. The library shows materials and architecture, not people.

### Illustration (p.23–24)

A bespoke library of 47 illustrations, "open, fine and refined": 1px Grey Dark
`#646464` line, Green-Grey Accent `#D5E6E2` on a few faces, nothing else. Isometric
building parts (bricks, beams, blocks), globes, hands, documents. On a grey card,
shapes have no white fill. The library itself is not in this repo: get it from
GBDI's download or Figma library. For prototypes, draw simple line shapes with the
`.gbdi-illustration` hook in `css/gbdi.css` (see `examples/home.html`).

### Motion and states

Quiet: colour and underline changes at 0.2s ease. No lifts, scales, bounces or
parallax. Focus is one 2px Green Dark ring with a 2px offset. Disabled controls stay
at full opacity, in Green-Grey Card with Grey Text.

## Contrast notes and open points

The design is kept as printed; the numbers are here so nobody is surprised.

| Pair | Ratio | Where |
|---|---|---|
| White on Primary Green | 3.41:1 | Primary buttons: AA only for large text (≥ 18.66px bold) |
| Grey Text on white | 1.78:1 | Lead paragraphs, faded display words |
| Green-Grey Accent border on white | 1.29:1 | Secondary button and field outlines |
| Orange Dark on Orange Pastel | 2.9:1 | Orange hero card |

Open points for GBDI:

1. **The error red `#C62828` is not part of the GBDI design.** Validate or replace it.
2. **Source conflicts**, resolved toward the palette pages: Grey Text `#BCC4C2` (p.18)
   vs `#BEBFBF` (p.13, gbdi.io); Black `#3E3E3E` (p.18) vs `#3D3D3D` (gbdi.io); Purple
   Pastel `#EFECFE` (p.15) vs `#F0ECFE` (p.26).
3. **SK Modernist web licence:** confirm before self-hosting it.
Decided by the team, where the guidelines disagree with themselves:

- **Primary buttons are Primary Green**, as on p.15 ("buttons on the website"). The blue
  "Log in" button and "Contact us" link on the sign-in mock (p.40) are not followed.
- **Standard card body text is Grey Dark `#646464`** (5.92:1), as in the app. p.19 labels
  it Black; Black stays for the card title.
