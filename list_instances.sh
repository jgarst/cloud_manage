#!/bin/sh

curl -s \
    -H "Authorization: Bearer "$(pass linode-token) \
    https://api.linode.com/v4/linode/instances
