#!/bin/bash
tblastn -query "$1" -subject "$2" -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qlen" | awk '$3 > 30 && $4/$13 * 100 > 90 {print $0} ' > "$3"
wc=$(wc -l < "$3")
echo $wc

