#!/bin/bash
function exists {
	local needinst;
	for com in "$@"; do
		hash "$com" 2> /dev/null || { echo "Need to be installed: $com" 1>&2; needinst=1; }
		done
	test "$needinst" && exit 15;
	}