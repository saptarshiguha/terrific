terrific
========

Use Terra as an extension language for R

Installation
============

1. To build this package from GitHub, you need to download the binaries from
https://github.com/zdevito/terra/releases/latest
2. If your're on Linux, download the Linux binaries and change accordingly
2. Make a directory rterra/os-specific/osx (/linux for Linux)
3. Copy terra-OSX-x86_64-ABDECF/* to rterra/os-specific/osx/
4. Change directory to rterra and run `R CMD INSTALL .` 

or you can download the pre built R package from the releases section of this GitHub repo (note it is large because
it contains binaries for both OS X and Linux)

Currently, this does not work RHEL 6.6 because of glibc issues.
It does on work EMR instances of m1.medium and above.

Cheers
Saptarshi

