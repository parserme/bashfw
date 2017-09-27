#!/bin/bash
#cp1251 אבגדהו¸זחטיךכלםמןנסעףפץצקרשתûü‎‏ÿÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞ‗
function translit1251clear {
	sed -r "y/\xe0\xe1\xe2\xe3\xe4\xe5\xb8\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xfb\xfd\xc0\xc1\xc2\xc3\xc4\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xdb\xdd/abvgdeeziyklmnoprstufhyeabvgdziyklmnoprstufhye/;
	s/\xa8/e/;
	s/\xe6/zh/g;
	s/\xf6/ts/g;
	s/\xf7/ch/g;
	s/\xf8/sh/g;
	s/\xf9/sch/g;
	s/\xfe/yu/g;
	s/\xff/ya/g;
	s/\xc6/zh/g;
	s/\xd6/ts/g;
	s/\xd7/ch/g;
	s/\xd8/sh/g;
	s/\xd9/sch/g;
	s/\xde/yu/g;
	s/\xdf/ya/g;
	s/\xc5/e/g;
	s/\xfa//g;
	s/\xfc//g;
	s/\xda//g;
	s/\xdc//g;
	s/[^0-9a-z$1]+/_/g;
	s/(_$|^_|)//g;"
	}

function clearentities {
	sed -r 's/&#[0-9]+//g';
	}