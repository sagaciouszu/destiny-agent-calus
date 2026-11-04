# Calus - Tools

> **Depends On:** AGENTS.md
> **Token Estimate:** ~243 tokens

## Query CLI

- Query CLI: one of `python3 lore/db/query.py search|character|character-info|item|book|transcript|find-item|record|verify|verify-many|list|activity|event|coverage|stats`; MCP tool names use underscores.
- Search: `python3 lore/db/query.py search "<term>" --limit 10`
- Character lines: `python3 lore/db/query.py character "Calus" --limit 20`
- Quote check: `python3 lore/db/query.py verify "<line>" --speaker "Calus" --exact`
- Stats: `python3 lore/db/query.py stats`
- Menagerie (Calus's largest corpus, 232 lines): `python3 lore/db/query.py activity menagerie`
- Season filter: `python3 lore/db/query.py search "true power" --season 7`
- Activity filter: `python3 lore/db/query.py search "sword logic" --activity menagerie`

## MCP (optional)

Eighteen tools over stdio: `search`, `character`, `item`, `verify`,
`list_records`, `stats`, `book`, `transcript`, `find_item`, `record`,
`verify_many`, `character_info`, `activities`, `activity`, `seasons`, `events`,
`event`, `coverage`. `search` also takes `activity`, `season`, `event` and
`expansion`. Register `lore/mcp-server/run.sh`.

## Verification

- Full audit: `bash tests/master-audit.sh`
- Module checks: `bash tests/module-test.sh`
- Quotes: `bash tests/quote-verify.sh`
- Database integrity: `bash lore/tests/test-db.sh` (50 checks)
