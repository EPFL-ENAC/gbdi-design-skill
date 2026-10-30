# GBDI design skill

The design system of the **Global Building Data Initiative (GBDI)** as an agent skill:
brand rules, design principles, tokens, a framework-agnostic stylesheet, the
production Quasar kit, logos and a reference page. Install it once and Claude Code,
claude.ai, Codex or Cursor design GBDI screens on-brand.

> [!NOTE]
> Maintained by the **EPFL ENAC IT4R** team for the GBDI platform. Distilled from
> **GBDI Brand Guidelines v01 (2024, designed by Lazy Sundays)**, the live site
> <https://www.gbdi.io>, and the `EPFL-ENAC/lmc-gbdi` frontend. A working reference,
> not an official GBDI publication: where it disagrees with the guidelines, the
> guidelines win.

## Install

Nothing to clone. Pick the line for your tool.

### Claude Code: a plugin (recommended)

```bash
claude plugin marketplace add EPFL-ENAC/gbdi-design-skill
claude plugin install gbdi@gbdi-design-skill
```

Or the same two commands inside a session, as `/plugin marketplace add …` and
`/plugin install …`. The skill then works in every repo, and
`claude plugin marketplace update gbdi-design-skill` pulls new versions.

**For a whole project team**, commit this to the project's `.claude/settings.json`;
everyone who trusts the folder is offered the plugin, with no per-person setup:

```json
{
  "extraKnownMarketplaces": {
    "gbdi-design-skill": {
      "source": { "source": "github", "repo": "EPFL-ENAC/gbdi-design-skill" }
    }
  },
  "enabledPlugins": { "gbdi@gbdi-design-skill": true }
}
```

### claude.ai and Claude Desktop: upload the skill

Download **`gbdi-design.zip`** from the
[latest release](https://github.com/EPFL-ENAC/gbdi-design-skill/releases/latest),
then add it under Settings, in the Skills section (Capabilities or Features,
depending on the version), with "Upload skill". The release also carries the same
archive as `gbdi-design.skill`.

### Codex, OpenCode and other agents: unzip the skill

```bash
curl -fsSL https://github.com/EPFL-ENAC/gbdi-design-skill/releases/latest/download/gbdi-design.zip -o /tmp/gbdi-design.zip
unzip -o /tmp/gbdi-design.zip -d ~/.codex/skills/    # Codex
unzip -o /tmp/gbdi-design.zip -d ~/.claude/skills/   # OpenCode (and Claude Code without plugins)
```

Rerun the two lines to update. **Cursor:** copy `.cursor/rules/gbdi-design.mdc` into
the project's `.cursor/rules/` and the skill folder next to it. **Any tool that
reads `AGENTS.md`** can be pointed at `skills/gbdi-design/rules.md`.

### In a Quasar app or a static page

The skill carries the code too, under `skills/gbdi-design/`:

- **Quasar:** `kits/quasar/` is the app's `src/css/` (Sass tokens, `@layer` cascade,
  Quasar overrides, GBDI components). Copy it in and wire `quasar.config.js` as its
  `README.md` says.
- **Static page or prototype:** link `css/gbdi.css` and copy `assets/`.
- **Fonts** load from CDNs (Satoshi from Fontshare, SK Modernist from gbdi.io). Never
  commit font files: Satoshi's licence forbids re-hosting, SK Modernist's is unconfirmed.

## Use

Ask for what you need and name GBDI; the skill triggers on its own. Or call it with
a brief (`/gbdi:gbdi-design` in Claude Code with the plugin):

```text
/gbdi:gbdi-design a country benchmark page: median GWP per m², P10–P90 range, a
table of buildings, and a CSV download. Static HTML prototype.

/gbdi:gbdi-design review src/components/HeroStats.vue against the brand rules

Build the GBDI sign-in screen in Quasar.
```

The agent reads `rules.md`, then `design.md`, then studies `examples/home.html`;
it writes a static page on `css/gbdi.css` for a prototype, or Vue + Quasar code on
the kit for production. With no brief, it asks what you're building and who reads it.
`rules.md` ends with a self-check to run before you merge what it made.

## The design, in one line

> Build interfaces the way GBDI wants buildings built: with less material, honest
> about what they are made of, readable at every scale, open to everyone, and
> designed for their whole life.

Five principles (Less material, Honest materials, Two scales, Open by default, Whole
life), then the brand foundations: [`skills/gbdi-design/design.md`](skills/gbdi-design/design.md).

## What's in the repo

| Path | What it is |
|---|---|
| `skills/gbdi-design/` | **The skill**, self-contained: what every install ships. |
| `skills/gbdi-design/SKILL.md` | Entry point: when to use it, read order, hard rules. |
| `skills/gbdi-design/rules.md` | Operating rules for any agent. |
| `skills/gbdi-design/design.md` | Design principles and brand foundations. |
| `skills/gbdi-design/tokens/`, `css/` | `--gbdi-*` tokens and plain classes for prototypes. |
| `skills/gbdi-design/kits/quasar/` | The production Quasar CSS layer. |
| `skills/gbdi-design/assets/`, `examples/` | Logos; finished reference pages. |
| `.claude-plugin/` | The Claude Code marketplace and plugin manifests. |
| `.github/workflows/release.yml` | Builds the `.zip` and `.skill` on each version tag. |
| `AGENTS.md` | How to maintain this repo. |

## Releasing

Bump `version` in `.claude-plugin/plugin.json`, merge, then tag:

```bash
git tag v0.1.0 && git push origin v0.1.0
```

The workflow packages `skills/gbdi-design/` (`make skill`) and publishes the
release; plugin users get it with `claude plugin marketplace update`.
