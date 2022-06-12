# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/model.proto


require 'google/protobuf'

require 'google/cloud/automl/v1beta1/image_pb'
require 'google/cloud/automl/v1beta1/tables_pb'
require 'google/cloud/automl/v1beta1/text_pb'
require 'google/cloud/automl/v1beta1/translation_pb'
require 'google/cloud/automl/v1beta1/video_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.automl.v1beta1.Model" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :dataset_id, :string, 3
    optional :create_time, :message, 7, "google.protobuf.Timestamp"
    optional :update_time, :message, 11, "google.protobuf.Timestamp"
    optional :deployment_state, :enum, 8, "google.cloud.automl.v1beta1.Model.DeploymentState"
    oneof :model_metadata do
      optional :translation_model_metadata, :message, 15, "google.cloud.automl.v1beta1.TranslationModelMetadata"
      optional :image_classification_model_metadata, :message, 13, "google.cloud.automl.v1beta1.ImageClassificationModelMetadata"
      optional :text_classification_model_metadata, :message, 14, "google.cloud.automl.v1beta1.TextClassificationModelMetadata"
      optional :image_object_detection_model_metadata, :message, 20, "google.cloud.automl.v1beta1.ImageObjectDetectionModelMetadata"
      optional :video_classification_model_metadata, :message, 23, "google.cloud.automl.v1beta1.VideoClassificationModelMetadata"
      optional :video_object_tracking_model_metadata, :message, 21, "google.cloud.automl.v1beta1.VideoObjectTrackingModelMetadata"
      optional :text_extraction_model_metadata, :message, 19, "google.cloud.automl.v1beta1.TextExtractionModelMetadata"
      optional :tables_model_metadata, :message, 24, "google.cloud.automl.v1beta1.TablesModelMetadata"
      optional :text_sentiment_model_metadata, :message, 22, "google.cloud.automl.v1beta1.TextSentimentModelMetadata"
    end
  end
  add_enum "google.cloud.automl.v1beta1.Model.DeploymentState" do
    value :DEPLOYMENT_STATE_UNSPECIFIED, 0
    value :DEPLOYED, 1
    value :UNDEPLOYED, 2
  end
end

module Google::Cloud::AutoML::V1beta1
  Model = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Model").msgclass
  Model::DeploymentState = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Model.DeploymentState").enummodule
end
