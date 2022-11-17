#!/bin/bash 

source ./scripts/setting.conf

near call $ID new_default_meta '{"owner_id": "'$ID'"}' --accountId $ID

near view $ID nft_metadata

near call $ID nft_mint '{"token_id": "0", "receiver_id": "'$ID'", "token_metadata": { "title": "Some Art", "description": "My NFT media", "media": "https://bafkreiabag3ztnhe5pg7js4bj6sxuvkz3sdf76cjvcuqjoidvnfjz7vwrq.ipfs.dweb.link/", "copies": 1}}' --accountId $ID --deposit 0.1

near view $ID nft_tokens_for_owner '{"account_id": "'$ID'"}'

