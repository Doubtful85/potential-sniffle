# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/image.proto

require 'google/api/resource_pb'
require 'google/cloud/automl/v1/annotation_spec_pb'
require 'google/cloud/automl/v1/classification_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/image.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.ImageClassificationDatasetMetadata" do
      optional :classification_type, :enum, 1, "google.cloud.automl.v1.ClassificationType"
    end
    add_message "google.cloud.automl.v1.ImageObjectDetectionDatasetMetadata" do
    end
    add_message "google.cloud.automl.v1.ImageClassificationModelMetadata" do
      optional :base_model_id, :string, 1
      optional :train_budget_milli_node_hours, :int64, 16
      optional :train_cost_milli_node_hours, :int64, 17
      optional :stop_reason, :string, 5
      optional :model_type, :string, 7
      optional :node_qps, :double, 13
      optional :node_count, :int64, 14
    end
    add_message "google.cloud.automl.v1.ImageObjectDetectionModelMetadata" do
      optional :model_type, :string, 1
      optional :node_count, :int64, 3
      optional :node_qps, :double, 4
      optional :stop_reason, :string, 5
      optional :train_budget_milli_node_hours, :int64, 6
      optional :train_cost_milli_node_hours, :int64, 7
    end
    add_message "google.cloud.automl.v1.ImageClassificationModelDeploymentMetadata" do
      optional :node_count, :int64, 1
    end
    add_message "google.cloud.automl.v1.ImageObjectDetectionModelDeploymentMetadata" do
      optional :node_count, :int64, 1
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        ImageClassificationDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImageClassificationDatasetMetadata").msgclass
        ImageObjectDetectionDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImageObjectDetectionDatasetMetadata").msgclass
        ImageClassificationModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImageClassificationModelMetadata").msgclass
        ImageObjectDetectionModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImageObjectDetectionModelMetadata").msgclass
        ImageClassificationModelDeploymentMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImageClassificationModelDeploymentMetadata").msgclass
        ImageObjectDetectionModelDeploymentMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImageObjectDetectionModelDeploymentMetadata").msgclass
      end
    end
  end
end
