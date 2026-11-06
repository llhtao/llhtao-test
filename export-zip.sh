#!/bin/bash
ver=$(git rev-parse --short HEAD)
out="../drawings-${ver}.zip"
git archive -o "$out" HEAD
echo "✅ 已导出：$out"
