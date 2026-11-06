#!/bin/bash
echo "⚠️ 本脚本会将本地强制回退到指定版本，本地未提交改动会丢失！"
read -p "请输入要回退的 commit 短 hash（查看：git log --oneline）：" hash
if [ -z "$hash" ]; then
  echo "hash 不能为空，退出"
  exit 1
fi
read -p "确认回退到 $hash ?(y/N)：" confirm
if [ "$confirm" != "y" ]; then
  echo "已取消"
  exit 0
fi
git reset --hard "$hash"
echo "✅ 本地已经回退到 $hash"
echo "如需同步到远程，手动执行：git push --force-with-lease"
