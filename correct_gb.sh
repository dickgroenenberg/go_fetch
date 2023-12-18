#!/bin/bash

# Adjust genbank files (to use Geneious output as input for go_fetch_mod.py)

for file in $(ls -1 *gb); do
	sed 's/standard_name/gene/g' $file | sed 's/gene="trnl/product="trnl/g' | sed 's/gene="rrn/product="rrn/g' | sed 's/gene="atp/gene="ATP/g' | sed 's/gene="cob/gene="CYTB/g' | sed 's/gene="cox/gene="COX/g' | sed 's/gene="nad/gene="ND/g' | sed 's/gene="ND4l/gene="ND4L/g' > temp.gb
	echo "mv temp.gb $file"
	mv temp.gb $file
done
