#!/usr/bin/env sh

set -e

git config --global user.email "$INPUT_GIT_USER_EMAIL"
git config --global user.name "$INPUT_GIT_USER_NAME"

cd "$INPUT_FOLDER"
git init
git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push -f "$INPUT_GITEE_REPO" master

cd ..
git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"

git remote rm origin
git remote add origin $INPUT_GITEE_REPO

git remote -v
git branch -a

git pull $INPUT_SOURCE_REMOTE_BRANCH master --allow-unrelated-histories
git branch --set-upstream-to=origin/$INPUT_SOURCE_REMOTE_BRANCH $INPUT_SOURCE_LOCAL_BRANCH
git push                                                      
