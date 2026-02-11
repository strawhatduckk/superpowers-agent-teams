# Superpowers-T (Agent Teams)

Agent Teams addon for [Superpowers](https://github.com/obra/superpowers). Adds 3 skills that adapt subagent workflows to use Claude Code's experimental Agent Teams feature — persistent teammates with independent context windows, cross-communication, and delegate mode.

**Requires:** `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`

**Companion to:** The original [superpowers](https://github.com/obra/superpowers) plugin (install both).

## Skills

- **agent-team-driven-development** — Persistent implementer + two-stage review team with accumulated context across tasks. Alternative to `subagent-driven-development`.
- **dispatching-agent-teams** — Parallel teammates with cross-communication for overlapping concerns. Alternative to `dispatching-parallel-agents`.
- **agent-team-code-review** — Persistent reviewer teammate that retains context across reviews. Alternative to `requesting-code-review`.

## Installation

### Local Install

```bash
# In Claude Code, install from local path:
/plugin install /path/to/superpowers-agent-teams
```

### Enable Agent Teams

Add to your settings.json or set as environment variable:

```json
{
  "env": {
    "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1"
  }
}
```

## How It Works

These skills replace ephemeral Task tool subagents with persistent Agent Teams teammates:

| Aspect | Superpowers (subagents) | Superpowers-T (Agent Teams) |
|--------|------------------------|-----------------------------|
| Lifecycle | Fresh per task | Persistent across all tasks |
| Context | Clean slate each time | Accumulated understanding |
| Communication | Dispatch/return | Bidirectional messaging |
| Lead role | Active controller | Delegate mode coordinator |
| Review quality | No prior context | Remembers earlier patterns |

The core principles from superpowers are preserved: two-stage review (spec first, then quality), TDD, evidence before claims, YAGNI.

## License

MIT License — forked from [obra/superpowers](https://github.com/obra/superpowers)
