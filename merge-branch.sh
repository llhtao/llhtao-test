#!/bin/bash
read -p "输入要合并进 main 的分支名：" br
if [ -z "$br" ]; then
  echo "分支名不能为空"
  exit 1
fi
git checkout main
git pull
git merge "$br"
echo "✅ 合并完成，如果没有冲突，执行 ./backup.sh 提交推送"
echo "如有冲突，手动解决文件后再提交"
