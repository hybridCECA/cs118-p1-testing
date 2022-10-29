#!/bin/bash
echo "Should print 21 choose 10 = 352716"

./crcExperiments testing:combs 1 > combs.txt
python3 verify_combs.py
rm combs.txt
