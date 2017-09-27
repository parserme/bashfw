#!/bin/bash
ERROR=[];
function error() {
	test "$1" == "0" || {
		echo "Error $1 ${ERROR[$1]}" 1>&2;
		}
	exit;
	}
trap 'error $?' 0;
