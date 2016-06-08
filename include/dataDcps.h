//******************************************************************
// 
//  Generated by IDL to C++ Translator
//  
//  File name: dataDcps.h
//  Source: gencxx/dataDcps.idl
//  Generated: Wed Jun  8 21:43:46 2016
//  OpenSplice V6.4.140407OSS
//  
//******************************************************************
#ifndef _DATADCPS_H_
#define _DATADCPS_H_

#include "sacpp_mapping.h"
#include "sacpp_DDS_DCPS.h"
#include "dds_dcps.h"
#include "data.h"


namespace NetworkPartitionsData
{

   class ChatMessageTypeSupportInterface;

   typedef ChatMessageTypeSupportInterface * ChatMessageTypeSupportInterface_ptr;
   typedef DDS_DCPSInterface_var < ChatMessageTypeSupportInterface> ChatMessageTypeSupportInterface_var;
   typedef DDS_DCPSInterface_out < ChatMessageTypeSupportInterface> ChatMessageTypeSupportInterface_out;


   class ChatMessageDataWriter;

   typedef ChatMessageDataWriter * ChatMessageDataWriter_ptr;
   typedef DDS_DCPSInterface_var < ChatMessageDataWriter> ChatMessageDataWriter_var;
   typedef DDS_DCPSInterface_out < ChatMessageDataWriter> ChatMessageDataWriter_out;


   class ChatMessageDataReader;

   typedef ChatMessageDataReader * ChatMessageDataReader_ptr;
   typedef DDS_DCPSInterface_var < ChatMessageDataReader> ChatMessageDataReader_var;
   typedef DDS_DCPSInterface_out < ChatMessageDataReader> ChatMessageDataReader_out;


   class ChatMessageDataReaderView;

   typedef ChatMessageDataReaderView * ChatMessageDataReaderView_ptr;
   typedef DDS_DCPSInterface_var < ChatMessageDataReaderView> ChatMessageDataReaderView_var;
   typedef DDS_DCPSInterface_out < ChatMessageDataReaderView> ChatMessageDataReaderView_out;

   struct ChatMessageSeq_uniq_ {};
   typedef DDS_DCPSUVLSeq < ChatMessage, struct ChatMessageSeq_uniq_> ChatMessageSeq;
   typedef DDS_DCPSSequence_var < ChatMessageSeq> ChatMessageSeq_var;
   typedef DDS_DCPSSequence_out < ChatMessageSeq> ChatMessageSeq_out;
   class ChatMessageTypeSupportInterface
   :
      virtual public DDS::TypeSupport
   { 
   public:
      typedef ChatMessageTypeSupportInterface_ptr _ptr_type;
      typedef ChatMessageTypeSupportInterface_var _var_type;

      static ChatMessageTypeSupportInterface_ptr _duplicate (ChatMessageTypeSupportInterface_ptr obj);
      DDS::Boolean _local_is_a (const char * id);

      static ChatMessageTypeSupportInterface_ptr _narrow (DDS::Object_ptr obj);
      static ChatMessageTypeSupportInterface_ptr _unchecked_narrow (DDS::Object_ptr obj);
      static ChatMessageTypeSupportInterface_ptr _nil () { return 0; }
      static const char * _local_id;
      ChatMessageTypeSupportInterface_ptr _this () { return this; }


   protected:
      ChatMessageTypeSupportInterface () {};
      ~ChatMessageTypeSupportInterface () {};
   private:
      ChatMessageTypeSupportInterface (const ChatMessageTypeSupportInterface &);
      ChatMessageTypeSupportInterface & operator = (const ChatMessageTypeSupportInterface &);
   };

   class ChatMessageDataWriter
   :
      virtual public DDS::DataWriter
   { 
   public:
      typedef ChatMessageDataWriter_ptr _ptr_type;
      typedef ChatMessageDataWriter_var _var_type;

      static ChatMessageDataWriter_ptr _duplicate (ChatMessageDataWriter_ptr obj);
      DDS::Boolean _local_is_a (const char * id);

      static ChatMessageDataWriter_ptr _narrow (DDS::Object_ptr obj);
      static ChatMessageDataWriter_ptr _unchecked_narrow (DDS::Object_ptr obj);
      static ChatMessageDataWriter_ptr _nil () { return 0; }
      static const char * _local_id;
      ChatMessageDataWriter_ptr _this () { return this; }

      virtual DDS::LongLong register_instance (const ChatMessage& instance_data) = 0;
      virtual DDS::LongLong register_instance_w_timestamp (const ChatMessage& instance_data, const DDS::Time_t& source_timestamp) = 0;
      virtual DDS::Long unregister_instance (const ChatMessage& instance_data, DDS::LongLong handle) = 0;
      virtual DDS::Long unregister_instance_w_timestamp (const ChatMessage& instance_data, DDS::LongLong handle, const DDS::Time_t& source_timestamp) = 0;
      virtual DDS::Long write (const ChatMessage& instance_data, DDS::LongLong handle) = 0;
      virtual DDS::Long write_w_timestamp (const ChatMessage& instance_data, DDS::LongLong handle, const DDS::Time_t& source_timestamp) = 0;
      virtual DDS::Long dispose (const ChatMessage& instance_data, DDS::LongLong handle) = 0;
      virtual DDS::Long dispose_w_timestamp (const ChatMessage& instance_data, DDS::LongLong handle, const DDS::Time_t& source_timestamp) = 0;
      virtual DDS::Long writedispose (const ChatMessage& instance_data, DDS::LongLong handle) = 0;
      virtual DDS::Long writedispose_w_timestamp (const ChatMessage& instance_data, DDS::LongLong handle, const DDS::Time_t& source_timestamp) = 0;
      virtual DDS::Long get_key_value (ChatMessage& key_holder, DDS::LongLong handle) = 0;
      virtual DDS::LongLong lookup_instance (const ChatMessage& instance_data) = 0;

   protected:
      ChatMessageDataWriter () {};
      ~ChatMessageDataWriter () {};
   private:
      ChatMessageDataWriter (const ChatMessageDataWriter &);
      ChatMessageDataWriter & operator = (const ChatMessageDataWriter &);
   };

