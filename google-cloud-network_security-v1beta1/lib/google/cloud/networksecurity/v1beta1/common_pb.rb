# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networksecurity/v1beta1/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/networksecurity/v1beta1/common.proto", :syntax => :proto3) do
    add_message "google.cloud.networksecurity.v1beta1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
  end
end

module Google
  module Cloud
    module NetworkSecurity
      module V1beta1
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.OperationMetadata").msgclass
      end
    end
  end
end
