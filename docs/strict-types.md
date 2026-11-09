# Calcit strict-type migration

## Calcit 0.38.0

The page emits nominal `Action` values. The Reel panel and keyboard shortcut
send nominal `Control` values through a separate callback. Both reach
`ResolvedAction`, which keeps application history separate from replay controls.
The DOM animation callbacks accept Respo elements, and the Escape handler
accepts a browser event. The real bottom-tip HUD still handles reload messages.

## Historical candidate — Calcit 0.34.2

The CLI/runtime pair is 0.34.2 with formal Reel 0.9.0, Feather 0.6.0,
UI 0.14.1, Respo 0.19.2, JS-FFI 0.2.10 and transitive Router 0.11.2.
The original 57 definitions are retained. Formatting migrates declaration
names and decoder targets through the official CLI.

The anonymous Enum dispatch boundary remains checked by the existing decoders.
Their result is the genuine nominal `ResolvedAction = Action | reel.typed/Control`
union; the internal update function matches both members exhaustively. Content,
Store, accepted operations and history semantics remain unchanged. Existing
card callbacks now declare their complete argument and Unit result contracts;
Respo handlers consume RespoEvent, including the native modifier event.
The configuration Map contains only strings. No unsafe coercion is introduced.

Five directional spacers replace the old nil dimension API. The developer panel
uses an Option child. Browser root rendering, SSR and the existing HTML test harness construct and
render the tree inside the same managed memo frame. The test inputs and assertions
are unchanged. The real bottom-tip success/error HUD is retained.

Full strict, all 270 definitions, focused updater/decoder check, the original
23-page generated-JS regression and build pass locally. The unchanged legacy
quality baseline passes: schemaDynamic 1, unresolved 3, typeNone 0,
typeNotFull 5, codeNil 2, unsafeCoerce/deprecatedCalls/codeDynamic 0.
Before source changes, the same new toolchain/dependency graph reported
schemaDynamic 2, unresolved 9 and codeNil 7. This is not a zero-debt claim.
The original quality command remains supported in 0.34.2 despite its deprecation;
no baseline entry or CI gate is waived. The two remaining nil values and broad
metadata map are in the unchanged legacy SSR `base-info` definition.

Independent Chrome acceptance covers home and Calcit navigation, Escape removing
the first card, normal/Meta close, actual Reel control dispatch and refresh.
The original card layout transition must finish before clicking a moving button.
All checks use the original data; no clipboard, credentials or stored user data
are touched. PR CI/COS preview is verified separately; no production deployment
is authorized by this migration.

## Historical status — formal Calcit 0.30.1

The full application passes ordinary `--check-only` and JavaScript codegen
without `--compat-types`, as well as the original typed updater/decoder check.
CLI and npm runtime are actually paired, with exact formal module releases
Reel 0.6.41 / Respo 0.16.124 / UI 0.8.0 / Feather 0.4.30 / js-ffi 0.2.5.
The full strict workflow now passes; the old stable 0.30.0 SSR blocker is not
misrepresented as fixed on that older compiler. Fresh Caps acceptance is left
to the exact PR CI. Snapshot edits are a reviewed, atomic official Linux
0.30.1 transaction; local CLI access is read-only.

This formal follow-up migrates eight known homogeneous style Map merges and
one DOM query Option unwrap and one card Option predicate to receiver methods. All 58 definitions, their
schemas and metadata remain; the original page assertions and legacy quality
budgets are retained. The real `bottom-tip` success/error UI remains in
`reload!`; it is not replaced by `raise`.

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
all 23 pages, navigation, modifiers, empty routes, history
recall/resume/reset and hot-reload replay. This script uses host stubs and HTML
rendering; it does not prove real-browser DOM effects or screenshot fidelity.
