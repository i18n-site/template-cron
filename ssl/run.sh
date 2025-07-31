#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR

set -ex

./build.sh

NODE_ENV=development ../run.sh $(basename $DIR)
