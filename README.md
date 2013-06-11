terrific
========

Use Terra as an extension language for R

Installation
============

1. You need to install Clang and LLVM (3.2+)
2. You need to install luajit (http://luajit.org/download.html)
3. Checkout terra lang (https://github.com/zdevito/terra)

```bash
	git clone https://github.com/zdevito/terra
	cd terra
	make
	sudo cp build/libterra.so /usr/local/lib/
	sudo mkdir -p /usr/local/include/terra
	sudo cp src/terra.h /usr/local/include/terra/
```

4. In this directory (terrific), run make. Edit init.R and run
   `Rscript init.R`
