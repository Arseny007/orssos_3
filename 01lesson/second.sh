#!/bin/bash

read num
if [[ $num =~ ^([0-9])+$ ]]
then
    case $num in
    0) echo "No students";;
    1) echo "1 student";;
    2) echo "2 students";;
    3) echo "3 students";;
    4) echo "4 students";;
    *) echo "A lot of students";;
    esac
else
    echo "Ошибка. Ожидалось неотрицательное целое число. Получено $num"
fi