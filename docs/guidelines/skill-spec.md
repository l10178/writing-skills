# Skill 规范

新增使用 skill-creator 创建，更新直接修改；改完后更新根目录 README 的 Skills 列表，按名称排序，不改列表格式；提交 PR。

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

- 语义化版本：修改 +修订，新功能 +次版本，不兼容变更 +主版本，其余归零
- **禁止在 SKILL.md 中写版本历史**——版本号在 metadata，历史在 git log
