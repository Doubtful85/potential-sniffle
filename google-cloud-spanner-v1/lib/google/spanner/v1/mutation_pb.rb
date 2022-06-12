# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/v1/mutation.proto

require 'google/api/annotations_pb'
require 'google/protobuf/struct_pb'
require 'google/spanner/v1/keys_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/spanner/v1/mutation.proto", :syntax => :proto3) do
    add_message "google.spanner.v1.Mutation" do
      oneof :operation do
        optional :insert, :message, 1, "google.spanner.v1.Mutation.Write"
        optional :update, :message, 2, "google.spanner.v1.Mutation.Write"
        optional :insert_or_update, :message, 3, "google.spanner.v1.Mutation.Write"
        optional :replace, :message, 4, "google.spanner.v1.Mutation.Write"
        optional :delete, :message, 5, "google.spanner.v1.Mutation.Delete"
      end
    end
    add_message "google.spanner.v1.Mutation.Write" do
      optional :table, :string, 1
      repeated :columns, :string, 2
      repeated :values, :message, 3, "google.protobuf.ListValue"
    end
    add_message "google.spanner.v1.Mutation.Delete" do
      optional :table, :string, 1
      optional :key_set, :message, 2, "google.spanner.v1.KeySet"
    end
  end
end

module Google
  module Cloud
    module Spanner
      module V1
        Mutation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Mutation").msgclass
        Mutation::Write = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Mutation.Write").msgclass
        Mutation::Delete = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Mutation.Delete").msgclass
      end
    end
  end
end
