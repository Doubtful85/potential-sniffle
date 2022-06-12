# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/dataset.proto

require 'google/api/resource_pb'
require 'google/cloud/automl/v1/image_pb'
require 'google/cloud/automl/v1/text_pb'
require 'google/cloud/automl/v1/translation_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/dataset.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.Dataset" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :example_count, :int32, 21
      optional :create_time, :message, 14, "google.protobuf.Timestamp"
      optional :etag, :string, 17
      map :labels, :string, :string, 39
      oneof :dataset_metadata do
        optional :translation_dataset_metadata, :message, 23, "google.cloud.automl.v1.TranslationDatasetMetadata"
        optional :image_classification_dataset_metadata, :message, 24, "google.cloud.automl.v1.ImageClassificationDatasetMetadata"
        optional :text_classification_dataset_metadata, :message, 25, "google.cloud.automl.v1.TextClassificationDatasetMetadata"
        optional :image_object_detection_dataset_metadata, :message, 26, "google.cloud.automl.v1.ImageObjectDetectionDatasetMetadata"
        optional :text_extraction_dataset_metadata, :message, 28, "google.cloud.automl.v1.TextExtractionDatasetMetadata"
        optional :text_sentiment_dataset_metadata, :message, 30, "google.cloud.automl.v1.TextSentimentDatasetMetadata"
      end
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        Dataset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.Dataset").msgclass
      end
    end
  end
end
