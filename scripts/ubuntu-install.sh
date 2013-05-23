#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing Supporting Files."
sudo apt-get install python-software-properties
wait
sudo add-apt-repository ppa:bitcoin/bitcoin
wait
sudo apt-get update
wait
sudo apt-get install bitcoind python3 python3-dev python-requests build-essential git
wait

$DIR/installpool.sh
