# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/dataset.proto


require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/cloud/automl/v1beta1/image_pb'
require 'google/cloud/automl/v1beta1/tables_pb'
require 'google/cloud/automl/v1beta1/text_pb'
require 'google/cloud/automl/v1beta1/translation_pb'
require 'google/cloud/automl/v1beta1/video_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.automl.v1beta1.Dataset" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :description, :string, 3
    optional :example_count, :int32, 21
    optional :create_time, :message, 14, "google.protobuf.Timestamp"
    optional :etag, :string, 17
    oneof :dataset_metadata do
      optional :translation_dataset_metadata, :message, 23, "google.cloud.automl.v1beta1.TranslationDatasetMetadata"
      optional :image_classification_dataset_metadata, :message, 24, "google.cloud.automl.v1beta1.ImageClassificationDatasetMetadata"
      optional :text_classification_dataset_metadata, :message, 25, "google.cloud.automl.v1beta1.TextClassificationDatasetMetadata"
      optional :image_object_detection_dataset_metadata, :message, 26, "google.cloud.automl.v1beta1.ImageObjectDetectionDatasetMetadata"
      optional :video_classification_dataset_metadata, :message, 31, "google.cloud.automl.v1beta1.VideoClassificationDatasetMetadata"
      optional :video_object_tracking_dataset_metadata, :message, 29, "google.cloud.automl.v1beta1.VideoObjectTrackingDatasetMetadata"
      optional :text_extraction_dataset_metadata, :message, 28, "google.cloud.automl.v1beta1.TextExtractionDatasetMetadata"
      optional :text_sentiment_dataset_metadata, :message, 30, "google.cloud.automl.v1beta1.TextSentimentDatasetMetadata"
      optional :tables_dataset_metadata, :message, 33, "google.cloud.automl.v1beta1.TablesDatasetMetadata"
    end
  end
end

module Google::Cloud::AutoML::V1beta1
  Dataset = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Dataset").msgclass
end
