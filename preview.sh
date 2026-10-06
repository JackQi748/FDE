#!/usr/bin/env bash
# FDE 知识库 · 本地预览脚本
# 用法:
#   ./preview.sh          默认 http://localhost:3000/
#   ./preview.sh 8080     自定义端口
# 说明: 纯静态 Docsify 站点，无需构建；修改 markdown 后刷新浏览器即可。
set -euo pipefail

PORT="${1:-3000}"
# 切到脚本所在目录，保证从仓库根目录起服务
cd "$(dirname "$0")"

if ! command -v python3 >/dev/null 2>&1; then
  echo "未找到 python3，请安装 Python 3 后再运行，或用: npx docsify-cli serve ." >&2
  exit 1
fi

echo "============================================="
echo " FDE 知识库本地预览"
echo " 打开: http://localhost:${PORT}/"
echo " 停止: 按 Ctrl+C"
echo "============================================="
exec python3 -m http.server "${PORT}"
