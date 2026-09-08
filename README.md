
@jiyinyiyong's Home page
------

http://tiye.me

> Waiting to be refactored.

[Kuazu]: http://weibo.com/vvvvvhuahua
[leaf]: http://lxtvvv.tuchong.com/2159629/

### Schema

> `?x` 表示需要填入的某个内容.

Title:

```cirru
[] :title ?text
```

Text content:

```cirru
[] :text ?text
```

Links:

```cirru
[] :links ?list
```

Route:

```cirru
[] :route ?key ?title ?color
```

Url:

```cirru
[] :url ?address ?title ?color
```

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

This upgrade temporarily uses Calcit’s official `--compat-types` mode. The application has legacy Dynamic contracts, and the released Reel 0.6.19 dependency still declares Calcit 0.13.77; a strict migration also encounters an ambiguous `.slice` trait call inside `reel.core/reel-updater`. Remove the flag after migrating the application contracts and verifying a compatible dependency release. The existing quality baseline remains enforced.

The runtime smoke test checks all 23 content pages, routing, closing cards, modifier clicks, and empty-router handling.
