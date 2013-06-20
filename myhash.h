#include "uthash.h"
#include <stdint.h>

struct hashT {
  uint64_t _key;
  void * _okey;
  void * _value;
  UT_hash_handle hh;
} ;
void addItem(struct hashT** , uint64_t ,void* ,void * );
void *findItem(struct hashT** , uint64_t);
void deleteItem(struct hashT**,struct hashT *) ;
struct hashT* createNewHashTable();


