#!/bin/bash
file = $1
< /dev/urandom tr -dc A-Z-a-z-0-9 | fold -w28|head -n1 > "$file1".txt
