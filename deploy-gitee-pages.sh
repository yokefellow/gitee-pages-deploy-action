#!/usr/bin/env sh

set -e

cd "$INPUT_FOLDER"
git init
git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push -f "$INPUT_GITEE_REPO" master

cd ..
rm -rf .git
git init

git config user.email "$INPUT_GIT_USER_EMAIL"
git config user.name "$INPUT_GIT_USER_NAME"

git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push -f "$INPUT_GITEE_REPO" master:"$INPUT_SOURCE_BRANCH"
