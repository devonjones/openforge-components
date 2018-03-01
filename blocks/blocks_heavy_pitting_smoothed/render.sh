#!/bin/bash

: ${OPENSCAD:="openscad"}
: ${CONVERTSTL:="../../src/convertSTL.rb"}

for x in {0..184}
do
	results=$($OPENSCAD -o block-{$x}.stl \
			-D "num=$x" \
			-D "name=\"block_heavy_pitting_smoothed\"" \
			../src/cut_stone_blocks.scad 2>&1)
	name=$(echo $results | perl -pe "s/ECHO: \"//" | perl -pe "s/\".*//")
	mv block-{$x}.stl $name.stl
	${CONVERTSTL} $name.stl > /dev/null
	mv $name-binary.stl $name.stl
	echo $name.stl
done

