#!/bin/bash

################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EOS mainnet
#
# https://github.com/CryptoLions/EOS-MainNet
#
###############################################################################

NODEOSBINDIR="/home/eos-sources/eos/build/programs"
DATADIR="/data/EOSmainNet/Wallet"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


$DATADIR/stop_wallet.sh
$NODEOSBINDIR/keosd/keosd --config-dir $DATADIR --wallet-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid
