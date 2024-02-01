#!/bin/bash
printf "Provide your first name:\n"
read FirstName
printf "Provide your last name:\n"
read LastName
printf 'Welcome: %s\n' "$FirstName $LastName"
