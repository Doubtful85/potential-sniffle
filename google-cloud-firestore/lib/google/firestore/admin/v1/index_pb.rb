# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/index.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.firestore.admin.v1.Index" do
    optional :name, :string, 1
    optional :query_scope, :enum, 2, "google.firestore.admin.v1.Index.QueryScope"
    repeated :fields, :message, 3, "google.firestore.admin.v1.Index.IndexField"
    optional :state, :enum, 4, "google.firestore.admin.v1.Index.State"
  end
  add_message "google.firestore.admin.v1.Index.IndexField" do
    optional :field_path, :string, 1
    oneof :value_mode do
      optional :order, :enum, 2, "google.firestore.admin.v1.Index.IndexField.Order"
      optional :array_config, :enum, 3, "google.firestore.admin.v1.Index.IndexField.ArrayConfig"
    end
  end
  add_enum "google.firestore.admin.v1.Index.IndexField.Order" do
    value :ORDER_UNSPECIFIED, 0
    value :ASCENDING, 1
    value :DESCENDING, 2
  end
  add_enum "google.firestore.admin.v1.Index.IndexField.ArrayConfig" do
    value :ARRAY_CONFIG_UNSPECIFIED, 0
    value :CONTAINS, 1
  end
  add_enum "google.firestore.admin.v1.Index.QueryScope" do
    value :QUERY_SCOPE_UNSPECIFIED, 0
    value :COLLECTION, 1
  end
  add_enum "google.firestore.admin.v1.Index.State" do
    value :STATE_UNSPECIFIED, 0
    value :CREATING, 1
    value :READY, 2
    value :NEEDS_REPAIR, 3
  end
end

module Google
  module Firestore
    module Admin
      module V1
        Index = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index").msgclass
        Index::IndexField = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField").msgclass
        Index::IndexField::Order = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField.Order").enummodule
        Index::IndexField::ArrayConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.IndexField.ArrayConfig").enummodule
        Index::QueryScope = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.QueryScope").enummodule
        Index::State = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Index.State").enummodule
      end
    end
  end
end
