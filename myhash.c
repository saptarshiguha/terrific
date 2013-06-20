#include "myhash.h"
struct hashT* createNewHashTable(){
  struct hashT *a = NULL;
  return a;
}

void addItem(struct hashT** a, uint64_t key,void* okey,void * ptr){
  struct hashT *s = malloc(sizeof(struct hashT));
  s->_key = key;
  s->_okey = okey;
  s->_value = ptr;
  struct hashT *r;
  HASH_REPLACE(hh, *a, _key, sizeof(uint64_t), s,r);
}

void* findItem(struct hashT** a, uint64_t key) {
    struct hashT *s;
    HASH_FIND(hh, *a, &key, sizeof(uint64_t), s );  /* s: output pointer */
    return s->_value;
}

void deleteItem(struct hashT**a,struct hashT *obj) {
  HASH_DELETE(hh, *a, obj);  
}

