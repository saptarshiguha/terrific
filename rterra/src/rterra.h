#ifndef	__rterra_h
#define	__rterra_h

#include <R.h>
#include <Rinternals.h>
#include <R_ext/eventloop.h>
#include <Rmath.h>
#include <R_ext/Parse.h>

#ifdef __cplusplus 
extern "C" {
#endif
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
    SEXP UnboundValue;
    InputHandler *InputHandlers;
  } _RConstants;

  SEXP  rexpress(const char* );
  /* SEXP  getGlobalEnv(); */
  const char *mychar(SEXP );
  int   type(SEXP);
  void  getConstants(_RConstants*);
  void setCStackLimit(int a);
  int isNaN(double x);
#ifdef __cplusplus
}
#endif
#endif

