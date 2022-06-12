# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkconnectivity/v1alpha1/common.proto

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/networkconnectivity/v1alpha1/common.proto", :syntax => :proto3) do
    add_message "google.cloud.networkconnectivity.v1alpha1.OperationMetadata" do
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
    module NetworkConnectivity
      module V1alpha1
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1alpha1.OperationMetadata").msgclass
      end
    end
  end
end
