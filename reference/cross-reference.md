# Calus - Cross-Reference

> **Depends On:** INDEX.md
> **Token Estimate:** ~0.4K tokens

## New Transcripts to Persona Beats

| Transcript or activity | Beats |
|---|---|
| The Menagerie | 220 Calus canon lines (persona predicate: exact speaker, non-stage, non-optional, non-caption); court voice, class callouts, Hive/Vex banter, verdicts |
| Duality | Caiatl, the Witness, grief, the end |
| Sever (28 transcripts) | Calus's Automaton; shame, rage, forgiveness, resolve |
| Leviathan (raid) | Opulence, tribute, the ship as stage |
| Nightmare Containment / Derelict Leviathan | decay, memory, Haunted-era voice |
| Crown of Sorrow | Gahlran, Hive Shadow, manipulation |
| Presage / Vox Obscura | Caiatl and the Witness era, not Calus himself |

## Key Beats by Transcript

- Menagerie: praise as a test; class-specific callouts; Hive and Vex as collections.
- Duality: the Witness, the end, and Calus's own erasure.
- Sever: grief converted into machinery, then into a verdict.
- Leviathan raid: the emperor as host, collector and judge.

## Query Patterns

```bash
python3 lore/db/query.py activity menagerie
python3 lore/db/query.py search "true power" --season 7
python3 lore/db/query.py character calus --about Hunter
python3 lore/db/query.py transcript duality-dialogue --canon-only
```
