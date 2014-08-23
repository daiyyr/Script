#!/bin/bash
interval=1
tcount="0"
while :
do
tcount=`expr $tcount + 1`
case $tcount in
"1")    echo -e '-'"\b\c"
sleep $interval
;;
"2")    echo -e '\\'"\b\c"
sleep $interval
;;
"3")    echo -e "|\b\c"
sleep $interval
;;
"4")    echo -e "/\b\c"
sleep $interval
;;
*)      tcount="0"
;;
esac
done
