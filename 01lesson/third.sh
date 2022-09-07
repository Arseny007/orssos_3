#!/bin/bash

name="1"
age=1
while true
do
    read -p "Enter your name: " name
    if [ "$name" != "" ]
    then
        read -p "Enter your age: " age
        if [[ $age -eq "0" ]]
        then
            break
        elif [[ $age =~ ^([0-9])+$ ]]
        then
            if [[ $age -lt 17 ]]
            then
                echo "$name, your group is child"
            elif [[ $age -gt 25 ]]
            then
                echo "$name, your group is adult"
            else
                echo "$name, your group is youth"
            fi
        else
            echo "Ошибка. Ожидалось неотрицательное целое число в возрасте. Получено $age"
        fi
    else
        break
    fi
done
echo "bye"