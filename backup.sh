#!/bin/bash
git pull
git add .
if git diff --cached --quiet; then
    echo "✅ 没有新文件，无需提交"
    exit 0
fi
read -p "请输入本次更新备注：" msg
git commit -m "$msg"
# 写入变更日志
echo "=====================================" >> change-log.txt
echo "时间: $(date '+%Y-%m-%d %H:%M:%S')" >> change-log.txt
echo "备注: $msg" >> change-log.txt
echo "改动文件:" >> change-log.txt
git diff --name-only HEAD~1 HEAD >> change-log.txt
echo "" >> change-log.txt
git push
echo "✅ 备份推送完成，变更已记入 change-log.txt"
