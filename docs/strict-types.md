# Calcit strict-type migration

## Current status — Calcit 0.27.0

The full application passes ordinary `--check-only` and JavaScript codegen
without `--compat-types`, as well as the original typed updater/decoder check.
Strict Caps resolves the published Reel/Respo/UI/Feather/js-ffi stack. All
56 local public definitions pass the browser-target check and the strict-v1
source workflow has no remaining source suggestions.

Migration changes include direct Option/Store constructors, typed DOM mount
lookup, the actual published Respo event Map/native modifier boundary, and an explicit content-list type
where an empty fallback previously erased the generic relation. The existing
23-page runtime smoke test remains; no additional test suite is introduced.

The original quality baseline is unchanged. Current metrics: typeNone 0,
typeNotFull 7, schemaDynamic 2, unresolved 9, unsafeCoerce 6, codeNil 7;
codeDynamic, deprecatedCalls and declaredOptional are zero. This is not a
zero-debt claim.

The sections below record the earlier 0.14 migration and its former blockers.

## Completed

- `app.schema`: nominal `Page`, recursive `Content`, `Store`, and `Action`; checked content decoding; explicit anonymous Respo operation decoding into nominal actions.
- `app.updater`: typed state transitions with `Option<Number>` route insertion; direct typed list insertion rather than originless method dispatch.
- `app.main`: `reel.typed/State<Action, Store>` for recording, controls, and hot reload. `reel.typed-compat/view-data` is limited to the existing developer UI.
- `app.comp.container`: structured component schemas, explicit `Component` effects/tree, and typed content matching.
- `app.browser`: explicit DOM/style host traits and six trusted host coercions for mount elements, native events, and navigator. They do not coerce application data.
- `app.style`: homogeneous `Map<Tag, String>` CSS values, preserving the existing UI preset values and explicit units. These small local presets avoid heterogeneous legacy UI maps at merge sites.

`yarn check:typed` checks updater + operation decoder without compatibility mode, including their reachable dependencies. It is enforced by CI and does not imply the entire UI graph passes strict checks.

## Former 0.14 blockers (resolved for the current published stack)

Run `calcit calcit.cirru --check-only` to reproduce the first full-graph failure: `E_AMBIGUOUS_TRAIT_METHOD` on `.map` in `reel.typed-compat/view-data` (Reel 0.6.19).

Checking the card independently with `calcit calcit.cirru --check-only --init-fn app.comp.container/comp-card --reload-fn app.schema/normalize-action` reaches further but reports nine dependency diagnostics: generic callback compatibility in Respo helpers/core, plus untyped JS access in Feather. The released dependencies need compatible contracts/dispatch before the full build can drop `--compat-types`.

Local remaining debt includes legacy config/SSR maps, the raw mount target, hot-reload return type, Respo event/state boundaries, and spacing APIs accepting nil. The zero-debt `--strict-types` gate is a later milestone beyond default strict diagnostics.

## Reviewed quality budget

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

`yarn check` validates typed state contracts, ordinary full-app compilation,
deprecated APIs and the original quality budget. `yarn build` compiles and
executes the existing generated-JS regression suite before bundling. It covers
all 23 pages, navigation, modifiers, empty routes, malformed operations, history
recall/resume/reset and hot-reload replay. This script uses host stubs and HTML
rendering; it does not prove real-browser DOM effects or screenshot fidelity.
