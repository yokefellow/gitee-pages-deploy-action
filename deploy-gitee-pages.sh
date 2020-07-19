#!/usr/bin/env sh

set -e

git config --global user.email "1241900094@qq.com"
git config --global user.name "yokefellow"

git init

git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
ls
git push -f "$INPUT_GITEE_REPO" master
git push -f "$INPUT_GITEE_REPO" gh-pages-source:gh-pages-source