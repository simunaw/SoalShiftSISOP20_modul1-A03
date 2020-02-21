#!/bin/awk -f
BEGIN { min=100000.0; reg=""; FS = "\t"; OFS = " "; }
($1!="Row ID"){ if ( ($21 + 0.0)<min ) { min=($21 + 0.0); reg=$13; } }
END { print "Region",reg,"dengan profit",min,"adalah region dengan profit terkecil" }


