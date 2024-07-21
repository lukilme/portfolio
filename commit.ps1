npm run build

git checkout gh-pages
git add dist
git commit -m ":sparkles: new: cool things added"
git push origin gh-pages --force

# Voltar para a branch master
git checkout main