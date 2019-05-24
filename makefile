doc=readme.md

all:
	cat info.md        > $(doc)
	echo '```bash'    >> $(doc)
	cat .bash_aliases >> $(doc)
	echo '```'        >> $(doc)
