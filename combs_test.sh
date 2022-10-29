#!/bin/bash

./crcExperiments testing:combs 1 > combs.txt
python3 verify_combs.py
rm combs.txt
