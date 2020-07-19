#!/bin/sh

set -e

git config --global user.email "yuan1241900094@qq.com"
git config --global user.name "yokefellow"
git remote set-url --push origin "$INPUT_GITEE_REPO"
git commit -m "$INPUT_COMMIT_MESSAGE"
git push --all origin 