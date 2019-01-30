#!/bin/bash

##
## Input parameters
##
TENDERMINT=/usr/bin/tendermint
PAUSTDB=/usr/bin/paust-db

if [ "$1" == "node" ]; then
	$PAUSTDB master -d $TMHOME
fi

$TENDERMINT $@
