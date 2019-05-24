Bash script that constructs a processor load string to be used as a shell
prompt. It extracts CPU information from ```top``` and therefore inherits your
*current* processor summary. By default ```top``` displays only a single
processor summary, hit '1' to show all cores and 'W' to save as a default.

Trial it in your current shell:
```bash
source .bash_aliases
```

![](cpu.gif)
