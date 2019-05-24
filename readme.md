Bash script that constructs a processor load string to be used as a shell
prompt. The scripts extracts CPU information from ```top``` and therefore
inherits your *current* ```top``` processor view. By default ```top``` displays
only a single processor, hit '1' to show all cores and 'W' to save as the
default.

Trial it in your current shell:
```bash
source .bash_aliases
```

![](cpu.gif)
```bash
# Append to .bashrc or .bash_aliases

cpu-status-string(){

  # Create some colours
  idle="\u001b[32m"
  low="\u001b[36m"
  medium="\u001b[33m"
  high="\u001b[31m"
  reset="\u001b[0m"

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

  echo -en $status_string$reset
}

PS1='$(cpu-status-string) $ '
```
