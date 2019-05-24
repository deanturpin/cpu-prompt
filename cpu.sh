#!/bin/bash

top -b - n 1 | grep %Cpu | cut -c9-11 | while read cpu; do

  red='\u001b[31m'
  green='\u001b[32m'
  cyan='\u001b[36m'
  yellow='\u001b[33m'
  reset='\u001b[0m'

  # Init prompt
  prommpt='-'

  if (( $cpu < 25 )); then prompt+="${green}\u28c0"
  elif (( $cpu < 50 )); then prompt+="${cyan}\u28e4"
  elif (( $cpu < 75 )); then prompt+="${yellow}\u28f6"
  else prompt+="${red}\u28ff"
  fi

  echo -en $prompt$reset
done
