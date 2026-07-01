#!/bin/bash
# Create a transaction whose fee can be later updated to a higher fee if it is stuck or doesn't get mined on time

# Amount of 20,000,000 satoshis to this address: 2MvLcssW49n9atmksjwg2ZCMsEMsoj3pzUP 
# Use the UTXOs from the transaction below
# raw_tx="01000000000101c8b0928edebbec5e698d5f86d0474595d9f6a5b2e4e3772cd9d1005f23bdef772500000000ffffffff0276b4fa0000000000160014f848fe5267491a8a5d32423de4b0a24d1065c6030e9c6e
bitcoin-cli -regtest createrawtransaction '[{"txid":"c8b0928edebbec5e698d5f86d0474595d9f6a5b2e4e3772cd9d1005f23bdef77","vout":0}]' '{"2MvLcssW49n9atmksjwg2ZCMsEMsoj3pzUP":0.2}'