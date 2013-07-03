rlib: a.cc
	g++ -O3 -fPIC -c -o a.o a.cc `R CMD config --cppflags` -I/usr/include/qt4 -I/usr/local/include/luajit-2.0/ -I/usr/local/include/terra/
# -I/home/sguha/dev/terra/src
	g++ -O3 -shared a.o -o a.so `R CMD config --ldflags` -L/usr/lib/x86_64-linux-gnu/ -lQtCore  -L/usr/local/lib -lluajit-5.1 -lterra -lgsl
