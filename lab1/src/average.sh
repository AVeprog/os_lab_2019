#!/bin/bash 
i=0
x=0
sum=0
for an_arg in "$@" ; do
  sum=$(($sum + ${an_arg}))
  i=$(($i+1))
done
x=$(expr $sum / $i)
echo "Количество аргументов: $#"
echo "Среднее арифмитическое: "$x