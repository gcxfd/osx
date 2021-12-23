#!/usr/bin/env bash

PWD=$(dirname $(realpath "$0"))
cd $PWD
set -ex

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

