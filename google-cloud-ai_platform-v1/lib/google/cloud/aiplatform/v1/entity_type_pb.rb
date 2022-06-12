# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/entity_type.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/feature_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/entity_type.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.EntityType" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      map :labels, :string, :string, 6
      optional :etag, :string, 7
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        EntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.EntityType").msgclass
      end
    end
  end
end