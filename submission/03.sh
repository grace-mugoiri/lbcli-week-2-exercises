# Create a SegWit address.
bitcoin-cli -regtest getnewaddress "" "bech32"
# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 $(bitcoin-cli -regtest getnewaddress)
# Return only the Address
bitcoin-cli -regtest getnewaddress "" "bech32"