doc=readme.md

all:
	echo '![](cpu.gif)' > $(doc)
	echo '```bash'     >> $(doc)
	cat .bash_aliases  >> $(doc)
	echo '```'         >> $(doc)
