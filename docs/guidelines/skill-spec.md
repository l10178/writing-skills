# Skill 规范

本项目所有 skill 须遵守以下规范。

- **必须使用 skill-creator 创建**，不允许手动创建

## 目录

- 所有 skill 放在 `skills/` 下，每个 skill 一个子目录
- 命名用 `kebab-case`，与 SKILL.md 的 `name` 字段一致

## SKILL.md 元数据

### 允许字段

`metadata` 下只允许以下字段，禁止使用 `creator`、`contributors` 等未列出字段：

| 字段 | 类型 | 说明 |
|------|------|------|
| `tags` | 字符串列表 | 预定义标签，见标签规范 |
| `author` | 字符串 | 创建人，使用 GitHub 用户名 |
| `version` | 字符串 | 三位语义化版本（如 `1.0.0`） |

### 版本管理

- 格式：`主版本.次版本.修订版本`（如 `1.0.0`）
- 每次修改后**修订版本号 +1**（如 `1.0.0` → `1.0.1`）
- 功能新增时**次版本号 +1**，修订版本归零（如 `1.0.5` → `1.1.0`）
- 不兼容变更时**主版本号 +1**，其余归零

### 示例

```yaml
---
name: my-writing-skill
description: 一句话描述这个 skill 的功能和使用场景
metadata:
  tags:
    - editing
    - markdown
  author: l10178
  version: "1.0.0"
---
```

## 新增 Skill 流程

1. 使用 skill-creator 创建
2. 更新 README 中的 Skills 列表，按名称排序，不改列表格式
3. 提交 PR
