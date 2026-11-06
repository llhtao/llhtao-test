# 压延设备图纸版本库
Git + Git LFS，SSH 免密推送到 GitHub，用于管理压延设备三维模型与工程图纸。

## 脚本列表
- backup.sh：终端备份，自动提交、推送、写入变更日志
- backup.bat：Windows 双击备份，同样记录变更日志
- view-log.sh：查看全部变更记录
- export-zip.sh：导出当前版本为 zip
- clean-cad.sh：清理 SolidWorks / NX 产生的临时文件

## 使用流程
1. 将零件、装配、工程图放入仓库
2. 备份：
   - 终端：`./backup.sh`
   - Windows：双击 `backup.bat`
3. 填写修改备注，自动完成提交推送

## 常用命令

cat > README.md <<'EOF'
# 压延设备图纸版本库
Git + Git LFS，SSH 免密推送到 GitHub，用于管理压延设备三维模型与工程图纸。

## 脚本列表
- backup.sh：终端备份，自动提交、推送、写入变更日志
- backup.bat：Windows 双击备份，同样记录变更日志
- view-log.sh：查看全部变更记录
- export-zip.sh：导出当前版本为 zip
- clean-cad.sh：清理 SolidWorks / NX 产生的临时文件

## 使用流程
1. 将零件、装配、工程图放入仓库
2. 备份：
   - 终端：`./backup.sh`
   - Windows：双击 `backup.bat`
3. 填写修改备注，自动完成提交推送

## 常用命令

cat > README.md <<'EOF'
# 压延设备图纸版本库
Git + Git LFS，SSH 免密推送到 GitHub，用于管理压延设备三维模型与工程图纸。

## 脚本列表
- backup.sh：终端备份，自动提交、推送、写入变更日志
- backup.bat：Windows 双击备份，同样记录变更日志
- view-log.sh：查看全部变更记录
- export-zip.sh：导出当前版本为 zip
- clean-cad.sh：清理 SolidWorks / NX 产生的临时文件

## 使用流程
1. 将零件、装配、工程图放入仓库
2. 备份：
   - 终端：`./backup.sh`
   - Windows：双击 `backup.bat`
3. 填写修改备注，自动完成提交推送

## 常用命令

添加完整仓库说明 README.md

