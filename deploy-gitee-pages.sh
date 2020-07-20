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
rm -rf .git
git init
git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push -f "$INPUT_GITEE_REPO" "$INPUT_SOURCE_LOCAL_BRANCH":"$INPUT_SOURCE_REMOTE_BRANCH"
