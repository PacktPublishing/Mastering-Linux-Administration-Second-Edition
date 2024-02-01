#!/bin/bash
separator====================
separator=$separator$separator
header="\n %-10s %8s %10s %11s\n"
format=" %-10s %08d %10s %11.2f\n"
width=43
printf "$header" "PRODUCT" "ID" "ISLE" "PRICE"
printf "%$width.${width}s\n" "$separator"
printf "$format" \
Eggs 2876 D02 10 \
Meat 8748 M05 58.75 \
Cereals 3243 C11 25.5

