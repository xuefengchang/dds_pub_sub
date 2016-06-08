#include "dataSplDcps.h"
#include "ccpp_data.h"
#include "dds_type_aliases.h"

const char *
__NetworkPartitionsData_ChatMessage__name(void)
{
    return (const char*)"NetworkPartitionsData::ChatMessage";
}

const char *
__NetworkPartitionsData_ChatMessage__keys(void)
{
    return (const char*)"userID";
}

#include <v_kernel.h>
#include <v_topic.h>
#include <os_stdlib.h>
#include <string.h>
#include <os_report.h>

c_bool
__NetworkPartitionsData_ChatMessage__copyIn(
    c_base base,
    struct ::NetworkPartitionsData::ChatMessage *from,
    struct _NetworkPartitionsData_ChatMessage *to)
{
    c_bool result = OS_C_TRUE;
    (void) base;

    to->userID = (c_long)from->userID;
    to->index = (c_long)from->index;
#ifdef OSPL_BOUNDS_CHECK
    if(from->content){
        to->content = c_stringNew(base, from->content);
    } else {
        OS_REPORT (OS_ERROR, "copyIn", 0,"Member 'NetworkPartitionsData::ChatMessage.content' of type 'c_string' is NULL.");
        result = OS_C_FALSE;
    }
#else
    to->content = c_stringNew(base, from->content);
#endif
    return result;
}

void
__NetworkPartitionsData_ChatMessage__copyOut(
    void *_from,
    void *_to)
{
    struct _NetworkPartitionsData_ChatMessage *from = (struct _NetworkPartitionsData_ChatMessage *)_from;
    struct ::NetworkPartitionsData::ChatMessage *to = (struct ::NetworkPartitionsData::ChatMessage *)_to;
    to->userID = (::DDS::Long)from->userID;
    to->index = (::DDS::Long)from->index;
    to->content = DDS::string_dup(from->content ? from->content : "");
}

