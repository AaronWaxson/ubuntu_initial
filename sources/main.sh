#!/bin/bash
set -e
# apt source backup
. $(pwd)/sources/apt_change.sh
# python source
. $(pwd)/sources/pip_change.sh