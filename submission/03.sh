# Create a SegWit address
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")

# Mine first
bitcoin-cli -regtest -rpcwallet=btrustwallet settxfee 0.00001000
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 101 "$ADDRESS" >/dev/null

# Now the wallet has mature coins
bitcoin-cli -regtest -rpcwallet=btrustwallet sendtoaddress "$ADDRESS" 50
# Confirm the transaction
CONFIRM_ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 1 "$CONFIRM_ADDR" >/dev/null

echo "$ADDRESS"