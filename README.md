
@jiyinyiyong's Home page
------

http://tiye.me

> Waiting to be refactored.

### 使用者影响

开发使用正式 Calcit 与 `@calcit/procs` **0.42.1** 和 Reel **0.11.0**。升级后重新安装依赖并构建。首页、卡片导航与页面 HUD 保持原用法。页面直接派发具名 `Action`，Reel 快捷键走独立的具名 `Control` 回调，两路通过 `ResolvedAction` union 进入各自的分支。独立 SSR 辅助函数可以在 Node 中处理构建后的 HTML，服务器渲染以 480 像素作为卡片初始宽度，浏览器继续按视口计算。

### 0.34.2 迁移记录

开发与 CI 配对升级为正式 Calcit / `@calcit/procs` **0.34.2**，需重新严格安装模块并生成 JS、刷新页面。正式依赖为 Reel 0.9.0、Feather 0.6.0、UI 0.14.1、Respo 0.19.2、JS-FFI 0.2.10，传递 Router 0.11.2，不混装旧模块图。此迁移不合并或生产部署。

原内容、卡片路由、修饰键关闭、Escape 删除首张卡片、HUD 和部署路径保留。回调改用真实 RespoEvent，五处单方向间距使用 space-x / space-y，开发面板的可选子节点使用 Option；浏览器、SSR 和原 HTML 回归的组件构建与渲染位于同一个 managed memo frame。

派发入口仍检查匿名 Enum；通过原 decoder 后，`ResolvedAction = Action | reel.typed/Control` 明确区分业务操作和历史控制，由穷尽 match 更新 Reel。卡片回调有具体参数/返回合同，配置为真实 `Map<Tag,String>`。原 57 个定义均保留，新增 union 和两个内部派发函数。原质量基线不变，unsafe 仍为 0；同一 0.34.2 正式依赖图下，schemaDynamic 2→1、unresolved 9→3、codeNil 7→2。

本地完整 strict、270 个定义、原 23 页运行回归、严格依赖/工具链配对、immutable 安装和构建通过。独立 Chrome 验证首页、Calcit 卡片导航、Escape、实际 Meta 关闭、Reel Reset 及刷新后导航，无页面异常；未复验所有页面的外链或 HMR。单包超过 500 kB 的原构建提示保留。原工作流仅通过 action 内置 verify 上传独立 PR 前端预览；不修改生产路径。

[Kuazu]: http://weibo.com/vvvvvhuahua
[leaf]: http://lxtvvv.tuchong.com/2159629/

### Content schema

`data/meta.cirru` contains a map from page tags to nominal `Page` values. Each page has a string title and a list of `Content` variants:

```cirru-edn
{}
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

Use Node.js 24 (see `.node-version`), formal Calcit **0.42.1**, matching
`@calcit/procs` **0.42.1**, and Yarn 4.18.0.

```bash
caps --strict --ci
yarn install --immutable
yarn compile
yarn dev
# Run checks and build production assets:
yarn check
yarn build
```

For a compiler watcher, run `calcit calcit.cirru -w` alongside `yarn dev`.

The application uses nominal `Page`, `Content`, `Store`, and `Action` types,
typed Reel state/history and explicit DOM FFI contracts. `yarn check:typed`
checks the updater and named dispatch. `yarn check` checks all definitions,
the complete strict workflow and deprecated calls. `yarn check:weak-types`
requires full coverage and permits one `data-dynamic` field on `Store` for the
persisted state tree. Other findings covered by this check have a zero budget.

The full UI compiles with ordinary Calcit diagnostics, without
`--compat-types`. Remaining
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

此前 COS 改造仅精简部署配置，当时 Calcit/procs 仍为正式 0.27.0，不把 COS 改造当作 0.28 升级完成。PR CDN 前缀包含编号/run/attempt，队列按 PR 隔离；生产 prefix 不变。安装器读取 `deps.cirru`，已有 toolchain 核验负责版本一致性。移除重复构建哈希比对及逐文件下载的生产校验（可由 Git 恢复），上传只使用 Action 自身的 `public-base-url` verify；不宣称这验证了服务器现场行为。原业务测试、严格入口、质量预算、HEAD 过期门禁及 rsync 同步保留，不新增脚本或进程管理工具。

### 历史：正式 0.30.1 配对迁移

CLI / runtime 精确配对 0.30.1；模块使用正式 Reel 0.6.41、Feather 0.4.30、
UI 0.8.0、Respo 0.16.124、js-ffi 0.2.5 和传递 Router 0.8.37，不用 hash/main。
仍使用稳定 Calcit 0.30.0 的消费者不能混装这套图。此前 SSR attrs 问题
[Respo #274](https://github.com/Respo/respo.calcit/issues/274) 已在本配对下不再阻塞
完整 strict；这不宣称原 0.30.0 图已修好。

本轮将 8 处已知 `Map<Tag,String>` 样式合并改为接收者 `.merge`，DOM mount
查询的 Option 改用 `.unwrap`，卡片缺失判断改用 `.none?`。原 23 页测试只同步到名义 Option 构造及当前
公开 API，不减输入或断言。`bottom-tip` 在 `reload!` 中的成功/失败页面展示保留，
不改成 `raise`。全部类型、数据模型和原质量预算不变；unsafe 上限仍为 0。

保留原主页内容、路由、COS 前缀与服务器路径。源码使用公开 get/Option、当前
Ref/watch、受检状态树与事件 Map、具名 RenderNode，以及 SSR Reel 的实际字段
解码。原 23 页回归断言不减；测试读取只迁移到公开 get/Option，并修正 JS
Array.map 会额外传参给 Calcit 回调的问题。

6 处应用层 unsafe 被替换：动画使用已有 Element trait 的 `js-cast` 浅层成员检查，
Escape 使用现有 keyboard-event-host，关闭修饰键使用现有 object-field / Bool 检查，
GPU 仍仅检查 nullable 属性存在性，不把缺少 GPU 当成错误。合法宿主行为不变，
无效替身会更早失败；成员形状不证明深层 CSS 值或宿主方法的返回合同。
旧质量预算逐定义与总 unsafe 上限均收紧到 0，其他预算不变；不新增检查脚本。
