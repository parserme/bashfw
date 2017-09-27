#!/bin/bash
cd $(dirname $0);
readonly CDIR=$(pwd);
test -z "$CDIR" | exit 40;
test -f ${CDIR} | exit 41;

