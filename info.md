You could append it to your ```.bashrc``` but I find it easier to manage in
```.bash_aliases```. It uses ```top``` to extra system information, therefore
inherits your processor breakdown. By default ```top``` only displays one
processor, hit '1' to show all CPUs and 'W' to save as a default.

Trial it in your current shell:
```bash
source .bash_aliases
```

![](cpu.gif)
