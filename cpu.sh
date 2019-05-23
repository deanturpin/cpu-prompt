#!/bin/bash

top -b - n 1 | grep %Cpu | cut -c9-11 | while read cpu; do

  # Back off if we've hit 100
  (( $cpu >= 100 )) && cpu=99

  # Print a single digit representation of CPU load
  rep=$(( $cpu / 10 ))

  [[ $rep == "0" ]] && rep="_"

  echo -n "$rep"
done

echo -n '\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$'
