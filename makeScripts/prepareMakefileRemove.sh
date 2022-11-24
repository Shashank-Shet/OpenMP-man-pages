#!/bin/bash

rm -f "$1"
for target in $(ls "Zipped Pages"); do
	echo $target >> "$1"
done
