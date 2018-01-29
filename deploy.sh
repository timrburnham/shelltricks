#!/bin/bash

while read scl; do
	. scl_source enable $scl || exit
done <scl.txt

if [[ -e requirements.txt ]]; then
	python -m venv venv || exit
	venv/bin/pip install -r requirements.txt || exit
fi
