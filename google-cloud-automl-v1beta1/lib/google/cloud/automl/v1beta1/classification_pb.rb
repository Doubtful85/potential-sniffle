# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/classification.proto

require 'google/cloud/automl/v1beta1/temporal_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1beta1/classification.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1beta1.ClassificationAnnotation" do
      optional :score, :float, 1
    end
    add_message "google.cloud.automl.v1beta1.VideoClassificationAnnotation" do
      optional :type, :string, 1
      optional :classification_annotation, :message, 2, "google.cloud.automl.v1beta1.ClassificationAnnotation"
      optional :time_segment, :message, 3, "google.cloud.automl.v1beta1.TimeSegment"
    end
    add_message "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics" do
      optional :au_prc, :float, 1
      optional :base_au_prc, :float, 2
      optional :au_roc, :float, 6
      optional :log_loss, :float, 7
      repeated :confidence_metrics_entry, :message, 3, "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry"
      optional :confusion_matrix, :message, 4, "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix"
      repeated :annotation_spec_id, :string, 5
    end
    add_message "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry" do
      optional :confidence_threshold, :float, 1
      optional :position_threshold, :int32, 14
      optional :recall, :float, 2
      optional :precision, :float, 3
      optional :false_positive_rate, :float, 8
      optional :f1_score, :float, 4
      optional :recall_at1, :float, 5
      optional :precision_at1, :float, 6
      optional :false_positive_rate_at1, :float, 9
      optional :f1_score_at1, :float, 7
      optional :true_positive_count, :int64, 10
      optional :false_positive_count, :int64, 11
      optional :false_negative_count, :int64, 12
      optional :true_negative_count, :int64, 13
    end
    add_message "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix" do
      repeated :annotation_spec_id, :string, 1
      repeated :display_name, :string, 3
      repeated :row, :message, 2, "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row"
    end
    add_message "google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row" do
      repeated :example_count, :int32, 1
    end
    add_enum "google.cloud.automl.v1beta1.ClassificationType" do
      value :CLASSIFICATION_TYPE_UNSPECIFIED, 0
      value :MULTICLASS, 1
      value :MULTILABEL, 2
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        ClassificationAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationAnnotation").msgclass
        VideoClassificationAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoClassificationAnnotation").msgclass
        ClassificationEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics").msgclass
        ClassificationEvaluationMetrics::ConfidenceMetricsEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry").msgclass
        ClassificationEvaluationMetrics::ConfusionMatrix = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix").msgclass
        ClassificationEvaluationMetrics::ConfusionMatrix::Row = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row").msgclass
        ClassificationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ClassificationType").enummodule
      end
    end
  end
end
