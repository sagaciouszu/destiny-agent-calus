# Calus - Agent

> **Depends On:** AGENTS.md
> **Token Estimate:** ~0.5K tokens

**Version:** 0.1.0 | **Last updated:** 2026-11-04 | **Status:** Ready

Calus is an independent Destiny character agent built on the shared Destiny
Agent Grimoire: one canonical SQLite archive, one verified quote policy, many
distinct personas.

## Quick start for Guardians

```bash
git clone <this-repo> destiny-agent-calus
cd destiny-agent-calus
./setup.sh                      # link or clone the grimoire and get the database
bash tests/master-audit.sh      # local suites + shared gates
```

## Requirements

- Python 3.10+
- `git`
- The shared grimoire database (`lore/db/grimoire.db`), acquired by `setup.sh`
- Optional: the MCP virtualenv (`./setup.sh --mcp`)

## For agents

- **OpenCode:** `lore/scripts/sync-live-agents.sh` installs `calus.md`, keeps
  companions inert under `calus/`, and generates a read-only `calus-consult`
  subagent.
- **OpenClaw:** `lore/scripts/sync-live-agents.sh --openclaw` writes
  `~/.openclaw/workspace-calus` and the series block.
- **Generic runtime:** point it at `AGENTS.md` and `INDEX.md`.
- **MCP:** install `./setup.sh --mcp`; run `lore/mcp-server/run.sh`.
- **Canon:** query `lore/db/query.py`; verify every quoted line with
  `verify --speaker Calus --exact`.

## Repository layout

```text
calus.md              # entry and system prompt
calus-core.md         # consolidated identity and canon
calus-voice.md        # voice calibration
SOUL.md               # one-page essence
AGENTS.md             # operating program
INDEX.md              # module map
TOOLS.md              # CLI and MCP interfaces
core/                 # arcs, fears, relationships, guardrails, memory
voice/                # court, war, grief, menace and related registers
world/                # Cabal, Leviathan, Hive, Witness
reference/            # canon brief, quotes, cross-reference, analysis
tests/                # master audit and persona tests
```

## Verification

| Suite | Command | Expected |
|---|---|---|
| Full agent audit | `bash tests/master-audit.sh` | 15/15 |
| Module completeness | `bash tests/module-test.sh` | 0 failed |
| Quote verification | `bash tests/quote-verify.sh` | 0 unverified |
| Connection | `bash tests/connection-test.sh` | 0 failed |
| Multi-turn | `bash tests/multiturn-test.sh` | 8/8 |
| Scenarios | `bash tests/scenario-simulator.sh` | 5/5 |
| Database integrity | `bash lore/tests/test-db.sh` | 51 checks |
| Query interface | `bash lore/tests/query-interface-test.sh` | 89 checks |
| MCP contract | `lore/mcp-server/.venv/bin/python lore/tests/mcp-test.py` | 8/8 |
| File conformance | `python3 lore/tests/conformance.py` | PASS |

## Troubleshooting

- **`lore/` missing:** run `./setup.sh`.
- **Dangling `lore/` symlink:** `setup.sh` recreates it.
- **No canon:** verify `lore/db/grimoire.db` exists.
- **Voice drift:** run `tests/voice-consistency.sh` and `tests/golden-voice-test.sh`.
- **Stale persona counts:** run `python3 lore/tests/persona-freshness.py persona.json lore/db/grimoire.db`.

## License and attribution

MIT licensed. Fan-made. Not affiliated with or endorsed by Bungie.
Destiny lore, text, characters and art belong to Bungie.
