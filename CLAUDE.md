@AGENTS.md

# Claude Code notes

Rules live in `AGENTS.md` (imported above) so every tool shares one source.
Don't duplicate them here.

- This repo is an agent skill: `SKILL.md` is the entry point, invocable as
  `/gbdi-design`.
- No build, no `package.json`. To preview, open `examples/home.html` in a browser
  (or serve the repo with `python3 -m http.server`). Fonts load from CDNs.
