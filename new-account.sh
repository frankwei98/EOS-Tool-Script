#!/bin/bash

account=$1
owner_key="EOS7BcQFv6DF1U8KFizSQmNwiFkXYMcGhcp1KGmVXwswN5Ao15Gwd"
active_key="EOS8Pa3jWNx4gQA5HgiYNLwj3dWHuv9d8YoULqU3SSJzzmzgPW1oz"

if [[ $# -eq 0 ]] ; then
    echo "Please Enter an account name"
    exit 1
else
    cleos create account eosio "$account" "$owner_key" "$active_key"
fi

