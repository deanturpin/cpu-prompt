Bash script that creates a CPU utilisation string to be used as a shell prompt.
It extracts CPU information from ```top``` therefore inherits your current
processor summary. By default ```top``` only displays one processor, hit '1'
to show all cores and 'W' to save as a default.

Trial it in your current shell:
```bash
source .bash_aliases
```

![](cpu.gif)
