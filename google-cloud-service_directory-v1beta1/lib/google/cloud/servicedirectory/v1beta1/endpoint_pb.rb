# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/servicedirectory/v1beta1/endpoint.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/servicedirectory/v1beta1/endpoint.proto", :syntax => :proto3) do
    add_message "google.cloud.servicedirectory.v1beta1.Endpoint" do
      optional :name, :string, 1
      optional :address, :string, 2
      optional :port, :int32, 3
      map :metadata, :string, :string, 4
    end
  end
end

module Google
  module Cloud
    module ServiceDirectory
      module V1beta1
        Endpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1beta1.Endpoint").msgclass
      end
    end
  end
end
