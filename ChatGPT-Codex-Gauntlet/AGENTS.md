# Gauntlet — Codex Desktop

Use `$gauntlet` for substantial autonomous build, debug, polish, and release work. This repository already contains the Gauntlet workflow; do not recreate it in conversation.

## Operating rules

Inspect the actual repository before deciding what is true. Use real runtime/tool evidence where available. Never invent screenshots, videos, measurements, MCP results, or agent outputs.

The workflow must continue through planning, implementation, build/run, natural-user testing, evidence review, diagnosis, fixing, replay, and fresh re-judging. Do not stop merely because the project builds or a feature exists in source.

## Subagents

Project-scoped custom roles are stored in `.codex/agents/`. Use them when their perspective is useful. Parallelize independent planning/review work, but keep implementation as a synchronization barrier when later stages depend on it.

## Model default

The project defaults both the main session and spawned agents to `gpt-5.6-terra`. Change `.codex/config.toml` to use another available model. Individual roles can override the default by defining `model = "..."` in their own TOML file.

## Evidence integrity

Missing or stale evidence is unresolved. Build success is not player-facing proof. After a meaningful behavior change, affected old evidence must be replaced with fresh runtime evidence.
