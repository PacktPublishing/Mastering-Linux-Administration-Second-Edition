#!/bin/bash
var1='1'
var2='2'

var_function () {
	local var1='11'
	var2='22'
	echo "variables INSIDE the function are: var1=$var1, var2=$var2"
}
echo "variables BEFORE the function are: var1=$var1, var2=$var2"
var_function
echo "variables AFTER executing the function are: var1=$var1, var2=$var2"
