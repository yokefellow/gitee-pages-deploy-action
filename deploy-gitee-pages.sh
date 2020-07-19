#!/usr/bin/env sh

set -e

git config --global user.email "1241900094@qq.com"
git config --global user.name "yokefellow"

cd "$INPUT_FOLDER"
git init
git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push -f "$INPUT_GITEE_REPO" master

cd ..
rm -rf .git
git init
git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push -f "$INPUT_GITEE_REPO" master:gh-pages-source
