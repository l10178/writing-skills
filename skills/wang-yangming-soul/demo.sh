#!/usr/bin/env bash
# demo.sh — 王阳明心学 Skill 自检脚本
# 验证 SKILL.md 的 YAML frontmatter 合法性和内容完整性

set -euo pipefail
SKILL_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_MD="$SKILL_DIR/SKILL.md"

echo "=== 王阳明心学 Skill 自检 ==="

# 1. 文件存在
if [[ ! -f "$SKILL_MD" ]]; then
    echo "❌ SKILL.md 不存在"
    exit 1
fi
echo "✅ SKILL.md 存在"

# 2. 检查 YAML frontmatter 存在
FM=$(sed -n '/^---$/,/^---$/p' "$SKILL_MD" | sed '1d;$d')
if [[ -z "$FM" ]]; then
    echo "❌ 缺少 YAML frontmatter"
    exit 1
fi
echo "✅ YAML frontmatter 存在"

# 3. 检查必填字段
check_field() {
    local field=$1
    if echo "$FM" | grep -q "^${field}:"; then
        echo "✅ 字段存在: $field"
    else
        echo "❌ 缺少必填字段: $field"
        exit 1
    fi
}

check_field "name"
check_field "description"

# 4. 检查 metadata
if ! echo "$FM" | grep -q "^metadata:"; then
    echo "❌ 缺少 metadata 块"
    exit 1
fi
echo "✅ metadata 块存在"

# 5. 检查 metadata 子字段
check_meta_field() {
    local field=$1
    if echo "$FM" | sed -n '/^metadata:/,/^[^ ]/p' | grep -q "$field:"; then
        echo "✅ metadata.$field 存在"
    else
        echo "❌ 缺少 metadata.$field"
        exit 1
    fi
}

check_meta_field "tags"
check_meta_field "author"
check_meta_field "version"

# 6. 检查核心信条内容
check_content() {
    local keyword=$1
    if grep -q "$keyword" "$SKILL_MD"; then
        echo "✅ 核心信条存在: $keyword"
    else
        echo "❌ 缺少核心信条: $keyword"
        exit 1
    fi
}

check_content "知行合一"
check_content "事上磨练"
check_content "致良知"
check_content "心即理"
check_content "四句教"
check_content "Agent 法则"

# 7. 检查自检引用
if grep -q 'demo.sh' "$SKILL_MD"; then
    echo "✅ 自检引用存在"
else
    echo "❌ 缺失自检引用"
    exit 1
fi

echo ""
echo "🎉 自检通过 — 阳明心学已注入"
exit 0
