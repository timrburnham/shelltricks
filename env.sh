#!/bin/bash

py=venv/bin/python
if [[ -x $py ]]; then
	exec $py $@ </dev/stdin >/dev/stdout
else
	echo "venv not found."
	exit 1
fi