   class ChatMessageDataReader
   :
      virtual public DDS::DataReader
   { 
   public:
      typedef ChatMessageDataReader_ptr _ptr_type;
      typedef ChatMessageDataReader_var _var_type;

      static ChatMessageDataReader_ptr _duplicate (ChatMessageDataReader_ptr obj);
      DDS::Boolean _local_is_a (const char * id);

      static ChatMessageDataReader_ptr _narrow (DDS::Object_ptr obj);
      static ChatMessageDataReader_ptr _unchecked_narrow (DDS::Object_ptr obj);
      static ChatMessageDataReader_ptr _nil () { return 0; }
      static const char * _local_id;
      ChatMessageDataReader_ptr _this () { return this; }

      virtual DDS::Long read (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long take (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long read_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long take_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long read_next_sample (ChatMessage& received_data, DDS::SampleInfo& sample_info) = 0;
      virtual DDS::Long take_next_sample (ChatMessage& received_data, DDS::SampleInfo& sample_info) = 0;
      virtual DDS::Long read_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long take_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long read_next_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long take_next_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long read_next_instance_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long take_next_instance_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long return_loan (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq) = 0;
      virtual DDS::Long get_key_value (ChatMessage& key_holder, DDS::LongLong handle) = 0;
      virtual DDS::LongLong lookup_instance (const ChatMessage& instance) = 0;

   protected:
      ChatMessageDataReader () {};
      ~ChatMessageDataReader () {};
   private:
      ChatMessageDataReader (const ChatMessageDataReader &);
      ChatMessageDataReader & operator = (const ChatMessageDataReader &);
   };

   class ChatMessageDataReaderView
   :
      virtual public DDS::DataReaderView
   { 
   public:
      typedef ChatMessageDataReaderView_ptr _ptr_type;
      typedef ChatMessageDataReaderView_var _var_type;

      static ChatMessageDataReaderView_ptr _duplicate (ChatMessageDataReaderView_ptr obj);
      DDS::Boolean _local_is_a (const char * id);

      static ChatMessageDataReaderView_ptr _narrow (DDS::Object_ptr obj);
      static ChatMessageDataReaderView_ptr _unchecked_narrow (DDS::Object_ptr obj);
      static ChatMessageDataReaderView_ptr _nil () { return 0; }
      static const char * _local_id;
      ChatMessageDataReaderView_ptr _this () { return this; }

      virtual DDS::Long read (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long take (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long read_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long take_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long read_next_sample (ChatMessage& received_data, DDS::SampleInfo& sample_info) = 0;
      virtual DDS::Long take_next_sample (ChatMessage& received_data, DDS::SampleInfo& sample_info) = 0;
      virtual DDS::Long read_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long take_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long read_next_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long take_next_instance (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ULong sample_states, DDS::ULong view_states, DDS::ULong instance_states) = 0;
      virtual DDS::Long read_next_instance_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long take_next_instance_w_condition (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq, DDS::Long max_samples, DDS::LongLong a_handle, DDS::ReadCondition_ptr a_condition) = 0;
      virtual DDS::Long return_loan (ChatMessageSeq& received_data, DDS::SampleInfoSeq& info_seq) = 0;
      virtual DDS::Long get_key_value (ChatMessage& key_holder, DDS::LongLong handle) = 0;
      virtual DDS::LongLong lookup_instance (const ChatMessage& instance) = 0;

   protected:
      ChatMessageDataReaderView () {};
      ~ChatMessageDataReaderView () {};
   private:
      ChatMessageDataReaderView (const ChatMessageDataReaderView &);
      ChatMessageDataReaderView & operator = (const ChatMessageDataReaderView &);
   };

}




#endif 