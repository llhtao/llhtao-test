@echo off
chcp 65001 >nul
git pull
git add .
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo  没有新文件，无需提交
    pause
    exit /b
)
set /p msg=请输入本次更新备注：
git commit -m "%msg%"
echo ===================================== >> change-log.txt
echo 时间: %date% %time% >> change-log.txt
echo 备注: %msg% >> change-log.txt
echo 改动文件: >> change-log.txt
git diff --name-only HEAD~1 HEAD >> change-log.txt
echo. >> change-log.txt
git push
echo  备份推送完成，变更已记入 change-log.txt
pause
