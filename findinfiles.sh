#!/bin/bash 
# program: find specific text in files with specific names
# Made by:  Daiyyr
# date:  2013/02/28

read -p "input your files name:" fname
read -p "and your key words:" key
gawk -v reg="\\\/\\\/.*$key|\\\/\\\*.*$key|$key.*\\\*\\\/" /$key/'{if($0 ~ reg ) ; else printf("%s:%d: %s\n",FILENAME, FNR, $0);}' `find -type f -name "$fname";` | tee log_findinfiles
