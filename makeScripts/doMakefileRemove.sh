#!/bin/bash

for target in $(cat "$1"); do
	rm -f "$2/$target"
done
rm -f "$1"
