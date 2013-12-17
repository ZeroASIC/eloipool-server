#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

chmod -R 755 *.sh
wait

echo "Making Directories."
cd "../"
mkdir bitcoindata
wait
mkdir logs
wait
echo "Downloading Source."
git clone https://github.com/jgarzik/python-bitcoinrpc.git
wait
git clone https://gitorious.org/bitcoin/python-base58.git
wait
git clone https://gitorious.org/midstate/midstate.git
wait
git clone https://gitorious.org/bitcoin/eloipool.git
wait

echo "Compiling Source."
cd "$DIR/../midstate/"
sed -i ':a;N;$!ba;s/\-lpython3.2\n/\-lpython3.2mu\n/p' Makefile
wait
make
wait

echo "Creating Links."
cd "$DIR/../eloipool/"
ln -s ../midstate/midstate.so midstate.so 
ln -s ../python-base58/base58.py base58.py
ln -s ../python-bitcoinrpc/bitcoinrpc/ bitcoinrpc
ln -s ../python-bitcoinrpc/jsonrpc/ jsonrpc
wait

echo "Moving Config Files."
cd "$DIR/../"
mv bitcoin.conf bitcoindata/
mv config.py eloipool/
