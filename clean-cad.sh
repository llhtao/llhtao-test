#!/bin/bash
# SolidWorks 临时文件
find . -name "~$*.sldprt" -o -name "~$*.sldasm" -o -name "~$*.slddrw" -delete
find . -name "*.sldprt*" -o -name "*.sldasm*" -o -name "*.slddrw*" -delete
# NX 日志、缓存
find . -name "*.prt.*.log" -o -name "*.jtx" -o -name "*.pcf" -delete
# 系统缓存、临时文件
find . -name "Thumbs.db" -o -name ".thumbs.db" -o -name "*.tmp" -delete
echo "✅ CAD 临时缓存清理完毕"
