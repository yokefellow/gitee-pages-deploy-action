#!/bin/sh

set -e

git remote add origin "$INPUT_GITEE_REPO"
git remote -v

git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"

git push -u origin master
