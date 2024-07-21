# Mude para a pasta do projeto
Set-Location artistryhub

# Crie a mensagem de commit
$message = ":sparkles: new: cool things added"

# Inicialize o repositório Git se ainda não estiver inicializado
if (-not (Test-Path .git)) {
    git init
}

# Adicione todos os arquivos e faça commit
git add .
git branch -M main
git commit -m $message

# Defina a URL do repositório remoto
git remote add origin git@lukilme:lukilme/portfolio.git

# Faça push para a branch principal
git push -u origin main

# Mude para a pasta dist
Set-Location dist

# Inicialize o repositório Git na pasta dist se ainda não estiver inicializado
if (-not (Test-Path .git)) {
    git init
}

# Adicione todos os arquivos e faça commit
git add .
git branch -M gh-pages
git commit -m $message

# Defina a URL do repositório remoto
git remote add origin git@lukilme:lukilme/portfolio.git

# Faça push para a branch gh-pages com --force
git push origin gh-pages --force

# Liste os arquivos na pasta dist para verificação
Get-ChildItem

# Volte para a pasta raiz do projeto
Set-Location ..
