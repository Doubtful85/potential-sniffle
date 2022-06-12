# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/operation.proto

require 'google/firestore/admin/v1/index_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/firestore/admin/v1/operation.proto", :syntax => :proto3) do
    add_message "google.firestore.admin.v1.IndexOperationMetadata" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :index, :string, 3
      optional :state, :enum, 4, "google.firestore.admin.v1.OperationState"
      optional :progress_documents, :message, 5, "google.firestore.admin.v1.Progress"
      optional :progress_bytes, :message, 6, "google.firestore.admin.v1.Progress"
    end
    add_message "google.firestore.admin.v1.FieldOperationMetadata" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :field, :string, 3
      repeated :index_config_deltas, :message, 4, "google.firestore.admin.v1.FieldOperationMetadata.IndexConfigDelta"
      optional :state, :enum, 5, "google.firestore.admin.v1.OperationState"
      optional :progress_documents, :message, 6, "google.firestore.admin.v1.Progress"
      optional :progress_bytes, :message, 7, "google.firestore.admin.v1.Progress"
    end
    add_message "google.firestore.admin.v1.FieldOperationMetadata.IndexConfigDelta" do
      optional :change_type, :enum, 1, "google.firestore.admin.v1.FieldOperationMetadata.IndexConfigDelta.ChangeType"
      optional :index, :message, 2, "google.firestore.admin.v1.Index"
    end
    add_enum "google.firestore.admin.v1.FieldOperationMetadata.IndexConfigDelta.ChangeType" do
      value :CHANGE_TYPE_UNSPECIFIED, 0
      value :ADD, 1
      value :REMOVE, 2
    end
    add_message "google.firestore.admin.v1.ExportDocumentsMetadata" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :operation_state, :enum, 3, "google.firestore.admin.v1.OperationState"
      optional :progress_documents, :message, 4, "google.firestore.admin.v1.Progress"
      optional :progress_bytes, :message, 5, "google.firestore.admin.v1.Progress"
      repeated :collection_ids, :string, 6
      optional :output_uri_prefix, :string, 7
    end
    add_message "google.firestore.admin.v1.ImportDocumentsMetadata" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :operation_state, :enum, 3, "google.firestore.admin.v1.OperationState"
      optional :progress_documents, :message, 4, "google.firestore.admin.v1.Progress"
      optional :progress_bytes, :message, 5, "google.firestore.admin.v1.Progress"
      repeated :collection_ids, :string, 6
      optional :input_uri_prefix, :string, 7
    end
    add_message "google.firestore.admin.v1.ExportDocumentsResponse" do
      optional :output_uri_prefix, :string, 1
    end
    add_message "google.firestore.admin.v1.Progress" do
      optional :estimated_work, :int64, 1
      optional :completed_work, :int64, 2
    end
    add_enum "google.firestore.admin.v1.OperationState" do
      value :OPERATION_STATE_UNSPECIFIED, 0
      value :INITIALIZING, 1
      value :PROCESSING, 2
      value :CANCELLING, 3
      value :FINALIZING, 4
      value :SUCCESSFUL, 5
      value :FAILED, 6
      value :CANCELLED, 7
    end
  end
end

module Google
  module Cloud
    module Firestore
      module Admin
        module V1
          IndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.IndexOperationMetadata").msgclass
          FieldOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.FieldOperationMetadata").msgclass
          FieldOperationMetadata::IndexConfigDelta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.FieldOperationMetadata.IndexConfigDelta").msgclass
          FieldOperationMetadata::IndexConfigDelta::ChangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.FieldOperationMetadata.IndexConfigDelta.ChangeType").enummodule
          ExportDocumentsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ExportDocumentsMetadata").msgclass
          ImportDocumentsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ImportDocumentsMetadata").msgclass
          ExportDocumentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ExportDocumentsResponse").msgclass
          Progress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Progress").msgclass
          OperationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.OperationState").enummodule
        end
      end
    end
  end
end
