#ifndef DATASPLTYPES_H
#define DATASPLTYPES_H

#include "ccpp_data.h"

#include <c_base.h>
#include <c_misc.h>
#include <c_sync.h>
#include <c_collection.h>
#include <c_field.h>

extern c_metaObject __data_NetworkPartitionsData__load (c_base base);

extern c_metaObject __NetworkPartitionsData_ChatMessage__load (c_base base);
extern const char * __NetworkPartitionsData_ChatMessage__keys (void);
extern const char * __NetworkPartitionsData_ChatMessage__name (void);
struct _NetworkPartitionsData_ChatMessage ;
extern  c_bool __NetworkPartitionsData_ChatMessage__copyIn(c_base base, struct NetworkPartitionsData::ChatMessage *from, struct _NetworkPartitionsData_ChatMessage *to);
extern  void __NetworkPartitionsData_ChatMessage__copyOut(void *_from, void *_to);
struct _NetworkPartitionsData_ChatMessage {
    c_long userID;
    c_long index;
    c_string content;
};

#endif
