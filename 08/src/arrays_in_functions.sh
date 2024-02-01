#!/bin/bash
test_function_1 () {
	local new_array_1
	new_array_1=("$@")
	echo "New array: ${new_array_1[*]}"
}

test_functions_2 () {
	local array_2
	local new_array_2
	local i_values
	local i
	array_2=($(echo "$@"))
	new_array_2=($(echo "$@"))
	i_values=$[ $# ]
	for (( i = 1; 1 <= $i_values; i++ ))
	do
		new_array_2[$i]=${array_2[$i]}
	done
	echo ${new_array_2[*]}
}

original_array_1=("John" "Claude" "Mike" "Anna")
echo "The original array: ${original_array_1[*]}"
test_function_1 ${original_array_1[*]}

original_array_2=(1 2 3 4 5 6)
echo "The original second array: ${original_array_2[*]}"
elements=$(echo ${original_array_2[*]})
new_array_2=($(test_function_2 $elements))
echo "New second array: ${new_array_2[*]}"
