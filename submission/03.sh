# Create a SegWit address.
bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32"
# Add funds to the address.
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 101 $(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)
# Return only the Address
bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32"