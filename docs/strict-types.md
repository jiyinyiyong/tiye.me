# Calcit strict-type migration

## Current status — Calcit 0.30.1-alpha.4

The full application passes ordinary `--check-only` and JavaScript codegen
without `--compat-types`, as well as the original typed updater/decoder check.
CLI and npm runtime are actually paired, with exact formal module releases
Reel 0.6.39 / Respo 0.16.122 / UI 0.7.41 / Feather 0.4.29 / js-ffi 0.2.3.
The full strict workflow now passes; the old stable 0.30.0 SSR blocker is not
misrepresented as fixed on that older compiler. Fresh Caps acceptance is left
to the exact PR CI; local verification uses readonly exact-tag sources.

Migration changes include direct Option/Store constructors, typed DOM mount
lookup, the actual published Respo event Map/native modifier boundary, and an explicit content-list type
where an empty fallback previously erased the generic relation. The existing
23-page runtime smoke test remains; no additional test suite is introduced.

The original quality baseline is retained, with only the six unsafe per-definition
limits and total unsafe limit tightened to zero. Other budgets are not increased.
Current metrics: typeNone 0, typeNotFull 7, schemaDynamic 2, unresolved 9,
unsafeCoerce 0, codeNil 7;
codeDynamic, deprecatedCalls and declaredOptional are zero. This is not a
zero-debt claim.

The sections below record the earlier 0.14 migration and its former blockers.

## Completed

- `app.schema`: nominal `Page`, recursive `Content`, `Store`, and `Action`; checked content decoding; explicit anonymous Respo operation decoding into nominal actions.
- `app.updater`: typed state transitions with `Option<Number>` route insertion; direct typed list insertion rather than originless method dispatch.
- `app.main`: `reel.typed/State<Action, Store>` for recording, controls, and hot reload. `reel.typed-compat/view-data` is limited to the existing developer UI.
- `app.comp.container`: structured component schemas, explicit `Component` effects/tree, and typed content matching.
- `app.browser`: existing DOM/style traits with shallow `js-cast` checks for effects, the existing keyboard-event adapter, checked host modifier fields and nullable GPU presence. No application-level unsafe remains; this does not prove deep host member values or method results.
- `app.style`: homogeneous `Map<Tag, String>` CSS values, preserving the existing UI preset values and explicit units. These small local presets avoid heterogeneous legacy UI maps at merge sites.

`yarn check:typed` remains a focused updater/decoder command. The main CI check now
checks all definitions and the complete strict workflow, plus current deprecated-call
analysis and the original quality gate. The deprecated quality compatibility entry
is deliberately retained until its budget policy can be retired without losing a
real gate; this migration adds no replacement checker or budget waiver.

## Former 0.14 blockers (resolved for the current published stack)

Run `calcit calcit.cirru --check-only` to reproduce the first full-graph failure: `E_AMBIGUOUS_TRAIT_METHOD` on `.map` in `reel.typed-compat/view-data` (Reel 0.6.19).

Checking the card independently with `calcit calcit.cirru --check-only --init-fn app.comp.container/comp-card --reload-fn app.schema/normalize-action` reaches further but reports nine dependency diagnostics: generic callback compatibility in Respo helpers/core, plus untyped JS access in Feather. The released dependencies need compatible contracts/dispatch before the full build can drop `--compat-types`.

Local remaining debt includes legacy config/SSR maps, the raw mount target, hot-reload return type, Respo event/state boundaries, and spacing APIs accepting nil. The zero-debt `--strict-types` gate is a later milestone beyond default strict diagnostics.

## Historical budget review (before 0.30.1)

The per-definition baseline was regenerated after reviewing the moved browser boundaries. It removes obsolete broad contracts and budgets only the remaining definitions; it is not a blanket increase.

| Metric | Before | After |
| --- | ---: | ---: |
| typeNone | 29 | 1 |
| typeNotFull | 31 | 8 |
| schemaDynamic | 35 | 4 |
| unresolved | 42 | 11 |
| unsafeCoerce | 9 | 6 |
| codeNil | 8 | 7 |

`codeDynamic`, `deprecatedCalls`, and `declaredOptional` remain zero.

## Validation

`yarn check` validates all definitions, complete strict, deprecated APIs and the
tightened original quality budget. `yarn build` compiles and
executes the existing generated-JS regression suite before bundling. It covers
all 23 pages, navigation, modifiers, empty routes, malformed operations, history
recall/resume/reset and hot-reload replay. This script uses host stubs and HTML
rendering; it does not prove real-browser DOM effects or screenshot fidelity.
