#!/bin/awk -f
BEGIN { min1=1000000.0; min2=1000000.0; state1="x"; state2="y"; FS = "\t"; OFS = " "; }
($1!="Row ID"&&$13=="East") {
 if ( ($21+0.0)<min1 && $11!=state2 ) { 
  min1=($21+0.0);
  state1=$11;
 } else if ( ($21+0.0)<min2 && $11!=state1 ) {
  min2=($21+0.0);
  state2=$11;
 }
}
END { 
 print "state",state1,"dengan profit",min1;
 print "state",state2,"dengan profit",min2;
}
