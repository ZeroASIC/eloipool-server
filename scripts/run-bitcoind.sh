#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

/usr/bin/bitcoind \
	-datadir=$DIR/../bitcoindata -daemon \
	-blocknotify=$DIR/newblock.sh
