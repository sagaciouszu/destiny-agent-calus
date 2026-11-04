#!/bin/bash
# Starter response validator. Replace with persona-specific rules.
set -u
TEXT="${1:-}"
[ -n "$TEXT" ] || exit 1
case "$TEXT" in
    *"as an AI"*|*"as a language model"*) exit 1 ;;
esac
exit 0
