#!/bin/sh

set -e

GIT_SSH_COMMAND="ssh -v"

git remote -v
git remote set-url --push origin $INPUT_GITEE_REPO

git remote -v
git push -f origin gh-pages-source:gh-pages-source
git push -f origin master:master