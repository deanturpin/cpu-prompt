Bash script that puts the current CPU usage right where you're looking!

You could append it to your ```.bashrc``` but I find it easier to manage in
```.bash_aliases```. It uses ```top``` at the mo therefore inherits whatever
processor breakdown you have. By default ```top``` only displays one processor
- hit '1' to show all CPUs and 'W' to save as a default.

![](cpu.gif)
```bash
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
```
