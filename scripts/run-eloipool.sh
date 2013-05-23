#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

killall eloipool.py > /dev/null
wait

PYTHONPATH=$PYTHONPATH:$DIR/../python-bitcoinrpc/jsonrpc:$DIR/../python-bitcoinrpc/bitcoinrpc:$DIR/../python-base58:$DIR/../midstate \

	nohup python3 ../eloipool/eloipool.py 2>&1 >/dev/null &

#python3 ../eloipool/eloipool.py ##for debugging
