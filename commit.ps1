$message = Read-Host "Digite seu nome:"

Write-Output "$message"

if (-not (Test-Path .git)) {
    git init
}

git add .
git branch -M main
git commit -m $message

git remote add origin git@lukilme:lukilme/portfolio.git

git push -u origin main

Set-Location dist

if (-not (Test-Path .git)) {
    git init
}

git add .
git branch -M gh-pages
git commit -m $message

git remote add origin git@lukilme:lukilme/portfolio.git

git push origin gh-pages --force

Get-ChildItem

Set-Location ..