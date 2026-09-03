# 增加生成代码运行时 smoke / Add generated-code runtime smoke

- 在两次生产构建中直接导入生成的 `app.comp.container.mjs` 并调用 `comp-container`。
- 使用空 reel 覆盖 `get` → `Option.unwrap-or` 路径，防止再次生成 `get(...)(invoke-method ...)` 形式的二次调用。
- 该检查补充静态类型和构建确定性门禁：构建成功但启动即抛出 `TypeError` 时，CI 会直接失败。
