# CLAUDE.md

## 行为准则

以下规则旨在减少常见错误，偏向谨慎而非速度。简单任务可自行判断。

### 先想后做

- 先陈述假设，不确定时提问而非猜测
- 存在多种方案时列出选项，不自行决定
- 有更简单的做法时主动提出
- 遇到模糊之处，停下来，说出困惑，问清楚

### 极简优先

- 只做要求的事，不添加未请求的功能
- 不为单次使用创建抽象
- 不为不可能的场景加错误处理
- 200 行能压到 50 行就压到 50 行

### 精准改动

- 只改必须改的，不顺手"优化"无关代码
- 匹配已有风格，即使你觉得有更好的写法
- 你的改动导致的无用 import / 变量 / 函数，清理掉
- 不改动已有的死代码，除非明确被要求

### 目标驱动

把任务转化为可验证的目标：

- "修 bug" → "写一个能复现它的测试，然后让它通过"
- "加校验" → "写异常输入测试，然后让它通过"
- "重构 X" → "重构前后测试全部通过"

多步任务先列出计划，每步带验证点。

---

## 项目约定

- **语言**：文档和注释用中文，代码标识符和 git 提交信息用英文
- Skills 在 `skills/<name>/SKILL.md`，Agents 在 `agents/<name>/AGENT.md`
- 入口文件即唯一真相来源
- 不留死代码，不用就删
- 优先标准库、零依赖
- Shell 命令用 `#!/usr/bin/env bash`
- Markdown 格式遵循 [docs/guidelines/markdown-spec.md](docs/guidelines/markdown-spec.md)
- 新建 skill 使用 skill-creator，遵循 [docs/guidelines/skill-spec.md](docs/guidelines/skill-spec.md)
- Git 操作遵循 [docs/guidelines/git-workflow.md](docs/guidelines/git-workflow.md)

## 质量

- CI 中出错的 skill 移除
- 功能重复的 skill 需说明独立存在的理由
