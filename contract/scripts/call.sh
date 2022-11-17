#!/bin/bash 

source ./scripts/setting.conf

near call $SUB_ACCOUNT  new_default_meta '{"owner_id": "'$SUB_ACCOUNT '"}' --accountId $SUB_ACCOUNT 

near view $SUB_ACCOUNT  nft_metadata

near call $SUB_ACCOUNT  nft_mint '{"token_id": "0", "receiver_id": "'$SUB_ACCOUNT '", "token_metadata": { "title": "Some Art", "description": "My NFT media", "media": "https://bafkreiabag3ztnhe5pg7js4bj6sxuvkz3sdf76cjvcuqjoidvnfjz7vwrq.ipfs.dweb.link/", "copies": 1}}' --accountId $SUB_ACCOUNT  --deposit 0.1

near view $SUB_ACCOUNT  nft_tokens_for_owner '{"account_id": "'$SUB_ACCOUNT '"}'

