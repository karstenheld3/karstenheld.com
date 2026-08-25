@echo off
REM Deploy karstenheld.com - static site via git push to GitHub
REM GitHub Pages / Netlify auto-deploys from master branch
powershell -ExecutionPolicy Bypass -File "%~dp0_deploy.ps1"
pause
