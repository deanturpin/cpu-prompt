Define a function to create a CPU summary string.

```bash
cpudump() {
  top -b - n 1 | grep %Cpu | cut -c9-11 | while read cpu; do
    (( $cpu >= 100 )) && cpu=99
    rep=$(( $cpu / 10 ))

    [[ $rep == "0" ]] && rep="_"
    echo -n "$rep"
  done;
}
```

Set prompt (single quotes so it doesn't get evaluated immediately).
```bash
PS1='$(cpudump)$ '
```
