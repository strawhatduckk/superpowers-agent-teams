# Superpowers-T

A standalone skills library for Claude Code with Agent Teams support. Forked from [obra/superpowers](https://github.com/obra/superpowers).

Includes all core superpowers skills (TDD, debugging, code review, planning, etc.) plus 3 Agent Teams skills for persistent teammate orchestration.

## Agent Teams Skills

**Requires:** `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`

- **agent-team-driven-development** — Persistent implementer + two-stage review team with accumulated context across tasks
- **dispatching-agent-teams** — Parallel teammates with cross-communication for overlapping concerns
- **agent-team-code-review** — Persistent reviewer teammate that retains context across reviews

## Core Skills (from superpowers)

- **brainstorming** — Explore ideas and design before implementation
- **writing-plans** — Create detailed implementation plans
- **executing-plans** — Execute plans in parallel sessions with checkpoints
- **subagent-driven-development** — Fresh subagent per task with two-stage review
- **dispatching-parallel-agents** — Parallel subagents for independent problems
- **requesting-code-review** / **receiving-code-review** — Code review workflows
- **test-driven-development** — TDD discipline (RED-GREEN-REFACTOR)
- **systematic-debugging** — Root cause analysis before fixes
- **using-git-worktrees** — Isolated workspaces for feature work
- **verification-before-completion** — Evidence before claims
- **finishing-a-development-branch** — Merge, PR, or cleanup options
- **writing-skills** — Create and edit skills

## Installation

```bash
/plugin install strawhatduckk/superpowers-agent-teams
```

### Enable Agent Teams (optional)

Add to your settings.json or set as environment variable:

```json
{
  "env": {
    "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1"
  }
}
```

## License

MIT License — forked from [obra/superpowers](https://github.com/obra/superpowers)
