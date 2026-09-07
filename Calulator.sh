#!/usr/bin/env bash

# linux_calulator-Bash- (by ishaan)
echo "               Simple calulator               "
while true; do 
   read -p "Enter first number:  " num1
   read -p "Enter second number:  " num2
      if [[ ! "$num1" =~ ^[0-9]+$ ]]; then
        echo " Please only enter numbers"
        echo
        continue
      fi
      
      if [[ ! "$num2" =~ ^[0-9]+$ ]]; then
        echo " Please only enter numbers"
        echo
        continue
      fi
      
      if [[ ! "$num2" =~ ^0+$ ]]; then
        sum4=$((num1/num2))
        echo
      fi
     
    break
done

sleep 2 &
wait

sum1=$((num1+num2))
sum2=$((num1-num2))
sum3=$((num1*num2))

echo "  Calulating..."
sleep 2 &
wait

echo "   Addition: $sum1"
echo "   Subtration: $sum2"
echo "   Multiplication: $sum3"
echo "   Division: $sum4"
