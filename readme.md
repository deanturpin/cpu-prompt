Define a function to create a CPU summary string.

```bash
cpudump() {
  top -b - n 1 | grep %Cpu | cut -c9-11 | while read cpu; do

    # Back off if we've hit 100
    (( $cpu >= 100 )) && cpu=99

    # Scale for printing
    rep=$(( $cpu / 10 ))

    # Print a minimal character if very low CPU usage
    [[ $rep == "0" ]] && rep="_"

    echo -n "$rep"
  done;
}
```

Set prompt (single quotes so it doesn't get evaluated immediately).
```bash
PS1='$(cpudump)$ '
```

Test with stress
```bash
sudo apt install stress

while :; do stress --cpu $(( $(nproc) * $RANDOM / 32767 )) --timeout 1; done
```
