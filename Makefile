# The skill as one archive: the gbdi-design/ folder with SKILL.md at its root, which
# is what claude.ai, Claude Desktop and Codex install. A .skill file is the same zip.
.PHONY: skill
skill: ## Build dist/gbdi-design.zip and dist/gbdi-design.skill
	rm -rf dist && mkdir dist
	cd skills && zip -qr ../dist/gbdi-design.zip gbdi-design -x '*.DS_Store'
	cp dist/gbdi-design.zip dist/gbdi-design.skill
