#!/bin/bash

set -exu -o pipefail

status=${PR_STATUS:-"<<status is missing>>"}
repo=${PR_REPO:-"<<unspecified repo>>"}
message_dir="$(cd "${PWD}/pr-slack-message/"; pwd)"
cd "git-${repo}"
pr_number="$(git config --get pullrequest.id)"

echo "CI ${status} for PR $pr_number on $repo" > "$message_dir/message.txt"
