#!/bin/sh

set -e

GIT_SSH_COMMAND="ssh -v"

git remote set-url --push origin $INPUT_GITEE_REPO
git commit -m $INPUT_COMMIT_MESSAGE
git push --all origin 