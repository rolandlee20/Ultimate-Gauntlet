# Gauntlet

An evidence-gated autonomous project-improvement workflow packaged for two local coding-agent environments:

- **ChatGPT Codex Desktop** — native `AGENTS.md`, project `.codex/config.toml`, project `.codex/agents/`, and repository `.agents/skills/`.
- **OpenCode Desktop** — native `.opencode/` agents/commands/skills plus Goal Mode integration.

Both editions are project-agnostic. No Roblox, Blender, browser, game-engine, personal path, credential, or required MCP configuration is included.

## Workflow

`INSPECT → PLAN → DELEGATE → IMPLEMENT → BUILD/RUN → EXPERIENCE → EVIDENCE → REVIEW → DIAGNOSE → FIX → REPLAY → FRESH REVIEW → REPEAT`

The system uses distinct roles for architecture, design, implementation, systems, performance, player experience, visual/media review, release readiness, and evidence verification. Strong models are reused across roles when that is more useful than filling every slot with a weaker model.

## Editions

### ChatGPT Codex Desktop
Open `ChatGPT-Codex-Gauntlet/` in the **ChatGPT Desktop app in Codex mode**. Trust the repository so project-local `.codex/` configuration is loaded. The Gauntlet workflow is packaged as the `$gauntlet` skill.

### OpenCode Desktop
Open `OpenCode-Gauntlet/`, run `START-GAUNTLET.bat` to install it into a target project, then open that project in **OpenCode Desktop** and run `/gauntlet`.

## License

MIT.
