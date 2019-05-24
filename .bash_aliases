# Append to .bashrc or .bash_aliases

cpu-status-string(){

  # Create some colours
  idle="\u001b[32m"
  low="\u001b[36m"
  medium="\u001b[33m"
  high="\u001b[31m"
  reset="\u001b[00m"

  # Extract CPU info from top
  cpu_info=$(top -b -n 1 | grep %Cpu | cut -c9-11 | tr '\n' ' ')

  # Create the summary by appending a single character for each CPU
  for cpu in $cpu_info; do
    if   (( $cpu < 25 )); then status_string+="$idle\u28c0"
    elif (( $cpu < 50 )); then status_string+="$low\u28e4"
    elif (( $cpu < 75 )); then status_string+="$medium\u28f6"
    else                       status_string+="$high\u28ff"
    fi
  done

  echo -en "$status_string$reset $low\u2b50$reset "
}

PS1='$(cpu-status-string)'
