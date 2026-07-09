# 贡献指南

欢迎贡献。本文档说明如何参与本项目。

## 方式

- **提 Issue**：报告缺陷、提议新 skill、提改进建议
- **提 PR**：修复缺陷、新增 skill、改进文档

## 提 Issue

选择合适的模板：skill 提案、缺陷报告、功能建议。

Issue 标题用英文前缀：`skill:` / `fix:` / `docs:`。

## 提 PR

1. Fork 本仓库
2. 基于 `main` 创建分支：`feat/<名称>` 或 `fix/<名称>`
3. 开发完成，确认自检通过、lint 通过
4. 提交 PR，填写检查清单

### Skill 准入要求

详见 [docs/guidelines/skill-spec.md](docs/guidelines/skill-spec.md)。摘要：

- 使用 skill-creator 创建
- SKILL.md 元数据仅含 `tags`、`author`、`version`
- 新增后更新 README Skills 列表，按名称排序
- 不与已有 skill 功能重复

### 文档风格

- 全部中文
- 删废话，每句话承载信息
- 不写“不是 xx 而是 yy”式表述

## 提交规范

见 [docs/guidelines/git-workflow.md](docs/guidelines/git-workflow.md)。

## 许可

贡献内容采用 [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) 许可。
