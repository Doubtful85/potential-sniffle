# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/metric.proto

require 'google/protobuf'

require 'google/api/distribution_pb'
require 'google/api/label_pb'
require 'google/api/metric_pb'
require 'google/api/monitored_resource_pb'
require 'google/monitoring/v3/common_pb'
require 'google/protobuf/duration_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/v3/metric.proto", :syntax => :proto3) do
    add_message "google.monitoring.v3.Point" do
      optional :interval, :message, 1, "google.monitoring.v3.TimeInterval"
      optional :value, :message, 2, "google.monitoring.v3.TypedValue"
    end
    add_message "google.monitoring.v3.TimeSeries" do
      optional :metric, :message, 1, "google.api.Metric"
      optional :resource, :message, 2, "google.api.MonitoredResource"
      optional :metadata, :message, 7, "google.api.MonitoredResourceMetadata"
      optional :metric_kind, :enum, 3, "google.api.MetricDescriptor.MetricKind"
      optional :value_type, :enum, 4, "google.api.MetricDescriptor.ValueType"
      repeated :points, :message, 5, "google.monitoring.v3.Point"
    end
    add_message "google.monitoring.v3.TimeSeriesDescriptor" do
      repeated :label_descriptors, :message, 1, "google.api.LabelDescriptor"
      repeated :point_descriptors, :message, 5, "google.monitoring.v3.TimeSeriesDescriptor.ValueDescriptor"
    end
    add_message "google.monitoring.v3.TimeSeriesDescriptor.ValueDescriptor" do
      optional :key, :string, 1
      optional :value_type, :enum, 2, "google.api.MetricDescriptor.ValueType"
      optional :metric_kind, :enum, 3, "google.api.MetricDescriptor.MetricKind"
    end
    add_message "google.monitoring.v3.TimeSeriesData" do
      repeated :label_values, :message, 1, "google.monitoring.v3.LabelValue"
      repeated :point_data, :message, 2, "google.monitoring.v3.TimeSeriesData.PointData"
    end
    add_message "google.monitoring.v3.TimeSeriesData.PointData" do
      repeated :values, :message, 1, "google.monitoring.v3.TypedValue"
      optional :time_interval, :message, 2, "google.monitoring.v3.TimeInterval"
    end
    add_message "google.monitoring.v3.LabelValue" do
      oneof :value do
        optional :bool_value, :bool, 1
        optional :int64_value, :int64, 2
        optional :string_value, :string, 3
      end
    end
    add_message "google.monitoring.v3.QueryError" do
      optional :locator, :message, 1, "google.monitoring.v3.TextLocator"
      optional :message, :string, 2
    end
    add_message "google.monitoring.v3.TextLocator" do
      optional :source, :string, 1
      optional :start_position, :message, 2, "google.monitoring.v3.TextLocator.Position"
      optional :end_position, :message, 3, "google.monitoring.v3.TextLocator.Position"
      optional :nested_locator, :message, 4, "google.monitoring.v3.TextLocator"
      optional :nesting_reason, :string, 5
    end
    add_message "google.monitoring.v3.TextLocator.Position" do
      optional :line, :int32, 1
      optional :column, :int32, 2
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module V3
        Point = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Point").msgclass
        TimeSeries = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeries").msgclass
        TimeSeriesDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesDescriptor").msgclass
        TimeSeriesDescriptor::ValueDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesDescriptor.ValueDescriptor").msgclass
        TimeSeriesData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesData").msgclass
        TimeSeriesData::PointData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesData.PointData").msgclass
        LabelValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.LabelValue").msgclass
        QueryError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryError").msgclass
        TextLocator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TextLocator").msgclass
        TextLocator::Position = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TextLocator.Position").msgclass
      end
    end
  end
end
