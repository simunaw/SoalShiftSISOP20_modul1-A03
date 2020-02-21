#!/bin/awk -f
BEGIN {
 for (i = 0; i < 10; i++){
  profits[i] = 100000.0;
  products[i] = "";
 }
 FS = "\t";
 OFS = " ";
}
($1!="Row ID"&&($11=="Pennsylvania"||$11=="Ohio")){
  for (i = 0; i < 10; i++){
   if ( profits[i] > ($21+0.0) ) {
    profits[i] = ($21+0.0);
    products[i] = $17;
    break;
   }
  }
}
END { 
 for (i = 0; i < 10; i++){
  print products[i],"dengan profit",profits[i]
 }
}
