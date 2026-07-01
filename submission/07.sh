# Create a raw transaction with an amount of 20,000,000 satoshis to this address: 2MvLcssW49n9atmksjwg2ZCMsEMsoj3pzUP 
# Use the UTXOs from the transaction below
#!/bin/bash

bitcoin-cli -regtest createrawtransaction \
'[{"txid":"c8b0928edebbec5e698d5f86d0474595d9f6a5b2e4e3772cd9d1005f23bdef77","vout":0},{"txid":"c8b0928edebbec5e698d5f86d0474595d9f6a5b2e4e3772cd9d1005f23bdef77","vout":1}]' \
'{"2MvLcssW49n9atmksjwg2ZCMsEMsoj3pzUP":0.2}'