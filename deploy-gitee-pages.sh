#!/bin/sh

set -e

GIT_SSH_COMMAND="ssh -v"
echo "gitee-repo=$INPUT_GITEE_REPO"
echo "commit-message=$INPUT_COMMIT_MESSAGE"