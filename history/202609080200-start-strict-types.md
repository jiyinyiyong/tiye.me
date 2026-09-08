# Start strict-type migration

Follow-up to PR #61: migrate page/content/store/action data to nominal types, switch state/history to reel.typed, and introduce explicit browser contracts and string-valued CSS presets. The state layer has a strict CI check; the UI still needs compatibility mode because of released Reel/Respo/Feather diagnostics.

See docs/strict-types.md for reproducible blockers, reviewed quality metrics, and remaining work. Runtime regressions now include invalid action rejection and typed history replay.
