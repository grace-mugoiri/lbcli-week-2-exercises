#!/bin/bash
# Create a SegWit address
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")

# Mine 101 blocks to that address
bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" >/dev/null

# Return only the address
echo "$ADDRESS"