#!/bin/sh
###########################
cd //home/aims/personalDev/categitau.github.io/
# switch to branch you want to use
git checkout master
# add all added/modified files
git add .
# commit changes
read commitMessage
git commit -am "$commitMessage"
# push to git remote repository
git push
###########################
echo Press Enter...
read
