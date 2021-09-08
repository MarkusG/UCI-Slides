#!/bin/bash

for f in data*; do
	sensor="$(head -n 1 $f)"
	mkdir "$sensor"
	sed -ie '1d' $f
	mv $f "$sensor"
done
