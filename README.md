This article talks about building `rterra` from source. I will soon
post links to R packages for Linux and OSX that can be easily
installed without compilation.

## Introduction

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

### R Version

I tested with R version 3.3.1 on Centos7 and R version 3.4.0  on macOS Sierra.
Be sure to install XCode command line tools on macOS.


### Getting LLVM/Clang

We will focus on the LLVM 3.9.1 version. For Centos 7, we will need to download the
source and compile both LLVM and Clang. For OSX and Ubuntu we can download binaries.

For checking source out and compiling, i referred
to [these](https://www.vultr.com/docs/how-to-install-llvm-and-clang-on-centos-6)
instructions. We'll need the latest version of `cmake` for example Centos7 had
an old version of `cmake`(*CMake 3.4.3 or higher is required*).

Run

```bash
svn ls http://llvm.org/svn/llvm-project/llvm/tags | grep RELEASE

RELEASE_1/
RELEASE_11/
RELEASE_12/
RELEASE_13/
RELEASE_14/
RELEASE_15/
...
...
RELEASE_390/
RELEASE_391/
RELEASE_400/
RELEASE_401/

```

we will focus on `RELEASE_391`

```bash
mkdir  rterrainstall
mkdir rterrainstall/llvmclang
cd rterrainstall
svn co http://llvm.org/svn/llvm-project/llvm/tags/RELEASE_391/final llvm_RELEASE_391
cd llvm_RELEASE_391/tools
svn co http://llvm.org/svn/llvm-project/cfe/tags/RELEASE_391/final clang
cd ../projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/tags/RELEASE_391/final compiler-rt
svn co http://llvm.org/svn/llvm-project/libcxx/tags/RELEASE_391/final libcxx
svn co http://llvm.org/svn/llvm-project/libcxxabi/tags/RELEASE_391/final libcxxabi
cd ..
svn update
```

We will then compile it and install it locally inside the build folder.

```bash
mkdir ../llvm_RELEASE_391_build
cd ../llvm_RELEASE_391_build
cmake -DCMAKE_BUILD_TYPE=Release ../llvm_RELEASE_391 -DCMAKE_INSTALL_PREFIX=../llvmclang/ && make -j5
```

and then check versions e.g. `clang --version` (remember to run it from the
install path). 

These instructions work(download source and compile) for Centos 7, AWS EMR
(c4.2xlarge instances), Ubuntu Precise and macOS Sierra. For macOS and ubuntu,
you can also download the binaries without having to compile. But this
compilation approach works for all platforms.


### Checkout Terra

We will checkout Terra from [here](https://github.com/zdevito/terra) and
remember to switch the commit hash `67a08ccbddcdec3626ff86c11d6d571bb924522e`
(on March 15, 2017). This is the commit hash i worked with. These instructions
might or might not work with later hashes.

```bash
git clone https://github.com/zdevito/terra.git
cd terra
git checkout 67a08ccbddcdec3626ff86c11d6d571bb924522e
```

We will edit `Makefile` in the root folder of LuaJIT by modifying the rule to
build `libluajit` to un-comment the `LUAJIT_ENABLE_GC64` flag bit
(if you copy paste this, change spaces to tabs)

```make
build/lib/libluajit-5.1.a: build/$(LUAJIT_TAR)
        (cd build; tar -xf $(LUAJIT_TAR))
ifeq ($(UNAME), Darwin)
	@echo "On Darwin: Uncommenting LUAJIT_ENABLE_GC64"
        (cd $(LUAJIT_DIR); sed -i -e '/-DLUAJIT_ENABLE_GC64/s/^#//g' src/Makefile)
endif
     	(cd $(LUAJIT_DIR); make install PREFIX=$(realpath build) CC=$(CC) STATIC_CC="$(CC) -fPIC")

```
Also, for Linux builds and LuaJIT-2.1.0-beta3, the following commands in Makefile

```make
#rule for packaging lua code into a header file
# fix narrowing warnings by using unsigned char
build/%.h:      src/%.lua $(PACKAGE_DEPS)
        $(LUAJIT) -bg $< -t h - | sed "s/char/unsigned char/" > $@
```

cause `unsigned unsigned` to be written in some of the generated `.h` files
(e.g. `asdl.h`). A fix for the version of LuaJIT 2.1.0-beta3 is

```make
build/%.h:      src/%.lua $(PACKAGE_DEPS)
        $(LUAJIT) -bg $< -t h - | sed "s/const char/const unsigned char/" > $@

```
and we add a `Makefile.inc` that contains the path to the clang/llvm. This is
what it looks like on OSX. 

```bash
LLVM_CONFIG = /Users/sguha/Downloads/clang+llvm-3.9.0-x86_64-apple-darwin/bin/llvm-config
LUAJIT_VERSION_BASE =2.1
LUAJIT_VERSION_EXTRA =.0-beta3
```


and what it looks like on Linux

```bash
LLVM_CONFIG =/home/sguha/tmp/rterrainstall/llvmclang/bin/llvm-config
LUAJIT_VERSION_BASE =2.1
LUAJIT_VERSION_EXTRA =.0-beta3
```

Now, compile Terra,

```bash
make
```

### Checkout Terrific

Checkout rterra 

```bash
git clone https://github.com/saptarshiguha/terrific.git
cd terrific/rterra
mkdir copies

```

Now copy everything from terra's release folder to `copies/`
and compile

```bash
cp -r  ../../terra/release/* copies/
```

And now, 

```bash
R CMD INSTALL .
```
(or package it as a release)


