# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/conversation_event.proto

require 'google/cloud/dialogflow/v2/participant_pb'
require 'google/rpc/status_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/v2/conversation_event.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.v2.ConversationEvent" do
      optional :conversation, :string, 1
      optional :type, :enum, 2, "google.cloud.dialogflow.v2.ConversationEvent.Type"
      optional :error_status, :message, 3, "google.rpc.Status"
      oneof :payload do
        optional :new_message_payload, :message, 4, "google.cloud.dialogflow.v2.Message"
      end
    end
    add_enum "google.cloud.dialogflow.v2.ConversationEvent.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :CONVERSATION_STARTED, 1
      value :CONVERSATION_FINISHED, 2
      value :HUMAN_INTERVENTION_NEEDED, 3
      value :NEW_MESSAGE, 5
      value :UNRECOVERABLE_ERROR, 4
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        ConversationEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationEvent").msgclass
        ConversationEvent::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationEvent.Type").enummodule
      end
    end
  end
end
