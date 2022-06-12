# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1beta2/file.proto

require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/artifactregistry/v1beta2/file.proto", :syntax => :proto3) do
    add_message "google.devtools.artifactregistry.v1beta2.Hash" do
      optional :type, :enum, 1, "google.devtools.artifactregistry.v1beta2.Hash.HashType"
      optional :value, :bytes, 2
    end
    add_enum "google.devtools.artifactregistry.v1beta2.Hash.HashType" do
      value :HASH_TYPE_UNSPECIFIED, 0
      value :SHA256, 1
    end
    add_message "google.devtools.artifactregistry.v1beta2.File" do
      optional :name, :string, 1
      optional :size_bytes, :int64, 3
      repeated :hashes, :message, 4, "google.devtools.artifactregistry.v1beta2.Hash"
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      optional :owner, :string, 7
    end
    add_message "google.devtools.artifactregistry.v1beta2.ListFilesRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 4
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.devtools.artifactregistry.v1beta2.ListFilesResponse" do
      repeated :files, :message, 1, "google.devtools.artifactregistry.v1beta2.File"
      optional :next_page_token, :string, 2
    end
    add_message "google.devtools.artifactregistry.v1beta2.GetFileRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module ArtifactRegistry
      module V1beta2
        Hash = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Hash").msgclass
        Hash::HashType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Hash.HashType").enummodule
        File = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.File").msgclass
        ListFilesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListFilesRequest").msgclass
        ListFilesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListFilesResponse").msgclass
        GetFileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.GetFileRequest").msgclass
      end
    end
  end
end
