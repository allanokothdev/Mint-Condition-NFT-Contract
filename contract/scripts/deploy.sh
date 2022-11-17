#!/bin/bash 
source ./scripts/setting.conf

near delete $SUB_ACCOUNT $MASTER_ACCOUNT 

near create-account $SUB_ACCOUNT --masterAccount $MASTER_ACCOUNT --initialBalance 10

near deploy $SUB_ACCOUNT --wasmFile=./res/mint_condition.wasm