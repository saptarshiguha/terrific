#include <R.h>
#include <Rinternals.h>
#include "terra.h"
#include <string.h>
#include <signal.h>
#include <unistd.h>
#include <R_ext/Parse.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
#include "a.h"
static lua_State * L;
_RConstants RConstants;
extern "C" {

  SEXP doSetN(SEXP a){
    double* b = REAL(a);
    SEXP dims = Rf_getAttrib(a,Rf_install("dim"));
    int nrows = INTEGER(dims)[0];
    int ncols = INTEGER(dims)[1];
    for(int i=0; i< nrows;i++){
      for(int j=0; j<ncols;j++){
	b[ i+j*nrows] = 10;
      }
    }
    return R_NilValue;
  }

  const gsl_rng_type* get_mt19937(){
    return gsl_rng_mt19937;
  }
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
	  
  SEXP  doerror(lua_State * L) {
    const char *x = luaL_checkstring(L,-1);
    SEXP s;
    PROTECT(s = Rf_allocVector(STRSXP,1));
    SET_STRING_ELT(s,0,Rf_mkCharLen(x,strlen(x)));
    UNPROTECT(1);
    return (s);
  }

  SEXP newTerra(){
    SEXP s=R_NilValue;
    lua_State *l = luaL_newstate(); //create a plain lua state
    luaL_openlibs(l);                //initialize its libraries
    //initialize the terra state in lua
    if(terra_init(l)){
      return(doerror(l));
    }
    return(s);
  }

  SEXP initTerrific(SEXP r0){
    SEXP s=R_NilValue;
    if(!L){
      L = luaL_newstate(); //create a plain lua state
      luaL_openlibs(L);                //initialize its libraries
      //initialize the terra state in lua
      if(terra_init(L)){
	return(doerror(L));
      }
    }
    return(s);  
  }
  int traceback (lua_State *L) {
    if (!lua_isstring(L, 1))  /* 'message' not a string? */
      return 1;  /* keep it intact */
    lua_getfield(L, LUA_GLOBALSINDEX, "debug");
    if (!lua_istable(L, -1)) {
      lua_pop(L, 1);
      return 1;
    }
    lua_getfield(L, -1, "traceback");
    if (!lua_isfunction(L, -1)) {
      lua_pop(L, 2);
      return 1;
    }
    lua_pushvalue(L, 1);  /* pass error message */
    lua_pushinteger(L, 2);  /* skip this function and traceback */
    lua_call(L, 2, 1);  /* call debug.traceback */
    return 1;
  }


  void l_message (const char *pname, const char *msg) {
    if (pname) fprintf(stderr, "%s: ", pname);
    fprintf(stderr, "%s\n", msg);
    fflush(stderr);
  }
  void lstop (lua_State *L, lua_Debug *ar) {
    (void)ar;  /* unused arg. */
    lua_sethook(L, NULL, 0, 0);
    luaL_error(L, "interrupted!");
  }

  static void laction (int i) {
    signal(i, SIG_DFL); /* if another SIGINT happens before lstop,
			   terminate process (default action) */
    lua_sethook(L, lstop, LUA_MASKCALL | LUA_MASKRET | LUA_MASKCOUNT, 1);
  }

  int report (lua_State *L, int status) {
    if (status && !lua_isnil(L, -1)) {
      const char *msg = lua_tostring(L, -1);
      if (msg == NULL) msg = "(error object is not a string)";
      l_message("Terrific Error: ", msg);
      lua_pop(L, 1);
    }
    return status;
  }

  int docall (lua_State *L, int narg) {
    int status;
    int base = lua_gettop(L) - narg;  /* function index */
    lua_pushcfunction(L, traceback);  /* push traceback function */
    lua_insert(L, base);  /* put it under chunk and args */
    signal(SIGINT, laction);
    status = lua_pcall(L, narg, 1, base);
    signal(SIGINT, SIG_DFL);
    lua_remove(L, base);
    // if (status != 0) {
      lua_gc(L, LUA_GCCOLLECT, 0);
    // }
    return status;
  }

 
  SEXP terraDoFile(SEXP s){
    const char *s1 = CHAR(STRING_ELT(s,0));
    int r = terra_dofile(L, s1);
    lua_gc(L,LUA_GCCOLLECT,0);
    if(r) {
      return(doerror(L));
    }
    SEXP res = Rf_allocVector(INTSXP, 1);
    INTEGER(res)[0] = r;
    return(res); // 0 is okay, 1 is BAD
  }

  SEXP carryOn(SEXP _n,int n){
    int status= docall(L,n);
    report(L,status);
    if(!status){
      const void *p = lua_topointer (L,-1);
      if(p){
	SEXP a = (*((SEXP *)p));
	lua_pop(L,1);
	return(a);
      }
    }else Rf_error("Error in computing function:%s",STRING_ELT(_n,0));
    return(R_NilValue);
  }

  SEXP doTerraFunc0(SEXP _n, SEXP s1){
    lua_getfield(L, LUA_GLOBALSINDEX,CHAR(STRING_ELT(_n,0)));
    lua_pushlightuserdata(L, s1);
    return(carryOn(_n,0));
  }

  SEXP doTerraFunc1(SEXP _n, SEXP s1){
    lua_getfield(L, LUA_GLOBALSINDEX,CHAR(STRING_ELT(_n,0)));
    lua_pushlightuserdata(L, s1);
    return(carryOn(_n,1));
  }

  SEXP doTerraFunc2(SEXP _n,SEXP s1,SEXP s2){
    lua_getfield(L, LUA_GLOBALSINDEX,CHAR(STRING_ELT(_n,0)));
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    return(carryOn(_n,2));
  }
  SEXP doTerraFunc3(SEXP _n,SEXP s1,SEXP s2, SEXP s3){
    lua_getfield(L, LUA_GLOBALSINDEX,CHAR(STRING_ELT(_n,0)));
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    return(carryOn(_n,3));

  }
  SEXP doTerraFunc4(SEXP _n,SEXP s1,SEXP s2,SEXP s3,SEXP s4){
    lua_getfield(L, LUA_GLOBALSINDEX,CHAR(STRING_ELT(_n,0)));
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    lua_pushlightuserdata(L, s4);
    return(carryOn(_n,4));

  }
  SEXP doTerraFunc5(SEXP _n,SEXP s1,SEXP s2, SEXP s3,SEXP s4, SEXP s5){
    lua_getfield(L, LUA_GLOBALSINDEX,CHAR(STRING_ELT(_n,0)));
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    lua_pushlightuserdata(L, s4);
    lua_pushlightuserdata(L, s5);
    return(carryOn(_n,5));
  }
  SEXP rexpress(const char* cmd)
  {
    SEXP cmdSexp, cmdexpr, ans = R_NilValue;
    int i;
    ParseStatus status;
    PROTECT(cmdSexp = Rf_allocVector(STRSXP, 1));
    SET_STRING_ELT(cmdSexp, 0, Rf_mkChar(cmd));
    cmdexpr = PROTECT(R_ParseVector(cmdSexp, -1, &status, R_NilValue));
    if (status != PARSE_OK) {
      UNPROTECT(2);
      Rf_error("invalid call: %s", cmd);
      return(R_NilValue);
    }
    int rerr;
    for(i = 0; i < Rf_length(cmdexpr); i++)
      ans = R_tryEval(VECTOR_ELT(cmdexpr, i), R_GlobalEnv,&rerr);
    UNPROTECT(2);
    return(ans);
  }
  // SEXP rfunction(const char* fname, const char* ns, int args){
  //   SEXP Package;
  //   PROTECT(
  // 	    Package = eval( lang2( install("getNamespace"),
  // 				   ScalarString(mkChar(ns)) ),
  // 			    R_GlobalEnv
  // 			    )
  // 	    ); 
    
    
  // }
  SEXP getGlobalEnv(){
    return R_GlobalEnv;
  }
  int type(SEXP o){
    return TYPEOF(o);
  }
  const char* mychar(SEXP o){
    return CHAR(o);
  }
  _RConstants* getConstants(){
    RConstants.NilValue = R_NilValue;
    RConstants.NaN = R_NaN;
    RConstants.PosInf = R_PosInf;
    RConstants.NegInf = R_NegInf;
    RConstants.NaREAL = NA_REAL;
    RConstants.NaINTEGER = NA_INTEGER;
    RConstants.NaLOGICAL = NA_LOGICAL;
    RConstants.NaSTRING = R_NaString;
    RConstants.GlobalEnv = R_GlobalEnv;
    RConstants.EmptyEnv = R_EmptyEnv;
    RConstants.BaseEnv = R_BaseEnv;
    return &RConstants;
  }
}
