# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/detection.proto

require 'google/protobuf'

require 'google/cloud/automl/v1beta1/geometry_pb'
require 'google/protobuf/duration_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1beta1/detection.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1beta1.ImageObjectDetectionAnnotation" do
      optional :bounding_box, :message, 1, "google.cloud.automl.v1beta1.BoundingPoly"
      optional :score, :float, 2
    end
    add_message "google.cloud.automl.v1beta1.VideoObjectTrackingAnnotation" do
      optional :instance_id, :string, 1
      optional :time_offset, :message, 2, "google.protobuf.Duration"
      optional :bounding_box, :message, 3, "google.cloud.automl.v1beta1.BoundingPoly"
      optional :score, :float, 4
    end
    add_message "google.cloud.automl.v1beta1.BoundingBoxMetricsEntry" do
      optional :iou_threshold, :float, 1
      optional :mean_average_precision, :float, 2
      repeated :confidence_metrics_entries, :message, 3, "google.cloud.automl.v1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry"
    end
    add_message "google.cloud.automl.v1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry" do
      optional :confidence_threshold, :float, 1
      optional :recall, :float, 2
      optional :precision, :float, 3
      optional :f1_score, :float, 4
    end
    add_message "google.cloud.automl.v1beta1.ImageObjectDetectionEvaluationMetrics" do
      optional :evaluated_bounding_box_count, :int32, 1
      repeated :bounding_box_metrics_entries, :message, 2, "google.cloud.automl.v1beta1.BoundingBoxMetricsEntry"
      optional :bounding_box_mean_average_precision, :float, 3
    end
    add_message "google.cloud.automl.v1beta1.VideoObjectTrackingEvaluationMetrics" do
      optional :evaluated_frame_count, :int32, 1
      optional :evaluated_bounding_box_count, :int32, 2
      repeated :bounding_box_metrics_entries, :message, 4, "google.cloud.automl.v1beta1.BoundingBoxMetricsEntry"
      optional :bounding_box_mean_average_precision, :float, 6
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        ImageObjectDetectionAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ImageObjectDetectionAnnotation").msgclass
        VideoObjectTrackingAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoObjectTrackingAnnotation").msgclass
        BoundingBoxMetricsEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.BoundingBoxMetricsEntry").msgclass
        BoundingBoxMetricsEntry::ConfidenceMetricsEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.BoundingBoxMetricsEntry.ConfidenceMetricsEntry").msgclass
        ImageObjectDetectionEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ImageObjectDetectionEvaluationMetrics").msgclass
        VideoObjectTrackingEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoObjectTrackingEvaluationMetrics").msgclass
      end
    end
  end
end
