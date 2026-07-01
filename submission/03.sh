#!/bin/bash
# Create a SegWit address and add funds to it

# Generate coins to the default wallet (mines 101 blocks for coinbase maturity)
MINING_ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$MINING_ADDRESS" > /dev/null

# Create a SegWit address
SEGWIT_ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")

# Send funds to the SegWit address (send 10 BTC)
bitcoin-cli -regtest -rpcwallet=btrustwallet sendtoaddress "$SEGWIT_ADDRESS" 10

# Return the SegWit address
echo "$SEGWIT_ADDRESS"