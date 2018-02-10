#!/bin/sh

curl -s \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer "$(pass linode-token) \
    -X POST \
    -d "{
        \"region\": \"us-west-1a\",
        \"type\": \"g5-nanode-1\",
        \"image\": \"linode/arch\",
        \"root_pass\": \"$(pass linode-1)\"
    }" \
    https://api.linode.com/v4/linode/instances
