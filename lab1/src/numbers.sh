#!/bin/bash

MAXCOUNT=150
count=1

while [ "$count" -le $MAXCOUNT ]      # Генерация 10 ($MAXCOUNT) случайных чисел.
do
  SEED=$(head -1 /dev/random | od -N 1 | awk '{ print $2 }')
  RANDOM=$SEED
  echo $RANDOM
  let "count += 1"  # Нарастить счетчик.
done