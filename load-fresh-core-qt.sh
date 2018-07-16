#!/bin/bash
# Copyright (c) 2018 David Egan
# Distributed under the MIT software license, see the accompanying
# file LICENSE or http://www.opensource.org/licenses/mit-license.php.
# ------------------------------------------------------------------------------
set -o nounset
set -o errexit

THIS=$(readlink -f ${BASH_SOURCE[0]})
PROJECT_ROOT=$(dirname $THIS)
. ${PROJECT_ROOT}/lib/config
. ${PROJECT_ROOT}/lib/select-coin
. ${PROJECT_ROOT}/lib/setup-binaries
. ${PROJECT_ROOT}/lib/setup-cold-wallet

select_coin
setup_binaries

${COIN}-qt