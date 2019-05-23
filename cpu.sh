#!/bin/bash

# prompt=$PS1

# count=0
# 
# while :; do
#   export PS1="$count $ "
#   sleep 1
#   (( ++count ))
# done

top -b - n 1 | grep %Cpu | cut -c9-11 | while read cpu; do

  # Back off if we've hit 100
  (( $cpu >= 100 )) && cpu=99

  # Print a single digit representation of CPU load
  rep=$(( $cpu / 10 ))

  [[ $rep == "0" ]] && rep="_"

  echo -n "$rep"
done

echo " $ "
