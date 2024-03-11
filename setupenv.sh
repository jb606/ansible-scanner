#!/bin/bash

if [ ! -d "env" ]; then
	python3 -m venv env
	. env/bin/activate
	pip install -U pip
	pip install -r requirements.txt	
	ansible-galaxy collection install netbox.netbox

fi
