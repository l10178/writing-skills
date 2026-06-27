# Agent: <名称>

## 用途

一句话。这个 agent 完成什么写作任务？

## 组成

- 依赖：`skills/<name>`
- 触发：`/<command>` 或 `on:<event>`

## 流程

1. 接收输入
2. 调用 skill 处理
3. 输出结果

## 验证

```bash
cat sample.md | /<command>
./agents/<name>/demo.sh
```
