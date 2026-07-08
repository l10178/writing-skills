# AGENTS.md

## 原则

1. **单一职责** — 一个 agent 只做一件事
2. **可验证输出** — 产出内容必须是可审查的（文本、diff、建议）
3. **快速失败** — 无法完成时明确拒绝，不空转
4. **自文档化** — `AGENT.md` / `SKILL.md` 即代码、即规范、即帮助

## 目录

### Skills（`skills/`）

| Skill | 功能 |
|-------|------|
| [wang-yangming-soul](skills/wang-yangming-soul/SKILL.md) | 王阳明心学蒸馏——为 Agent 注入知行合一的行动哲学 |

### Agents（`agents/`）

| Agent | 功能 |
|-------|------|
| _(待添加)_ | |

## 新建

使用 skill-creator 创建：

```bash
npx skills add anthropics/skills --skill skill-creator
```

然后在对话中描述需求，skill-creator 引导完成。

## 规则

- 不添加本周不会用的 agent
- 功能重复时扩展已有 skill，不新建
- 每个 skill/agent 必须包含可运行的自检
- Markdown 格式遵循 [docs/guidelines/markdown-spec.md](docs/guidelines/markdown-spec.md)
- Skill 编写遵循 [docs/guidelines/skill-spec.md](docs/guidelines/skill-spec.md)
- Git 操作遵循 [docs/guidelines/git-workflow.md](docs/guidelines/git-workflow.md)
