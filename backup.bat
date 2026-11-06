@echo off
chcp 65001 >nul
git pull
git add .
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo ✅ 没有新文件，无需提交
    pause
    exit /b
)
set /p msg=请输入本次更新备注：
git commit -m "%msg%"
git push
echo ✅ 备份推送完成
pause
