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

git remote rm origin
git remote add origin $INPUT_GITEE_REPO

git pull origin $INPUT_SOURCE_GITEE_REMOTE_BRANCH --allow-unrelated-histories
git push origin $INPUT_SOURCE_GITHUB_REMOTE_BRANCH $INPUT_SOURCE_GITEE_REMOTE_BRANCH                                                   
