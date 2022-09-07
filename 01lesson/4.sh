#!/bin/bash

a=1
b=1
while [[ $a -ne 0 && $b -ne 0 ]]
do
    echo "Enter two numbers with space between"
    read a b
    if [[ $a =~ ^([0-9])+$ ]] && [[ $b =~ ^([0-9])+$ ]]
    then
    m=$a
    if [ $b -lt $m ]
    then
        m=$b
    fi
    while [ $m -ne 0 ]
    do
        x=`expr $a % $m`
        y=`expr $b % $m`
        if [ $x -eq 0 -a $y -eq 0 ]
        then
            echo gcd is $m
            break
        fi
        m=`expr $m - 1`
    done
    elif [[ $a =~ ^([0-9])+$ ]] && [[ $b == "" ]]
    then
        echo "Ошибка. Ожидалось 2 числа через пробел. Получено 1"
    fi
done
echo "bye"