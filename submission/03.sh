# Create a SegWit address.
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")
# Get a block reward address
# send to this address
bitcoin-cli -regtest -rpcwallet=btrustwallet sendtoaddress $ADDRESS 50
BLOCK_REWARD_ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)
# Add funds to the address.
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 101 $ADDRESS
# Mine another block to confirm the transaction.
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 1 $BLOCK_REWARD_ADDRESS
# Return only the Address
echo $ADDRESS