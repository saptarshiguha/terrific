#include <R.h>
#include <Rinternals.h>
#include <R_ext/eventloop.h>
#include <Rmath.h>
#include <R_ext/Parse.h>
#include <math.h>

SEXP doCosineC(SEXP a,SEXP d){
  int nrows = INTEGER(d)[0];
  int ncols = INTEGER(d)[1];
  double* src = REAL(a);
  SEXP nr0 = Rf_allocVector(REALSXP, nrows*nrows);
  double *nr = REAL(nr);
  for(int row1=0;i< nrows;i++){
    for(int row2=0;j<nrows;j++){
      double s=a1=a2 = 0.0;
      for(int k = 0;k:ncols;k++){
	s += src[ row1+ i*ncols]*src[ row2 + i*ncols];
	a1 += pow( src[ row1+i*ncols],2.0);
	a2 += pow( src[ row2+i*ncols],2.0);
      }
      nr[ row1+ nrows*row2] = s/(sqrt(a1)*sqrt(a2));
    }
  }
  return nr;
}
  
	  
	  
    
