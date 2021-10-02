#!/bin/bash

#funtion to covert decimal to binary number
dtb(){
    echo "Enter the decimal number:"
    read dec
    i=0
    #converting the decimal number to binary
    #stored in the array in reverse order
    while [ $dec -ge 1 ]
    do
        rev[$i]=$(($dec%2))
        dec=$(($dec/2))
        i=$(($i+1))
    done

    #print the binary number
    j=$(($i-1))
    echo "The binary number is:"

    while [ $j -ge 0 ]
    do
        echo -n $((rev[$j]))
        j=$(($j-1))
    done
    echo
}

#binary to decimal
btd(){
    echo "Enter the binary number"
    read bin
    echo "Enter the number of digits of binary"
    read n

    i=0
    dec=0
    #converting binary to decimal
    while [ $i -lt $n ]
    do
        dig=$(($bin%10))
        bin=$(($bin/10))
        dec=$(($dec+$(($dig*$((2**$i))))))
        i=$(($i+1))
    done
    #print the decimal number
    echo "The decimal number is:"
    echo $dec
}

echo -e "Choice:\n1)Decimal to Binary\n2)Binary to Decimal"
read choice

case $choice in
    1) dtb
    ;;
    2) btd
    ;;
    *) echo "Invalid Option"
    ;;
esac