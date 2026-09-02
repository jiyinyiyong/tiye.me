# Distinguish local, CI, and deployed builds / 区分本地、CI 与线上部署

## Summary / 概要

- Pin the GitHub runner to Node.js 24.19.0 through `.node-version` so local reproduction can use the exact same Node patch release.
- 通过 `.node-version` 将 GitHub runner 固定到 Node.js 24.19.0，便于本地使用完全相同的 Node patch 版本复现。
- Print SHA-256 checksums for every production artifact after the CI build, making local and runner outputs directly comparable.
- CI 构建后输出全部生产产物的 SHA-256，便于直接比较本地与 runner 结果。
- Repeat the production build in a fresh Calcit process and fail CI if any artifact checksum changes.
- 使用新的 Calcit 进程重复生产构建；任一产物校验和发生变化时令 CI 失败。
- Keep PR validation separate from deployment: deployment and live verification continue to run only for pushes to `main`.
- 明确区分 PR 验证与部署：部署和线上校验仍只在推送到 `main` 时执行。
- After deployment, wait for the live index to match the workflow build and byte-compare every deployed file with `dist`.
- 部署后等待线上 index 与本次 workflow 构建一致，并逐个字节比较线上文件与 `dist`。
- Replace the `parse-cirru-edn` plus `&data-to-code` macro path with direct `parse-cirru` source-AST expansion. The former randomized Map entry order across processes; the latter preserves the checked-in source order.
- 将宏中的 `parse-cirru-edn` 加 `&data-to-code` 路径改为直接展开 `parse-cirru` 源码 AST。前者会让 Map 条目顺序跨进程随机，后者保留已提交源码的顺序。
- Repeated identical builds now produce identical `app.schema.mjs` and `dist` checksums. The underlying compiler behavior is tracked in calcit-lang/calcit#599.
- 现在连续执行相同构建会得到一致的 `app.schema.mjs` 与 `dist` 校验和；底层编译器行为由 calcit-lang/calcit#599 跟踪。

## Motivation / 动机

The previously observed live site still served the 2026-08-24 artifact while PR #59 only performed a non-deploying build. A green PR check therefore proves compilation, not production deployment. The new provenance and post-deploy gate make this distinction explicit.

此前观察到线上站点仍提供 2026-08-24 的产物，而 PR #59 只执行不部署的构建。因此 PR 绿色只证明编译成功，不证明线上部署成功；新的 provenance 与部署后 gate 会明确区分两者。
