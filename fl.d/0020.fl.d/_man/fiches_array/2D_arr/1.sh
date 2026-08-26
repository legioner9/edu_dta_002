#!/bin/bash

declare -A massiv

massiv[0, 0]=1
massiv[0, 1]=2
massiv[1, 0]=3
massiv[1, 1]=4
massiv[2, 0]=5
massiv[2, 1]=6

max_str=$((${#massiv[@]} / 2))
echo "max_str=$max_str"
for i in {0.."$max_str"}; do
	echo "«строка» номер $i"
	for j in 0 1; do
		# echo "элемент из «столбца» номер $j в «строке» номер $i равен: ${massiv[$i,$j]} (ключ этого элемента — '$i,$j')"
		echo "\${massiv[$i,$j]=${massiv[$i, $j]}"
	done
done

echo
echo "все ключи массива   : ${!massiv[@]}"
echo "все элементы массива: ${massiv[@]}"
echo "количество элементов массива: ${#massiv[@]}"

num=0
while [ $num -lt 5 ]; do
	echo "num равно $num"
	num=$((num + 1))
done

for ((i = 0; i < "$((${#massiv[@]} / 2))"; i++)); do
	for ((j = 0; j < 2; j++)); do
		echo "\${massiv[$i,$j]=${massiv[$i, $j]}"
	done
done
