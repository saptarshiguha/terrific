gibbs: gibstest.cc
	g++ -O3 -fPIC -c -o gibstest.o gibstest.cc `R CMD config --cppflags` 
	g++ -O3 -shared gibstest.o -o gibstest.so `R CMD config --ldflags`  -L/usr/local/lib -lgsl -lgslcblas
