#!/usr/bin/env sh

set -e

git config --global user.email "$INPUT_GIT_USER_EMAIL"
git config --global user.name "$INPUT_GIT_USER_NAME"


cd "$INPUT_FOLDER"
git init

if [ -n "$INPUT_CNAME" ]; then
  echo "$INPUT_CNAME" > CNAME
fi

git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push "$INPUT_GITEE_REPO" master

