#!/bin/bash

cd $(git rev-parse --show-toplevel)

git log --date=short --pretty=tformat:"* %s [%ad]%n%b" > journal_from_git_log.org

echo -e "#+TITLE: $(printf '%s\n' "${PWD##*/}")\n#+AUTHOR: $(git config user.name)\n\n$(cat journal_from_git_log.org)" > journal_from_git_log.org

cd -
