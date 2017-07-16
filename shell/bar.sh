#!/bin/bash


label=('|' '/' '-' '\\')
str=''
str1='' 
str2=''
k=0 #表示百分比进度

for i in {1..100}
do
	str+=" "	
done

for j in {0..200}
do
	let  n=j%4
	printf "\033[1;47m%s\033[0m [%d%%] [%c] \r" "$str" "$k" "${label[$n]}"
	printf "\033[1;46m%s\033[0m\r" "$str1"
	printf "\033[1;44m%s\033[0m\r" "$str2"
	if [ $j -lt 100 ] ; then 
	str1+=' '
	fi
	if [ $j -ge 20 -a $j -lt  120 ] ; then
	str2+=' '
	let k++
	elif [ $j -ge 120 ]  ; then
		break
	fi
	sleep 0.1
done

echo ""
