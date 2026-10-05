
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

Use Node.js 24 (see `.node-version`), Calcit **0.27.0**, and Yarn 4.18.0.

```bash
caps --strict --ci
yarn install --immutable
yarn compile
yarn dev
# Run checks and build production assets:
yarn check
yarn build
```

For a compiler watcher, run `calcit calcit.cirru js --watch` alongside `yarn dev`.

The application now uses nominal `Page`, `Content`, `Store`, and `Action` types, typed Reel state/history, and explicit DOM FFI contracts. `yarn check:typed` checks the updater and operation decoder with default strict diagnostics; `yarn check` also enforces the tightened per-definition quality baseline.

The full UI now compiles with ordinary Calcit diagnostics, without
`--compat-types`. The original quality baseline remains in force; remaining
type debt is documented in [migration details](docs/strict-types.md).

The runtime smoke test checks all 23 content pages, routing, closing cards, modifier clicks, empty-router handling, malformed actions, and typed history replay/hot reload.

### Deployment

Keep `calcit.cirru` and `deps.cirru`; the retired `compact.cirru` and
`package.cirru` must not be restored. `yarn build` uses relative asset paths
locally. Set `VITE_BASE_URL` to build JS, CSS and the bundled Buda font with
CDN URLs:

```sh
VITE_BASE_URL=https://cos-sh.tiye.me/jiyinyiyong/tiye.me/pr/68/local/1/ yarn build
```

CI uses that preview prefix for PRs and
`https://cos-sh.tiye.me/jiyinyiyong/tiye.me/` for main pushes. Only frontend
`dist/` is uploaded to COS; public verification lives in `cos-upload-action`
v1.2.0. Configure `COS_BUCKET`, `COS_SECRET_ID` and `COS_SECRET_KEY`.
Existing runtime tests and one production build remain enabled. Uploads use
the built artifact, queue separately from builds, and skip superseded commits.

The original server payload `dist/*` and destination
`rsync-user@tiye.me:/web-assets/repo/${{ github.repository }}` are unchanged.
External fonts, logos, page content
and background iframe URLs are preserved.

本轮仅精简部署配置，Calcit/procs 仍为正式 0.27.0，不把 COS 改造当作 0.28 升级完成。PR CDN 前缀包含编号/run/attempt，队列按 PR 隔离；生产 prefix 不变。安装器读取 `deps.cirru`，已有 toolchain 核验负责版本一致性。移除重复构建哈希比对及逐文件下载的生产校验（可由 Git 恢复），上传只使用 Action 自身的 `public-base-url` verify；不宣称这验证了服务器现场行为。原业务测试、严格入口、质量预算、HEAD 过期门禁及 rsync 同步保留，不新增脚本或进程管理工具。
