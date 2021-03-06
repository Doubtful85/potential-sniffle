# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/discovery.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/eventarc/v1/discovery.proto", :syntax => :proto3) do
    add_message "google.cloud.eventarc.v1.Provider" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      repeated :event_types, :message, 3, "google.cloud.eventarc.v1.EventType"
    end
    add_message "google.cloud.eventarc.v1.EventType" do
      optional :type, :string, 1
      optional :description, :string, 2
      repeated :filtering_attributes, :message, 3, "google.cloud.eventarc.v1.FilteringAttribute"
      optional :event_schema_uri, :string, 4
    end
    add_message "google.cloud.eventarc.v1.FilteringAttribute" do
      optional :attribute, :string, 1
      optional :description, :string, 2
      optional :required, :bool, 3
      optional :path_pattern_supported, :bool, 4
    end
  end
end

module Google
  module Cloud
    module Eventarc
      module V1
        Provider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Provider").msgclass
        EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.EventType").msgclass
        FilteringAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.FilteringAttribute").msgclass
      end
    end
  end
end
