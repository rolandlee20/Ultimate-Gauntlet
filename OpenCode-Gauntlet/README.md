# Gauntlet — OpenCode Desktop Edition

A project-agnostic evidence-gated autonomous build/test/review/fix loop for **OpenCode Desktop**.

## Quick start

1. Extract this folder outside your target project.
2. Run `START-GAUNTLET.bat`.
3. Enter the target project path.
4. Open that project in OpenCode Desktop.
5. Run `/gauntlet`.

## Default model routing

The shipped routing uses the free-model roster from the OpenCode environment for which this edition was assembled. Models are deliberately reused by role when useful.

Edit `opencode.jsonc` to change any role's model. Keep the model IDs aligned with the models actually visible in your OpenCode installation.

## Commands

- `/gauntlet` — full loop
- `/swarm` — explicit planning/review swarm
- `/release-gate` — final release review

The Goal Mode plugin is already included in the config; normal Gauntlet use does not require manually starting a separate Goal command.
