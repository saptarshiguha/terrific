#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
#include <R.h>
#include <Rinternals.h>


extern "C" {
  // const gsl_rng_type* get_mt19937(){
  //   return gsl_rng_mt19937;
  // }
  SEXP doGibbs(SEXP p){
    int N=INTEGER(p)[0];
    int thin=INTEGER(p)[1];
    SEXP r ;
    PROTECT(r=Rf_allocVector(REALSXP, N*2));
    int i,j;
    gsl_rng *rng = gsl_rng_alloc(gsl_rng_mt19937);
    double x=0;
    double y=0;
    double* base = REAL(r);
    for (i=0;i<N;i++) {
      for (j=0;j<thin;j++) {
    	x=gsl_ran_gamma(rng,3.0,1.0/(y*y+4));
    	y=1.0/(x+1)+gsl_ran_gaussian(rng,1.0/sqrt(2*x+2));
    	base[ i ]  = x; base[i+N] = y;
      }
    }
    UNPROTECT(1);
    return(r);
  }
}
	  
