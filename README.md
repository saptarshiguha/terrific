This article talks about building `rterra` from source. I will soon
post links to R packages for Linux and OSX that can be easily
installed without compilation.


## introduction

I wrote the rterra package that allows the R programmer to write very fast
extensions in Lua/Terra language. The Lua bit is executed by LuaJIT, a very very
fast Lua just in time compiler. What makes this package powerful is the that the
user can write programs in Terra, a statically typed extension to the Lua
language. Functions and code written in Terra get compiled to machine code (on
the fly) by LLVM.

The user of the rterra package need not have LLVM/Clang present on their
systems. The package comes with a self contained library (a hefty 100MB) that
contains the necessary bits. 

I lost interest in its development primarily because LuaJIT based dynamic
libraries would not load in OSX applications compiled without certain flags. In
the 2.1.0-beta3, this has now been fixed (a flag `LUAJIT_ENABLE_GC64` needs to
be set) and now the rterra package can be loaded for OS X and Linux. A windows
build is indeed possible, but I dont have the time for that.

This page exists to remind me how to download Clang/LLVM, patch the Terra
makefiles and build rterra packages.

## The Steps


### Getting LLVM/Clang

We will focus on the LLVM 3.9.0 version. For Linux, we will need to download and
compile both LLVM and Clang. For OSX, we can download binaries.

## Checkout Terra

We will checkout Terra from [here](https://github.com/zdevito/terra) and
remember to switch the commit hash `67a08ccbddcdec3626ff86c11d6d571bb924522e`
(on March 15, 2017). This is the commit hash i worked with. These instructions
might or might not work with later hashes.

We will edit `Makefile` in the root folder of LuaJIT by modifying the rule to
build `libluajit` to un-comment the `LUAJIT_ENABLE_GC64` flag bit


```
build/lib/libluajit-5.1.a: build/$(LUAJIT_TAR)
        (cd build; tar -xf $(LUAJIT_TAR))
ifeq ($(UNAME), Darwin)
	@echo "On Darwin: Uncommenting LUAJIT_ENABLE_GC64"
        (cd $(LUAJIT_DIR); sed -i -e '/-DLUAJIT_ENABLE_GC64/s/^#//g' src/Makefile)
endif
     	(cd $(LUAJIT_DIR); make install PREFIX=$(realpath build) CC=$(CC) STATIC_CC="$(CC) -fPIC")
```

and we add a `Makefile.inc` that contains the path to the clang/llvm. This is
what it looks like on OSX

```
LLVM_CONFIG =/Users/sguha/Downloads/clang+llvm-3.9.0-x86_64-apple-darwin/bin/llvm-config
LUAJIT_VERSION_BASE =2.1
LUAJIT_VERSION_EXTRA =.0-beta3
```

and what it looks like on Linux





