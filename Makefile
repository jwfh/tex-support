all:
	find . -not -path '*/\.*' -type d \( ! -iname ".*" \) -maxdepth 1 -exec make -C {} \;

clean:
	cat .gitignore | sed '/^#.*/ d' | sed '/^\s*$$/ d' | sed 's/^/rm -r **\//' | sed 's/(/\\\(/g;s/)/\\\)/g' | sh >/dev/null 2>&1 
