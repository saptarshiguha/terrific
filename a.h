#ifndef	__a_h
#define	__a_h

#include <R.h>
#include <Rinternals.h>
#include <string.h>
#include <signal.h>
#include <unistd.h>
#include <R_ext/Parse.h>
typedef struct  {
  SEXP NilValue ;
  
  double NaN;
  double PosInf;
  double NegInf;
  
  double NaREAL;
  int NaINTEGER;
  int NaLOGICAL;
  SEXP NaSTRING;
  
  SEXP GlobalEnv;
  SEXP EmptyEnv;
  SEXP BaseEnv;
} _RConstants;


#endif

