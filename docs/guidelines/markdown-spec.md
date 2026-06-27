# Markdown 规范

本项目所有 Markdown 文档须遵守以下格式规范。

## 代码块

所有代码块必须指定语言标记，格式：` ```language`。

无法确定语言类型时使用 ` ```console ` 作为默认。

常见语言标记：

| 语言 | 标记 |
|------|------|
| Bash / Shell | `bash` |
| Python | `python` |
| Java | `java` |
| JavaScript | `javascript` |
| JSON | `json` |
| YAML | `yaml` |
| XML | `xml` |
| SQL | `sql` |
| Markdown | `markdown` |
| 纯文本 / 终端输出 | `text` |
| 终端命令 | `console` |

## 表格

表格使用 `consistent` 风格：管道符 `|` 两侧各有一个空格。

✅ 正确：

```markdown
| 列 A | 列 B |
|------|------|
| 值 1 | 值 2 |
```

❌ 错误：

```markdown
|列 A|列 B|
|---|---|
|值 1|值 2|
```
