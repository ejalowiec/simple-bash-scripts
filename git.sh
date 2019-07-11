#read file comment
#git add $file
#git commit -m "$comment"
#git push

git pull
git add .
git commit -m "$*"
git push -u origin master