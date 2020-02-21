#!/bin/bash

for((k=1;$k<=28; k=k+1))
do
echo $k 
wget "https://loremflickr.com/320/240/cat" -a "wget.log" -O "pdkt_kusuma_$k"
done


