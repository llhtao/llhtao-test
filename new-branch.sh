#!/bin/bash
read -p "请输入新分支名称：" br
if [ -z "$br" ]; then
  echo "分支名不能为空"
  exit 1
fi
git checkout main
git pull
git checkout -b "$br"
echo "✅ 已创建并切换到分支：$br"
echo "完成修改后，切回主分支：git checkout main"
