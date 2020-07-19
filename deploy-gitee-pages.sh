#!/bin/sh

set -e

git init

git config --global user.email "1241900094@qq.com"
git config --global user.name "yokefellow"

git remote set-url --push origin "$INPUT_GITEE_REPO"
git remote -v

git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git pull origin master
git push --all origin