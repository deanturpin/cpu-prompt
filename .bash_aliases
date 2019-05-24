# Append to .bashrc or .bash_aliases

cpu-stat(){

  # Strip CPU info
  stats=$(top -b -n 1 | grep %Cpu | cut -c9-11 | tr '\n' ' ')

  # Create some colours
  idle='\u001b[32m'
  low='\u001b[36m'
  medium='\u001b[33m'
  high='\u001b[31m'
  reset='\u001b[0m'

  # Create the summary by appending a single character for each CPU
  for cpu in $stats; do
    if (( $cpu < 25 ));   then prompt+="${idle}\u28c0"
    elif (( $cpu < 50 )); then prompt+="${low}\u28e4"
    elif (( $cpu < 75 )); then prompt+="${medium}\u28f6"
    else                       prompt+="${high}\u28ff"
    fi
  done

  echo -en $prompt$reset
}

PS1='$(cpu-stat) $ '
