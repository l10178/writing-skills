# 架构设计

## 原则

1. **Skill 是原子** — agent 是一组 skill 调用的有向无环图
2. **无隐藏状态** — 每次调用自包含，上下文由 agent 显式传递
3. **Shell 为运行时** — `bash` 即可，不绑定框架

## 调用模型

```text
用户/Agent → Skill("name", args) → shell/cmd → 输出
                 ↑
            SKILL.md（规范 + 实现）
```

## 安全

- Skill 默认不访问网络，需访问时显式声明
- 不修改项目根目录以外的文件
- 破坏性操作需明确确认
- 每个 skill 提供失败模式说明
