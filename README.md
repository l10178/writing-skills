# writing-skills

[![skills.sh](https://skills.sh/b/l10178/writing-skills)](https://skills.sh/l10178/writing-skills)

面向写作场景的开源 AI skills 集合，覆盖草拟、编辑、翻译、审校、发布全流程。

## 安装

```bash
# 浏览可用 skills
npx skills add l10178/writing-skills --list

# 安装单个 skill
npx skills add l10178/writing-skills --skill <skill-name>

# 安装到用户全局目录（所有项目可用）
npx skills add l10178/writing-skills --global --skill <skill-name>

# 非交互式安装（CI / 脚本）
npx skills add l10178/writing-skills --skill <skill-name> -g -y
```

支持 **Claude Code**、**Codex**、**Cursor** 等主流 AI 编码助手。

## 使用

安装后在对话中直接描述需求，AI 自动调用对应 skill。

```console
帮我润色这段文字
把这篇文档翻译成英文
检查这篇文章的风格一致性
```

## Skills 列表

| Skill | 功能 |
|-------|------|
| _(即将推出)_ | |

## 贡献

[CONTRIBUTING.md](CONTRIBUTING.md)

### 新建 Skill

使用 skill-creator 创建，在对话中直接描述即可：

```console
用 skill-creator 帮我创建一个新的写作 skill，功能是……
```

skill-creator 会引导你完成命名、描述、结构和自检。安装方式：

```bash
npx skills add anthropics/skills --skill skill-creator
```

## 相关资源

- [Claude Code 官方文档](https://docs.anthropic.com/en/docs/claude-code)
- [Agent Skills 规范](https://agentskills.io/specification)
- [Anthropic 官方 Skills](https://github.com/anthropics/skills)
- [Superpowers](https://github.com/obra/superpowers)
- [Skills.sh](https://skills.sh/) — 资源聚合站

## 贡献者

<a href="https://github.com/l10178/writing-skills/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=l10178/writing-skills" alt="贡献者头像" />
</a>

## 许可

[CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)
