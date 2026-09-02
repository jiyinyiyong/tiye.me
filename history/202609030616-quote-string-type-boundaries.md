# Quote String type boundaries / 统一 String 类型边界写法

## Summary / 概要

- Addressed the PR review by changing both new `unsafe-coerce` target types from bare `String` to the canonical quoted type symbol `'String`.
- 根据 PR review，将两处新增 `unsafe-coerce` 的目标类型从裸 `String` 改为规范的 quoted type symbol `'String`。
- Kept the browser event key and macro file path as explicit trusted boundaries without changing the strict macro contract.
- 保留浏览器事件 key 与宏文件路径的显式可信边界，同时不改变严格宏 contract。

## Validation / 验证

- `calcit calcit.cirru edit format`
- `calcit calcit.cirru --check-only`
- `calcit calcit.cirru analyze deprecated`
- `calcit calcit.cirru analyze quality --baseline config/calcit-quality.cirru`
- `calcit calcit.cirru js`
- Node.js 24 + `yarn vite build --base=./`
