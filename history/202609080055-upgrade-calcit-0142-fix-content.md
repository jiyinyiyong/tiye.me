# Calcit 0.14.2 and content interaction fixes

- Updated the compiler/runtime pin from 0.13.77 to 0.14.2 and refreshed released Calcit dependencies with `caps upgrade --all`.
- Fixed `load-as-code`: `parse-cirru` plus `&cirru-nth` returned a CirruQuote, leaving `site-map` as syntax. Opening the first card then failed in `get`. Parse the existing data file as Cirru EDN and emit executable value constructors with `&data-to-code`; validate the literal file path before reading it.
- Fixed closing cards by reading `:event` from the Respo event Map and unwrapping it before accessing native modifier keys.
- Fixed the container font family by using `ui/default-fonts` directly. The previous Map field access leaked an Option into CSS, causing later declarations (including positioning) to be ignored and putting card headers outside the viewport.
- Expanded the generated-runtime smoke test from an empty container to all 23 pages, real Reel updates, nested navigation, ordinary/modifier closes, unknown pages, empty-router handling, and generated container CSS.

## Compatibility scope

This is a compatibility upgrade, not a complete strict-type migration. Calcit 0.14 defaults to strict preprocessing; the app retains legacy Dynamic contracts and released Reel 0.6.19 still targets 0.13.77. During strict migration investigation, `reel.core/reel-updater` also reported `E_AMBIGUOUS_TRAIT_METHOD` for `.slice`. Build scripts and CI temporarily use the official `--compat-types` flag. The existing quality baseline is unchanged and remains enforced. Remove this flag after migrating contracts and checking the released dependencies in strict mode.

## Validation

- `caps --ci`, `yarn install --immutable`, `caps verify --toolchain` (Calcit and `@calcit/procs` both 0.14.2).
- `calcit edit format`, `yarn check`, `yarn build` using Node.js 24.4.1.
- Two production builds produced identical SHA-256 hashes for all four artifacts.
- Browser checks: open avatar, navigate to Calcit and Skills, close an individual card, Command-click to close all, Escape to return to the profile. No new browser console errors during final verification.
