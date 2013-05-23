#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/run-bitcoind.sh
wait
$DIR/run-eloipool.sh
wait

exit 0
