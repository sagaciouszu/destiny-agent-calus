# v0.1.9 - Truth and onboarding pass

> **Depends On:** INDEX.md
> **Token Estimate:** ~152 tokens
**2026-11-10**

## What's Changed

- AGENTS and TOOLS now match the v0.1.8 baseline: classification confidence, discovery filters, a runnable verify command and the caption caveat for `--canon-only`.
- The Menagerie corpus note is retained.
- The connection check now runs persona freshness.
- Adopts the shared setup.sh: `--mcp`/`--no-mcp`, BOOTSTRAP, curl fallback, guarded checksum and private memory permissions.

## Verification

- `bash tests/master-audit.sh`: 20/20.
- `python3 tests/persona-freshness.py`: rc 0.
- `python3 lore/tests/conformance.py`: PASS.
