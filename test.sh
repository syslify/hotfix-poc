#!/bin/bash

commit_subject=$(git log -1 --pretty=format:%s)
echo Commit subject: $commit_subject

regex='Merge pull request #[0-9]+ from .+/(.+)$'
[[ $commit_subject =~ $regex ]]
branch_name=${BASH_REMATCH}
echo Merged branch: $branch_name