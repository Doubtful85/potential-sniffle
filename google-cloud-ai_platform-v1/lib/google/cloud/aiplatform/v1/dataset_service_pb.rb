# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/dataset_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/annotation_pb'
require 'google/cloud/aiplatform/v1/annotation_spec_pb'
require 'google/cloud/aiplatform/v1/data_item_pb'
require 'google/cloud/aiplatform/v1/dataset_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/dataset_service.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.CreateDatasetRequest" do
      optional :parent, :string, 1
      optional :dataset, :message, 2, "google.cloud.aiplatform.v1.Dataset"
    end
    add_message "google.cloud.aiplatform.v1.CreateDatasetOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.GetDatasetRequest" do
      optional :name, :string, 1
      optional :read_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.UpdateDatasetRequest" do
      optional :dataset, :message, 1, "google.cloud.aiplatform.v1.Dataset"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListDatasetsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
      optional :order_by, :string, 6
    end
    add_message "google.cloud.aiplatform.v1.ListDatasetsResponse" do
      repeated :datasets, :message, 1, "google.cloud.aiplatform.v1.Dataset"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.DeleteDatasetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ImportDataRequest" do
      optional :name, :string, 1
      repeated :import_configs, :message, 2, "google.cloud.aiplatform.v1.ImportDataConfig"
    end
    add_message "google.cloud.aiplatform.v1.ImportDataResponse" do
    end
    add_message "google.cloud.aiplatform.v1.ImportDataOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.ExportDataRequest" do
      optional :name, :string, 1
      optional :export_config, :message, 2, "google.cloud.aiplatform.v1.ExportDataConfig"
    end
    add_message "google.cloud.aiplatform.v1.ExportDataResponse" do
      repeated :exported_files, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ExportDataOperationMetadata" do
      optional :generic_metadata, :message, 1, "google.cloud.aiplatform.v1.GenericOperationMetadata"
      optional :gcs_output_directory, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.ListDataItemsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
      optional :order_by, :string, 6
    end
    add_message "google.cloud.aiplatform.v1.ListDataItemsResponse" do
      repeated :data_items, :message, 1, "google.cloud.aiplatform.v1.DataItem"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.GetAnnotationSpecRequest" do
      optional :name, :string, 1
      optional :read_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.aiplatform.v1.ListAnnotationsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
      optional :order_by, :string, 6
    end
    add_message "google.cloud.aiplatform.v1.ListAnnotationsResponse" do
      repeated :annotations, :message, 1, "google.cloud.aiplatform.v1.Annotation"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        CreateDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateDatasetRequest").msgclass
        CreateDatasetOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateDatasetOperationMetadata").msgclass
        GetDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetDatasetRequest").msgclass
        UpdateDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateDatasetRequest").msgclass
        ListDatasetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListDatasetsRequest").msgclass
        ListDatasetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListDatasetsResponse").msgclass
        DeleteDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteDatasetRequest").msgclass
        ImportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ImportDataRequest").msgclass
        ImportDataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ImportDataResponse").msgclass
        ImportDataOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ImportDataOperationMetadata").msgclass
        ExportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportDataRequest").msgclass
        ExportDataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportDataResponse").msgclass
        ExportDataOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExportDataOperationMetadata").msgclass
        ListDataItemsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListDataItemsRequest").msgclass
        ListDataItemsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListDataItemsResponse").msgclass
        GetAnnotationSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetAnnotationSpecRequest").msgclass
        ListAnnotationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListAnnotationsRequest").msgclass
        ListAnnotationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListAnnotationsResponse").msgclass
      end
    end
  end
end
