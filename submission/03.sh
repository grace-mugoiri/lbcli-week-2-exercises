# Create a SegWit address.
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")
# Get a block reward address
BLOCK_REWARD_ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)
# Add funds to the address.
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 101 $ADDRESS
# Mine another block to confirm the transaction.
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 1 $BLOCK_REWARD_ADDRESS
# Return only the Address
echo $ADDRESS