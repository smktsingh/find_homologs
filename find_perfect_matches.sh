#!/bin/bash
makeblastdb -in "$2" -dbtype nucl -out database
blastn -query "$1" -db database -out "$3"
grep -c 'Sbjct' results.txt
