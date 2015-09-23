terrific
========

Use Terra as an extension language for R

Installation
============

1. To build this package from GitHub, you need to download the binaries from
https://github.com/zdevito/terra/releases/latest
2. If your're on Linux, download the Linux binaries and change accordingly
2. Make a directory rterra/os-specific/linux
3. Copy terra-linux-x86_64-ABDECF/* to rterra/os-specific/linux/
4. Change directory to rterra and run `R CMD INSTALL .`

or you can download the pre built R package from the releases section of this GitHub repo (note it is large because
it contains binaries for Linux)

Currently, this does not work RHEL 6.6 because of glibc issues.
It does on work EMR instances of m1.medium (and c3.xlarge) and above.

This used to work with OS X, but I cannot test it now. Moreover, to use this
with R requires _recompilation_ of R with LuaJit specific compiler options
(rebasing). Since I doubt many R users will do this, I'm not so interested in
supporting it (but it is a matter of changing Makevars)

Cheers
Saptarshi
