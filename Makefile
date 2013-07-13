rlib: rterra.cc
	g++ -O3 -fPIC -c -o rterra.o rterra.cc `R CMD config --cppflags` -I/usr/local/include/luajit-2.0/ -I/usr/local/include/terra/ -I.
# -I/home/sguha/dev/terra/src
	g++ -O3 -shared rterra.o -o rterra.so `R CMD config --ldflags`  -L/usr/local/lib -lluajit-5.1 -lterra 


gibbs: gibstest.cc
	g++ -O3 -fPIC -c -o gibstest.o gibstest.cc `R CMD config --cppflags` 
# -I/home/sguha/dev/terra/src
	g++ -O3 -shared gibstest.o -o gibstest.so `R CMD config --ldflags`  -L/usr/local/lib -lgsl -lgslcblas
