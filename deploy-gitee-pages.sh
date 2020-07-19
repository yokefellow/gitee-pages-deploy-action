#!/usr/bin/env sh

set -e

git config --global user.email "1241900094@qq.com"
git config --global user.name "yokefellow"

rm -rf .git
git init

git remote rm origin
git remote add origin "$INPUT_GITEE_REPO"
git remote -v

git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push -f origin master
