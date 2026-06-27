# Git 工作流

Agent 在本仓库中的 git 操作规范。

## 分支

- `main`：稳定分支，始终保持可发布状态
- 禁止直接提交到 `main`，所有开发在独立分支进行，通过 MR 合入
- 命名：
  - `feature/<名称>` — 新功能
  - `fix/<名称>` — 修复
  - `docs/<名称>` — 文档变更

## 提交

### 格式

```text
<type>: <简短描述>
```

类型：

- `feat` — 新增 skill / agent
- `fix` — 修复缺陷
- `docs` — 文档变更
- `refactor` — 重构，无功能变化
- `chore` — 依赖、配置等杂项

### 规则

- 提交信息用英文，一行概括
- 一个功能只包含一次 commit，提交 MR 前通过 rebase 将多次 commit 合并为一个
- 提交信息只描述做了什么，不加 `Co-authored-by` 等元信息

### 提交流程

1. 确认变更范围：`git status`、`git diff`
2. 检查是否有不该提交的文件（`.env`、`node_modules` 等）
3. 如有多个 commit，通过 interactive rebase 合并
4. 提交信息遵循上述格式

## 合并

- 合并到 `main` 前确保所有自检通过
- 提交 MR 前 rebase 为单 commit
- 不 rebase 已推送且他人可能基于其工作的分支

## 禁止提交的内容

- 中间态文档（PRD、设计草稿、brainstorm 记录）
- `.env`、密钥、凭证等敏感文件
- `node_modules`、`dist`、`build` 等构建产物

## Agent 禁区

以下操作 Agent 不得执行：

- `git push --force` 到 `main`
- `git reset --hard` 丢弃已提交内容
- `git commit --amend` 修改已推送的提交
- 跳过 hook（`--no-verify`、`--no-gpg-sign`）
- 直接提交 `main` 分支
