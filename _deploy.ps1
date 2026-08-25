# Deploy karstenheld.com
# Static site - deploy by pushing to GitHub master branch
# Auto-deployed by hosting platform (GitHub Pages / Netlify)

$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

# Stage all changes
git add -A

# Commit with timestamp
$timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm'
$msg = Read-Host "Commit message (default: 'deploy $timestamp')"
if ([string]::IsNullOrWhiteSpace($msg)) { $msg = "deploy $timestamp" }

git commit -m $msg

# Push to GitHub
git push origin master

Write-Host "`nDeployed to: https://www.karstenheld.com" -ForegroundColor Green
