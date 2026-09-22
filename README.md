# 三国杀卡牌（Three Kingdoms Card Game）— Qoder 1.29（备份/发布线）

本仓库为 1.29 备份/发布线，与主线 `Qoder/2.0` 相互独立、不共享提交历史；活跃开发在 2.0 仓库进行。本仓库无 CI 工作流，远程仅作代码托管与异地备份。

## Git 远程与推送

```
origin -> https://github.com/DJXD248/three-kingdoms-1.29   （private，非公开）
```

### 网络与代理（推送连不上 GitHub 时看这里）

本开发机到 GitHub 的链路会波动：有时直连可用，有时只有经本机代理 `127.0.0.1:10808`（系统代理）才通。**不要**把代理写死进 Git 配置，按顺序处理：

```bash
git push origin master                                    # 1) 先直推
git -c http.proxy=http://127.0.0.1:10808 push origin master  # 2) 超时则借道代理（一次性）
```

自检：`curl -sI --max-time 10 https://github.com -o /dev/null -w "%{http_code}\n"` 返回 200 即可直连；否则确认代理软件开启后走第 2 步。gh CLI 需加 `HTTPS_PROXY=http://127.0.0.1:10808`。

## 验证命令

```bash
npm install --include=optional --ignore-scripts
npm run check && npm run build
```

## 项目文档

- `PROJECT_HANDOFF.md` — 当前状态快照
- `PROJECT_HISTORY_AI.md` / `PROJECT_HISTORY_HUMAN.md` — 历史迭代记录
