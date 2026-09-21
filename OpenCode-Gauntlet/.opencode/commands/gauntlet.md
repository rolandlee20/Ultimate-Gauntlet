---
description: Run the full evidence-gated project gauntlet
agent: gauntlet-orchestrator
subagent: false
---

Read `PROMPT.md` first and treat it as the mission brief. Execute the installed Gauntlet end-to-end.

Do not recreate the Gauntlet. Do not end on an intermediate waiting state.

Required sequence:

INSPECT → GOAL → PLAN/REVIEW SWARM → SYNTHESIZE → IMPLEMENT → BUILD/RUN → NATURAL-USER TEST → FRESH EVIDENCE → VALIDATION SWARM → EVIDENCE REFEREE → DIAGNOSE → FIX → REPLAY → FRESH RE-JUDGE → REPEAT.

Use connected MCPs/tools only when actually available.

Implementation children are synchronization barriers: wait for their result before build/test/judging. Review and planning may be parallel when independent.

Do not claim completion without current evidence and the final gate.

$ARGUMENTS
