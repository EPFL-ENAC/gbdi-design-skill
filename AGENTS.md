# Maintaining the GBDI design skill

This repo ships one agent skill, `skills/gbdi-design/`. To **use** it, follow
`skills/gbdi-design/SKILL.md`; its rules are in `skills/gbdi-design/rules.md`. This
file is for changing the skill itself.

- **Everything the skill reads lives in `skills/gbdi-design/`**, referenced by
  relative paths: the folder is zipped as is for claude.ai and Codex. Nothing in it
  may point outside it.
- **`SKILL.md` frontmatter stays portable:** `name` and `description` only, and the
  description under 200 characters (claude.ai's limit).
- **`kits/quasar/` is a copy of `EPFL-ENAC/lmc-gbdi` `frontend/src/css`**, at commit
  `b8f6ebe`. When the app's CSS changes, copy the folder again and update this line.
  Its comments cite a few pages one off from the PDF's count (p.14 → p.15 palette,
  p.25 → p.26 cards, p.41 → p.40 sign-in); the rest of the skill uses the PDF's count.
- **`tokens/gbdi.css` mirrors** `kits/quasar/02-tokens/_options.scss` and
  `_decisions.scss` by hand, with the names `css-properties.scss` emits. Change a
  value in the kit first, then there.
- **A new pattern** goes into both `kits/quasar/06-components/` and `css/gbdi.css`,
  under the same class name. A good page goes into `examples/`.
- **A new guidelines version:** re-read the colour, type and card pages first; most
  rules trace back to them.
- **Release:** bump `.claude-plugin/plugin.json`, tag `vX.Y.Z`; the workflow builds
  `dist/gbdi-design.zip` (`make skill` locally) and publishes it.
