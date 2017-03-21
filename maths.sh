#!/bin/bash
while(true)
do
    clear
    printf "Choose from the following operations: \n"
    printf "[a]ddition\n[b]Subtraction\n[c]Multiplication\n[d]Division\n"
    printf "################################\n"
    read -p "Your choice: " choice
    case $choice in
    [aA])
        read -p "Enter first integer: " int1
        read -p "Enter second integer: " int2
        res=$((int1+int2))

    ;;
    [bB])
        read -p "Enter first integer: " int1
        read -p "Enter second integer: " int2
    res=$((int1-int2))

    ;;
    [cC])
        read -p "Enter first integer: " int1
        read -p "Enter second integer: " int2
        res=$((int1*int2))

    ;;
    [dD])
        read -p "Enter first integer: " int1
        read -p "Enter second integer: " int2
        res=$((int1/int2))

    ;;
    *)
        res=0
        echo "wrong choice!"
    esac

    echo "The result is: " $res
    read -p "Do you wish to continue? [y]es or [n]o: " ans
    if [ $ans == 'n' ]
        then
         echo "Exiting the script. Have a nice day!"
        break
    else
        continue
    fi

done
