#!/bin/sh

curl -s \
    -H "Authorization: Bearer "$(pass linode-token) \
    -X DELETE \
    https://api.linode.com/v4/linode/instances/$1
