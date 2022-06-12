# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/text.proto

require 'google/cloud/automl/v1/classification_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/text.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.TextClassificationDatasetMetadata" do
      optional :classification_type, :enum, 1, "google.cloud.automl.v1.ClassificationType"
    end
    add_message "google.cloud.automl.v1.TextClassificationModelMetadata" do
      optional :classification_type, :enum, 3, "google.cloud.automl.v1.ClassificationType"
    end
    add_message "google.cloud.automl.v1.TextExtractionDatasetMetadata" do
    end
    add_message "google.cloud.automl.v1.TextExtractionModelMetadata" do
    end
    add_message "google.cloud.automl.v1.TextSentimentDatasetMetadata" do
      optional :sentiment_max, :int32, 1
    end
    add_message "google.cloud.automl.v1.TextSentimentModelMetadata" do
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        TextClassificationDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextClassificationDatasetMetadata").msgclass
        TextClassificationModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextClassificationModelMetadata").msgclass
        TextExtractionDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextExtractionDatasetMetadata").msgclass
        TextExtractionModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextExtractionModelMetadata").msgclass
        TextSentimentDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextSentimentDatasetMetadata").msgclass
        TextSentimentModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextSentimentModelMetadata").msgclass
      end
    end
  end
end
