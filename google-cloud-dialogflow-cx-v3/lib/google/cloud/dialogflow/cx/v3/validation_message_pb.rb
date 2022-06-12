# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/validation_message.proto

require 'google/api/annotations_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/validation_message.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.ValidationMessage" do
      optional :resource_type, :enum, 1, "google.cloud.dialogflow.cx.v3.ValidationMessage.ResourceType"
      repeated :resources, :string, 2
      repeated :resource_names, :message, 6, "google.cloud.dialogflow.cx.v3.ResourceName"
      optional :severity, :enum, 3, "google.cloud.dialogflow.cx.v3.ValidationMessage.Severity"
      optional :detail, :string, 4
    end
    add_enum "google.cloud.dialogflow.cx.v3.ValidationMessage.ResourceType" do
      value :RESOURCE_TYPE_UNSPECIFIED, 0
      value :AGENT, 1
      value :INTENT, 2
      value :INTENT_TRAINING_PHRASE, 8
      value :INTENT_PARAMETER, 9
      value :INTENTS, 10
      value :INTENT_TRAINING_PHRASES, 11
      value :ENTITY_TYPE, 3
      value :ENTITY_TYPES, 12
      value :WEBHOOK, 4
      value :FLOW, 5
      value :PAGE, 6
      value :PAGES, 13
      value :TRANSITION_ROUTE_GROUP, 7
    end
    add_enum "google.cloud.dialogflow.cx.v3.ValidationMessage.Severity" do
      value :SEVERITY_UNSPECIFIED, 0
      value :INFO, 1
      value :WARNING, 2
      value :ERROR, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.ResourceName" do
      optional :name, :string, 1
      optional :display_name, :string, 2
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          ValidationMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ValidationMessage").msgclass
          ValidationMessage::ResourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ValidationMessage.ResourceType").enummodule
          ValidationMessage::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ValidationMessage.Severity").enummodule
          ResourceName = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResourceName").msgclass
        end
      end
    end
  end
end
