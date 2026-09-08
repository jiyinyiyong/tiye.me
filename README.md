
@jiyinyiyong's Home page
------

http://tiye.me

> Waiting to be refactored.

[Kuazu]: http://weibo.com/vvvvvhuahua
[leaf]: http://lxtvvv.tuchong.com/2159629/

### Content schema

`data/meta.cirru` contains a map from page tags to nominal `Page` values. Each page has a string title and a list of `Content` variants:

```cirru
:home $ %{} :Page (:title |Home)
  :content $ []
    %:: :Content :text |Welcome
    %:: :Content :links $ []
      %:: :Content :route :calcit |Calcit
      %:: :Content :url |https://calcit-lang.org |Website
```

Other variants are `:title String`, `:html String`, `:xigua String`, and `:image String String` (URL and alt text). The loader validates the file against `Map<Tag, Page>` and preserves nominal content types.

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### Local development

Use Node.js 24 (see `.node-version`), Calcit **0.14.2**, and Yarn 4.12.0.

```bash
caps --ci
yarn install --immutable
yarn compile
yarn dev
# Run checks and build production assets:
yarn check
yarn build
```

For a compiler watcher, run `calcit calcit.cirru --compat-types js --watch` alongside `yarn dev`.

The application now uses nominal `Page`, `Content`, `Store`, and `Action` types, typed Reel state/history, and explicit DOM FFI contracts. `yarn check:typed` checks the updater and operation decoder with default strict diagnostics; `yarn check` also enforces the tightened per-definition quality baseline.

The full UI build temporarily retains `--compat-types`: Reel 0.6.19's `reel.typed-compat/view-data` triggers `E_AMBIGUOUS_TRAIT_METHOD` for `.map`, and the UI dependency graph has additional strict generic/FFI diagnostics. See [migration details](docs/strict-types.md) for reproducible checks and remaining work. Removing the flag is a separate milestone, not completed by this migration.

The runtime smoke test checks all 23 content pages, routing, closing cards, modifier clicks, empty-router handling, malformed actions, and typed history replay/hot reload.
