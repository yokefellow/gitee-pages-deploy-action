#!/usr/bin/env sh

set -e

git config --global user.email "$INPUT_GIT_USER_EMAIL"
git config --global user.name "$INPUT_GIT_USER_NAME"

mkdir tmp
git clone --depth=1 --single-branch --branch "$INPUT_GITEE_PAGES_BRANCH" "$INPUT_GITEE_REPO" ./tmp
cd ./tmp
git rm -r --ignore-unmatch *
cp -r ../"$INPUT_FOLDER"/* ./

if [ -n "$INPUT_CNAME" ]; then
  echo "$INPUT_CNAME" > CNAME
fi

git add -A
git commit -m "$INPUT_COMMIT_MESSAGE"
git push origin master

