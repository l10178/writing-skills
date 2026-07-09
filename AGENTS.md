# AGENTS.md

## 原则

1. **可验证输出** — 产出内容必须是可审查的（文本、diff、建议）

## 新建

使用 skill-creator 创建：

```bash
npx skills add anthropics/skills --skill skill-creator
```

## 规则

- 功能重复时扩展已有 skill，不新建
- Markdown 格式遵循 [docs/guidelines/markdown-spec.md](docs/guidelines/markdown-spec.md)
- Skill 编写遵循 [docs/guidelines/skill-spec.md](docs/guidelines/skill-spec.md)
- Git 操作遵循 [docs/guidelines/git-workflow.md](docs/guidelines/git-workflow.md)
