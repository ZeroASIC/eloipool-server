#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

killall eloipool.py
wait

cd "$DIR/../midstate/"
git remote update
wait
sed -i ':a;N;$!ba;s/\-lpython3.2\n/\-lpython3.2mu\n/p' Makefile
wait
make
wait

cd "$DIR/../python-bitcoinrpc/"
git remote update
wait

cd "$DIR/../python-base58/"
git remote update
wait

cd "$DIR/../eloipool/"
git remote update
wait

$DIR/startpool.sh
wait

exit 0
