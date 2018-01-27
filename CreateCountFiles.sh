#!/bin/bash

cat $1 | tr '.' ',' > converted_dot.bed

intersectBed -a converted_dot.bed -b $2 -c > $2.count
intersectBed -a converted_dot.bed -b $3 -c > $3.count
intersectBed -a converted_dot.bed -b $4 -c > $4.count
intersectBed -a converted_dot.bed -b $5 -c > $5.count

cat $2.count | awk '{$1=""; print $0}' | sort -h | awk '{print $NF}' > $2.countlist
cat $3.count | awk '{$1=""; print $0}' | sort -h | awk '{print $NF}' > $3.countlist
cat $4.count | awk '{$1=""; print $0}' | sort -h | awk '{print $NF}' > $4.countlist
cat $5.count | awk '{$1=""; print $0}' | sort -h | awk '{print $NF}' > $5.countlist

python create_countable.py $2.countlist $3.countlist $4.countlist $5.countlist
