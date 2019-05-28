Bash script that constructs a processor load string to be used as a shell
prompt. The scripts extracts CPU information from ```top``` and therefore
inherits your *current* ```top``` processor view. By default ```top``` displays
only a single processor, hit '1' to show all cores and 'W' to save as the
default.

Trial it in your current shell first:
```bash
git clone https://github.com/deanturpin/cpu-prompt
cd cpu-prompt
source .bash_aliases
```

![](cpu.gif)
