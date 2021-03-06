# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/field.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/firestore/admin/v1/index_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/firestore/admin/v1/field.proto", :syntax => :proto3) do
    add_message "google.firestore.admin.v1.Field" do
      optional :name, :string, 1
      optional :index_config, :message, 2, "google.firestore.admin.v1.Field.IndexConfig"
      optional :ttl_config, :message, 3, "google.firestore.admin.v1.Field.TtlConfig"
    end
    add_message "google.firestore.admin.v1.Field.IndexConfig" do
      repeated :indexes, :message, 1, "google.firestore.admin.v1.Index"
      optional :uses_ancestor_config, :bool, 2
      optional :ancestor_field, :string, 3
      optional :reverting, :bool, 4
    end
    add_message "google.firestore.admin.v1.Field.TtlConfig" do
      optional :state, :enum, 1, "google.firestore.admin.v1.Field.TtlConfig.State"
    end
    add_enum "google.firestore.admin.v1.Field.TtlConfig.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :ACTIVE, 2
      value :NEEDS_REPAIR, 3
    end
  end
end

module Google
  module Cloud
    module Firestore
      module Admin
        module V1
          Field = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field").msgclass
          Field::IndexConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field.IndexConfig").msgclass
          Field::TtlConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field.TtlConfig").msgclass
          Field::TtlConfig::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field.TtlConfig.State").enummodule
        end
      end
    end
  end
end
