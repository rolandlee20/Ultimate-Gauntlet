---
name: gauntlet
description: Run the full evidence-gated autonomous project-improvement workflow with Codex subagents, real runtime evidence, fresh replay, and adversarial review.
---

# Gauntlet Skill

Use the repository `AGENTS.md` as the project-level operating contract. Do not recreate the workflow in the user's task response. Execute it.

## Core loop
INSPECT → GOAL → PLAN/DELEGATE → SYNTHESIZE → IMPLEMENT → BUILD/RUN → EXPERIENCE → EVIDENCE → REVIEW SWARM → REFEREE → DIAGNOSE → FIX → REPLAY → FRESH REVIEW → REPEAT

## Delegation
Use the custom agents in `.codex/agents/` for independent perspectives. Reuse the default model across multiple roles when that is useful. Do not add a weaker model only to make the swarm look larger.

Planning roles: architect, design_strategist, architecture_redteam, design_redteam, systems_auditor.
Implementation roles: builder, asset_artist when applicable.
Validation roles: player_judge, visual_image_judge, visual_video_judge, systems_auditor, performance_auditor, release_judge, evidence_referee, blindspot_checker when needed.

## Evidence
Use only tools and evidence actually available. Missing evidence is unresolved. Stale evidence does not validate changed behavior. Re-test affected paths from a fresh runtime state after meaningful fixes.

## Continuation
Never end at “awaiting builder”, “planned”, or “build succeeded” if the next action is known. If a child agent fails, retry or choose a valid alternate path. Do not silently turn failure into completion.

## Quality gate
Use 1–10 scoring when a quality gate is appropriate, with category-specific evidence. Never average away a critical blocker. Final completion requires fresh evidence for meaningful player-facing behavior and no unresolved critical blocker.
