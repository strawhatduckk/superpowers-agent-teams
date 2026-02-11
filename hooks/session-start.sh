#!/usr/bin/env bash
# SessionStart hook for superpowers-t (Agent Teams) plugin

set -euo pipefail

# Escape string for JSON embedding
escape_for_json() {
    local s="$1"
    s="${s//\\/\\\\}"
    s="${s//\"/\\\"}"
    s="${s//$'\n'/\\n}"
    s="${s//$'\r'/\\r}"
    s="${s//$'\t'/\\t}"
    printf '%s' "$s"
}

intro="You have Agent Teams superpowers (superpowers-t plugin).\\n\\nThree additional skills are available for orchestrating Claude Code Agent Teams (requires CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1):\\n\\n- **superpowers-t:agent-team-driven-development** - Execute implementation plans with persistent implementer + two-stage review team\\n- **superpowers-t:dispatching-agent-teams** - Parallel teammates with cross-communication for independent problems\\n- **superpowers-t:agent-team-code-review** - Persistent reviewer teammate with accumulated context\\n\\nThese are Agent Teams alternatives to the subagent-based skills in superpowers. Use the Skill tool to invoke them."

# Output context injection as JSON
cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "${intro}"
  }
}
EOF

exit 0
