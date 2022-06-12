# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/event.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/event.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Event" do
      optional :artifact, :string, 1
      optional :execution, :string, 2
      optional :event_time, :message, 3, "google.protobuf.Timestamp"
      optional :type, :enum, 4, "google.cloud.aiplatform.v1.Event.Type"
      map :labels, :string, :string, 5
    end
    add_enum "google.cloud.aiplatform.v1.Event.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :INPUT, 1
      value :OUTPUT, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Event").msgclass
        Event::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Event.Type").enummodule
      end
    end
  end
end
