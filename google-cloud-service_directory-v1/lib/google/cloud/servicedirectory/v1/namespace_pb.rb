# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/servicedirectory/v1/namespace.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/servicedirectory/v1/namespace.proto", :syntax => :proto3) do
    add_message "google.cloud.servicedirectory.v1.Namespace" do
      optional :name, :string, 1
      map :labels, :string, :string, 2
    end
  end
end

module Google
  module Cloud
    module ServiceDirectory
      module V1
        Namespace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1.Namespace").msgclass
      end
    end
  end
end
