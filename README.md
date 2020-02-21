# SoalShiftSISOP20_modul1-A03
Laporan Penjelasan
1. 
a.) menentukan wilayah bagian (region) dengan profit paling sedikit
yang pertama adalah inisialisasi variabel 

```#!/bin/awk -f
BEGIN { min=100000.0; reg=""; FS = "\t"; OFS = " "; } ```

lalu mulai looping/iterasi pada file.tsv.
-untuk melewati baris kolom yang pertamanya bernilai "Row ID"

```($1!="Row ID")```
lalu pada looping disetiap baris terdapat pengecekan kondisi apakah kolom ke 21(kolom yang berisi nilai profit)
lebih kecil dari nilai yang ada di variabel min, jika iya maka dirubah pada nilai variabel min menjadi nilai yang ada pada kolom ke 21, dan nilai pada kolom 13 dimasukan ke variabel reg. setelah proses iterasi/ looping selesai, 

```($1!="Row ID"){ if ( ($21 + 0.0)<min ) { min=($21 + 0.0); reg=$13; } }```

Lalu print variabel reg dan min.

```END { print "Region",reg,"dengan profit",min,"adalah region dengan profit terkecil" }```

b.) Menampilkan dua negara(state) yang memiliki profit paling kecil
yang pertama adalah inisialisasi variabel 
```BEGIN { min1=1000000.0; min2=1000000.0; state1="x"; state2="y"; FS = "\t"; OFS = " "; }```

lalu mulai looping/iterai pada file tsv.


```($1!="Row ID"&&$13=="East") {
 if ( ($21+0.0)<min1 && $11!=state2 ) { 
  min1=($21+0.0);
  state1=$11;
  
  jika dilooping pertama tidak menemukan hasilnya, maka akan melooping berikut
  
 } else if ( ($21+0.0)<min2 && $11!=state1 ) {
  min2=($21+0.0);
  state2=$11;
 }
} ```

ketika kedua nya berjalan maka akan melakukan loop keduanya
lalu print state nya
```END { 
 print "state",state1,"dengan profit",min1;
 print "state",state2,"dengan profit",min2;
} ```

c.) Menampilkan 10 produk yang menampilkan profit paling kecil

seperti pada no 1 a dan b, no 1c juga pastinya yang pertama adalah inisialisasi variabel
setelah itu lalu looping/ iterasi profit

```#!/bin/awk -f
BEGIN {
 for (i = 0; i < 10; i++){
  profits[i] = 100000.0;
  products[i] = "";
 } ```
 
 setelah itu kita lakukan looping untuk mencari 10 produk dari hasil no 1a yaitu Pennsylvania dan Ohio
 
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

2a.)membuat password
```#!/bin/bash

< /dev/urandom tr -dc  A-Z-a-z-0-9 | head -c${1:-28}; echo;```

b.) menginput difile
```#!/bin/bash
file = $1
< /dev/urandom tr -dc A-Z-a-z-0-9 | fold -w28|head -n1 > "$file1".txt```

3. a.) Mendownload 28 gambar
yang pertama adlah lakukan looping seperti yang sudah dijelaskan pada modul 1 
```for((k=1;$k<=28; k=k+1))
do
echo $k 
wget "https://loremflickr.com/320/240/cat" -a "wget.log" -O "pdkt_kusuma_$k"
done ```
