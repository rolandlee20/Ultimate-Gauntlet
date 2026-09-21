# Codex Model Routing

## Shipped default

Main session: `gpt-5.6-terra`

Default spawned agents: `gpt-5.6-terra`

Roles are separated primarily by task instructions and evidence boundaries. The pack intentionally reuses the same strong Free/Go-friendly Codex model across many roles rather than assigning arbitrary weaker models.

## Change the main/default subagent model

Edit `.codex/config.toml`:

```toml
model = "your-model-id"

[agents]
default_subagent_model = "your-model-id"
```

## Change one role

Add a model override to the role file, for example `.codex/agents/evidence-referee.toml`:

```toml
model = "your-model-id"
model_reasoning_effort = "high"
```

## Plan/entitlement note

OpenAI documents GPT-5.6 Terra as available in Codex for Free and Go users as of this release. That is a ChatGPT-authenticated Codex entitlement, not free API access. Always verify the current model picker and plan limits before changing or publishing a routing table.
