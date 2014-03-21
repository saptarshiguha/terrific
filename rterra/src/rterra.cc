#include <string.h>
#include <signal.h>
#include <unistd.h>
#include <stdint.h>
#include <terra.h>
#include <stdarg.h>
#include "rterra.h"

static lua_State * L;
extern uintptr_t R_CStackLimit;
#define MY_ERR_BUF 1024*1024
const char* RERR_OBJNOTSTRING= "error object is not a string";
const char* RERR_TERRIFIC= ": ";
const char* RERR_STRANGETABLE= "you are returning strange tables";
const char* RERR_COMPUTE= "error in computing function: ";
const char* RERR_LIBLOAD="error in Loading Libraries";

extern "C" {
  void setCStackLimit(int a){
    R_CStackLimit = a;
  }
  SEXP initTerrific(SEXP r0){
    SEXP s=R_NilValue;
    if(!L){
      L = luaL_newstate(); //create a plain lua state
      if(!L){
	Rf_error("(terra): %s","luaL_newstate returned null\n");
	return(s);
      }
      luaL_openlibs(L);                //initialize its libraries
      //initialize the terra state in lua
      terra_Options t = { INTEGER(r0)[0],INTEGER(r0)[1]};
      if(terra_initwithoptions(L,&t)){
	Rf_error("(terra): %s",(char*)luaL_checkstring(L,-1));
      }
      lua_pushlightuserdata(L, (void *)L);
      lua_pushstring(L, NULL);
      lua_settable(L, LUA_REGISTRYINDEX);
    }
    return(s);  
  }
  SEXP isInitialized(SEXP r0){
    SEXP s=R_NilValue;
    if(L){
      s=R_NaString;
    }
    return s;
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

  const char* report (lua_State *L, int status) {
    if (status && !lua_isnil(L, -1)) {
      const char *msg = (const char *)luaL_checkstring(L, -1);
      if (msg == NULL) msg = RERR_OBJNOTSTRING;
      lua_pop(L, 1);
      return(msg);
    }
    return NULL;
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
    if (status != 0) {
      lua_gc(L, LUA_GCCOLLECT, 0);
    }
    return status;
  }
  SEXP carryOn(SEXP _n,int n){
    int status= docall(L,n);
    const char* err = report(L,status);
    SEXP retvalue = R_NilValue;
    if(!err){
      int rt = lua_type(L,-1);
      const void *p = lua_topointer (L,-1);
      if(p){
	SEXP a;
	if(rt == LUA_TLIGHTUSERDATA )
	  a = (SEXP)p;
	else if(rt == LUA_TTABLE){
	  lua_getfield(L,-1,"sexp");
	  a = (SEXP)(lua_topointer(L,-1));
	  if(!a) 
	    Rf_error("(terra): %s",RERR_STRANGETABLE);
	}else  a = *((SEXP *)p);
	lua_pop(L,1);
	retvalue = a;
      }
    }else{
      Rf_error("(terra): %s",err);
    }
    // lua_gc(L, LUA_GCCOLLECT, 0);
    return(retvalue);
  }
  
 
  SEXP terraDoFile(SEXP s){
    const char *s1 = CHAR(STRING_ELT(s,0));
    int r = terra_dofile(L, s1);
    if(r) {
      lua_gc(L,LUA_GCCOLLECT,0);
      Rf_error("(terra): %s",luaL_checkstring(L,-1));
    }
    // lua_gc(L, LUA_GCCOLLECT, 0);
    SEXP res = Rf_allocVector(INTSXP, 1);
    INTEGER(res)[0] = r;
    return(res); // 0 is okay, 1 is BAD
  }
  SEXP terraDoString(SEXP s){
    const char *s1 = CHAR(STRING_ELT(s,0));
    int r = terra_dostring(L, s1);
    if(r) {
      lua_gc(L,LUA_GCCOLLECT,0);
      Rf_error("(terra): %s",luaL_checkstring(L,-1));
    }
    // lua_gc(L, LUA_GCCOLLECT, 0);
    SEXP res = Rf_allocVector(INTSXP, 1);
    INTEGER(res)[0] = r;
    return(res); // 0 is okay, 1 is BAD
  }


  void setFunction(SEXP _n, SEXP tb){
    if(tb!=R_NilValue) {
      lua_getglobal(L, CHAR(STRING_ELT(tb,0)));
      if(lua_isnoneornil (L,-1)){
	Rf_error("(terra): %s","There was an error looking up the table");
      }
      lua_getfield(L,-1,CHAR(STRING_ELT(_n,0)));
    }else lua_getglobal(L,CHAR(STRING_ELT(_n,0)));
  }
				    
  SEXP doTerraFunc0(SEXP _n, SEXP tb){
    setFunction(_n, tb);
    return(carryOn(_n,0));
  }

  SEXP doTerraFunc1(SEXP _n,SEXP tb, SEXP s1){
    setFunction(_n, tb);
    lua_pushlightuserdata(L, s1);
    return(carryOn(_n,1));
  }
  SEXP doTerraFunc2(SEXP _n,SEXP tb,SEXP s1,SEXP s2){
    setFunction(_n, tb);
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    return(carryOn(_n,2));
  }
  SEXP doTerraFunc3(SEXP _n,SEXP tb,SEXP s1,SEXP s2, SEXP s3){
    setFunction(_n, tb);
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    return(carryOn(_n,3));
  }
  SEXP doTerraFunc4(SEXP _n,SEXP tb,SEXP s1,SEXP s2,SEXP s3,SEXP s4){
    setFunction(_n, tb);
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    lua_pushlightuserdata(L, s4);
    return(carryOn(_n,4));

  }
  SEXP doTerraFunc5(SEXP _n,SEXP tb,SEXP s1,SEXP s2, SEXP s3,SEXP s4, SEXP s5){
    setFunction(_n, tb);
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    lua_pushlightuserdata(L, s4);
    lua_pushlightuserdata(L, s5);
    return(carryOn(_n,5));
  }
  SEXP doTerraFunc6(SEXP _n,SEXP tb,SEXP s1,SEXP s2, SEXP s3,SEXP s4, SEXP s5,SEXP s6){
    setFunction(_n, tb);
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    lua_pushlightuserdata(L, s4);
    lua_pushlightuserdata(L, s5);
    lua_pushlightuserdata(L, s6);
    return(carryOn(_n,6));
  }
  SEXP doTerraFunc7(SEXP _n,SEXP tb,SEXP s1,SEXP s2, SEXP s3,SEXP s4, SEXP s5,SEXP s6,SEXP s7){
    setFunction(_n, tb);
    lua_pushlightuserdata(L, s1);
    lua_pushlightuserdata(L, s2);
    lua_pushlightuserdata(L, s3);
    lua_pushlightuserdata(L, s4);
    lua_pushlightuserdata(L, s5);
    lua_pushlightuserdata(L, s6);
    lua_pushlightuserdata(L, s7);
    return(carryOn(_n,7));
  }

  
  SEXP initLibraryLoad(SEXP r1,SEXP r2,SEXP r0){
     if(r1!=R_NilValue) {
      lua_getglobal(L, CHAR(STRING_ELT(r1,0)));
      lua_getfield(L, -1, CHAR(STRING_ELT(r2,0)));
     }else lua_getfield(L, LUA_GLOBALSINDEX,CHAR(STRING_ELT(r2,0)));

    for(int i=0; i< LENGTH(r0);i++){
      const char *f = CHAR(STRING_ELT(r0,i));
      lua_pushlstring(L, f, strlen(f));
    }
    int status= docall(L,LENGTH(r0));
    const char *err = report(L,status);
    if(err)
      Rf_error("(terra): %s",RERR_LIBLOAD);
    return(R_NilValue);
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
      Rf_error("(terra): %s","invalid call: %s", cmd);
      return(R_NilValue);
    }
    int rerr;
    for(i = 0; i < Rf_length(cmdexpr); i++)
      ans = R_tryEval(VECTOR_ELT(cmdexpr, i), R_GlobalEnv,&rerr);
    UNPROTECT(2);
    return(ans);
  }

  
  int type(SEXP o){
    return TYPEOF(o);
  }
  const char* mychar(SEXP o){
    return CHAR(o);
  }
  int isNaN(double f){
    return ISNAN(f);
  }
  void getConstants(_RConstants* RConstants){
    // _RConstants *rc =(_RConstants*)malloc(sizeof( _RConstants));
    RConstants->NilValue = R_NilValue;
    RConstants->NaN = R_NaN;
    RConstants->PosInf = R_PosInf;
    RConstants->NegInf = R_NegInf;
    RConstants->NaREAL = NA_REAL;
    RConstants->NaINTEGER = NA_INTEGER;
    RConstants->NaLOGICAL = NA_LOGICAL;
    RConstants->NaSTRING = R_NaString;
    RConstants->GlobalEnv = R_GlobalEnv;
    RConstants->EmptyEnv = R_EmptyEnv;
    RConstants->BaseEnv = R_BaseEnv;
    RConstants->InputHandlers = R_InputHandlers;
    RConstants->UnboundValue  = R_UnboundValue ;
  }
}
