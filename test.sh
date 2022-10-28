#!/bin/bash

for testfile in tests/*
do
	echo "Running $testfile"
	arguments=$(cat $testfile | sed -n '1p')
	expected=$(cat $testfile | sed -n '2p')

	actual=$(./crcExperiments $arguments | tr '\n' ' ' | sed -e 's/ $//')

	if [[ "$actual" != "$expected" ]]
	then
		echo "Error with $testfile"
		echo "Actual: $actual"
		echo "Expected: $expected"
	fi
	let counter++
done
echo "Completed $counter tests"
