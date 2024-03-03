#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.vortexacore/vortexad.pid file instead
vortexa_pid=$(<~/.vortexacore/testnet3/vortexad.pid)
sudo gdb -batch -ex "source debug.gdb" vortexad ${vortexa_pid}
