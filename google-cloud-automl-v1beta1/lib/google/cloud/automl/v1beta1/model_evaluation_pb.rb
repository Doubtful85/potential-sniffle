# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/model_evaluation.proto

require 'google/api/resource_pb'
require 'google/cloud/automl/v1beta1/classification_pb'
require 'google/cloud/automl/v1beta1/detection_pb'
require 'google/cloud/automl/v1beta1/regression_pb'
require 'google/cloud/automl/v1beta1/tables_pb'
require 'google/cloud/automl/v1beta1/text_extraction_pb'
require 'google/cloud/automl/v1beta1/text_sentiment_pb'
require 'google/cloud/automl/v1beta1/translation_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1beta1/model_evaluation.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1beta1.ModelEvaluation" do
      optional :name, :string, 1
      optional :annotation_spec_id, :string, 2
      optional :display_name, :string, 15
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :evaluated_example_count, :int32, 6
      oneof :metrics do
        optional :classification_evaluation_metrics, :message, 8, "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics"
        optional :regression_evaluation_metrics, :message, 24, "google.cloud.automl.v1beta1.RegressionEvaluationMetrics"
        optional :translation_evaluation_metrics, :message, 9, "google.cloud.automl.v1beta1.TranslationEvaluationMetrics"
        optional :image_object_detection_evaluation_metrics, :message, 12, "google.cloud.automl.v1beta1.ImageObjectDetectionEvaluationMetrics"
        optional :video_object_tracking_evaluation_metrics, :message, 14, "google.cloud.automl.v1beta1.VideoObjectTrackingEvaluationMetrics"
        optional :text_sentiment_evaluation_metrics, :message, 11, "google.cloud.automl.v1beta1.TextSentimentEvaluationMetrics"
        optional :text_extraction_evaluation_metrics, :message, 13, "google.cloud.automl.v1beta1.TextExtractionEvaluationMetrics"
      end
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        ModelEvaluation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ModelEvaluation").msgclass
      end
    end
  end
end
