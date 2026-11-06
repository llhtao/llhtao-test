#!/bin/bash
cd "$(dirname "$0")"
git pull
git add .
if git diff --cached --quiet; then
    echo "✅ 没有新文件，无需提交"
else
    read -p "请输入本次更新备注：" msg
    git commit -m "$msg"
    git push
    echo "✅ 备份推送完成"
fi
