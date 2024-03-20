#!/usr/bin/env bash
# Copyright (c) 2018-2020 The Dash Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.
# use testnet settings,  if you need mainnet,  use ~/.vixel/vixeld.pid file instead
export LC_ALL=C

vixel_pid=$(<~/.vixel/testnet3/vixeld.pid)
sudo gdb -batch -ex "source debug.gdb" vixeld ${vixel_pid}
