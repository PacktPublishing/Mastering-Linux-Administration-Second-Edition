#!/bin/bash
price=20
vat=2
total=$(expr $price + $vat)
echo "The total price is: $total"
