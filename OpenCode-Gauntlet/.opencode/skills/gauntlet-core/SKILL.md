---
description: Core guidance for running the evidence-gated Gauntlet loop.
---

# Gauntlet Core

Use this skill when operating the project through `/gauntlet`, `/swarm`, or `/release-gate`.

Keep the loop evidence-driven:

INSPECT → PLAN → IMPLEMENT → BUILD/RUN → USER TEST → EVIDENCE → REVIEW → FIX → REPLAY.

Do not claim unavailable tool use. Do not treat code existence as runtime proof. Invalidate affected evidence after meaningful user-facing changes.
