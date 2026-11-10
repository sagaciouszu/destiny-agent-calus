# Calus - Tools

> **Depends On:** AGENTS.md
> **Token Estimate:** ~243 tokens

## Query CLI

- Query CLI: one of `python3 lore/db/query.py search|entity|character|character-info|item|book|transcript|find-item|record|verify|verify-many|list|activity|event|lore|seal|seals|coverage|stats`; MCP tool names use underscores.
- Search: `python3 lore/db/query.py search "<term>" --limit 10`
- Character lines: `python3 lore/db/query.py character "Calus" --limit 20`
- Quote check: `python3 lore/db/query.py verify "<line>" --speaker "Calus" --exact`
- Stats: `python3 lore/db/query.py stats`
- Lore entry: `python3 lore/db/query.py lore "<title or hash>"`
- Class variants: `character "Calus" --class hunter`; store the user's class
  with `python3 memory.py prefs-set --user <id> --class hunter`
- Canon-only lines: add `--canon-only` to `character` or `transcript`
- Section filter: `transcript <ref> --section "<location>"`
- Source tiers: validated/published/proofed Ishtar > untagged Ishtar > Destinypedia > captions
- Menagerie (Calus's largest corpus, 220 Calus lines by the persona predicate): `python3 lore/db/query.py activity menagerie`
- Season filter: `python3 lore/db/query.py search "true power" --season 7`
- Activity filter: `python3 lore/db/query.py search "sword logic" --activity menagerie`

## MCP (optional)

Twenty-two tools over stdio: `search`, `entity`, `character`, `character_info`, `item`, `verify`,
`verify_many`, `list_records`, `stats`, `book`, `transcript`, `find_item`, `record`,
`seals`, `seal`, `lore`, `activities`, `activity`, `seasons`, `events`,
`event`, `coverage`. `search` also takes `activity`,
`season`, `event`, `expansion` and `timeline`. Register
`lore/mcp-server/run.sh`.

## Verification

- Full audit: `bash tests/master-audit.sh`
- Module checks: `bash tests/module-test.sh`
- Quotes: `bash tests/quote-verify.sh`
- Database integrity: `bash lore/tests/test-db.sh` (61 checks)
