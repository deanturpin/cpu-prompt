
Set prompt (single quotes so it doesn't get evaluated immediately).
```bash
PS1='$(cpudump)$ '
```

Test with stress
```bash
sudo apt install stress

while :; do stress --cpu $(( $(nproc) * $RANDOM / 32767 )) --timeout 1; done
```

# Terminal info
RHEL9
```bash
TERM=xterm-256color
```
Kali
```bash
COLORTERM=truecolor
GNOME_TERMINAL_SCREEN=/org/gnome/Terminal/screen/26ed7854_6f97_4a81_8d48_f8d00a3bc2b3
TERM=xterm-256color
GNOME_TERMINAL_SERVICE=:1.138
```
