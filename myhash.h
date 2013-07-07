#ifndef MYHASH_H
#define MYHASH_H 

#include "uthash.h"
#include <stdint.h>


#define PRIMITIVE_STRUCT(NAME,TN)					\
  struct mhash ##TN {							\
  NAME key;								\
  void *value;								\
  UT_hash_handle hh;							\
  } ;									\
  struct mhash ##TN* addItem_ ##TN(struct mhash ##TN ** , NAME ,void * ); \
  struct mhash ##TN* findItem_ ##TN(struct mhash ##TN ** , NAME);	\
  void  deleteItem_ ##TN(struct mhash ##TN **,struct mhash ##TN *) ;	\
  struct mhash ##TN * createNewHashTable_ ##TN();			\
  unsigned int countItems_##TN(struct mhash ##TN **a);			\
  struct mhash ##TN * getFirst_##TN(struct mhash ##TN *);		\
  struct mhash ##TN * getNext_##TN(struct mhash ##TN *);		\
  struct mhash ##TN * getPrev_##TN(struct mhash ##TN *);		\
  

PRIMITIVE_STRUCT(int,int)
PRIMITIVE_STRUCT(int8_t,int8)
PRIMITIVE_STRUCT(int16_t,int16)
PRIMITIVE_STRUCT(int32_t,int32)
PRIMITIVE_STRUCT(int64_t,int64)

PRIMITIVE_STRUCT(uint,uint)
PRIMITIVE_STRUCT(uint8_t,uint8)
PRIMITIVE_STRUCT(uint16_t,uint16)
PRIMITIVE_STRUCT(uint32_t,uint32)
PRIMITIVE_STRUCT(uint64_t,uint64)

PRIMITIVE_STRUCT(double,double)

#define MAKE_HASH(NAME,TN)					\
  struct mhash ##TN * createNewHashTable_ ##TN(){		\
    struct mhash ##TN *a = NULL;					\
      return a;								\
  }									\
  struct mhash ##TN* addItem_ ##TN(struct mhash ##TN** a, NAME key,void * ptr){	\
    struct mhash ##TN *s = malloc(sizeof(struct mhash ##TN));		\
      s->key = key;							\
      s->value = ptr;							\
      struct mhash ##TN *r;						\
      HASH_REPLACE(hh, *a, key, sizeof(NAME), s,r);			\
	return(r);							\
  }									\
  struct mhash ##TN* findItem_ ##TN(struct mhash ##TN** a, NAME key) {	\
    struct mhash ##TN *s;						\
      HASH_FIND(hh, *a, &key, sizeof(NAME), s );  /* s: output pointer */ \
      free(s);								\
      return s;								\
  }									\
  void deleteItem_ ##TN(struct mhash ##TN **a,struct mhash ##TN *obj) {	\
    HASH_DELETE(hh, *a, obj);						\
    free(obj);								\
  }									\
  unsigned int countItems_ ##TN(struct mhash ##TN **a) {		\
    return HASH_COUNT(*a);						\
  }									\
  struct mhash ##TN * getFirst_##TN(struct mhash ##TN *a){		\
    return(a);								\
  }									\
  struct mhash ##TN * getNext_##TN(struct mhash ##TN *a){		\
    return (a->hh.next);						\
  }									\
  struct mhash ##TN * getPrev_##TN(struct mhash ##TN *a){		\
    return (a->hh.prev);						\
  }									\


#endif /* MYHASH_H */
