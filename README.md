# 三国杀卡牌（Three Kingdoms Card Game）— Qoder 1.29（备份/发布线）

本仓库为 1.29 备份/发布线，与主线 `Qoder/2.0` 相互独立、不共享提交历史；活跃开发在 2.0 仓库进行。本仓库无 CI 工作流，远程仅作代码托管与异地备份。

## Git 远程与推送

```
origin -> https://github.com/DJXD248/three-kingdoms-1.29   （private，非公开）
```

本开发机直连 `github.com:443` 会超时，需经本机代理 `127.0.0.1:10808`（与系统代理一致）。已为本仓库写入 Git 配置：

```bash
git config http.proxy http://127.0.0.1:10808
git config https.proxy http://127.0.0.1:10808
```

- 临时不走代理：`git -c http.proxy= -c https.proxy= push origin master`
- 代理软件未开启时如直连可用亦可推送；gh CLI 需带 `HTTPS_PROXY=http://127.0.0.1:10808`。

## 验证命令

```bash
npm install --include=optional --ignore-scripts
npm run check && npm run build
```

## 项目文档

- `PROJECT_HANDOFF.md` — 当前状态快照
- `PROJECT_HISTORY_AI.md` / `PROJECT_HISTORY_HUMAN.md` — 历史迭代记录
