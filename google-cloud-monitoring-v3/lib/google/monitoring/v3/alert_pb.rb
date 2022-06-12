# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/alert.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/common_pb'
require 'google/monitoring/v3/mutation_record_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/v3/alert.proto", :syntax => :proto3) do
    add_message "google.monitoring.v3.AlertPolicy" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :documentation, :message, 13, "google.monitoring.v3.AlertPolicy.Documentation"
      map :user_labels, :string, :string, 16
      repeated :conditions, :message, 12, "google.monitoring.v3.AlertPolicy.Condition"
      optional :combiner, :enum, 6, "google.monitoring.v3.AlertPolicy.ConditionCombinerType"
      optional :enabled, :message, 17, "google.protobuf.BoolValue"
      optional :validity, :message, 18, "google.rpc.Status"
      repeated :notification_channels, :string, 14
      optional :creation_record, :message, 10, "google.monitoring.v3.MutationRecord"
      optional :mutation_record, :message, 11, "google.monitoring.v3.MutationRecord"
      optional :alert_strategy, :message, 21, "google.monitoring.v3.AlertPolicy.AlertStrategy"
    end
    add_message "google.monitoring.v3.AlertPolicy.Documentation" do
      optional :content, :string, 1
      optional :mime_type, :string, 2
    end
    add_message "google.monitoring.v3.AlertPolicy.Condition" do
      optional :name, :string, 12
      optional :display_name, :string, 6
      oneof :condition do
        optional :condition_threshold, :message, 1, "google.monitoring.v3.AlertPolicy.Condition.MetricThreshold"
        optional :condition_absent, :message, 2, "google.monitoring.v3.AlertPolicy.Condition.MetricAbsence"
        optional :condition_matched_log, :message, 20, "google.monitoring.v3.AlertPolicy.Condition.LogMatch"
        optional :condition_monitoring_query_language, :message, 19, "google.monitoring.v3.AlertPolicy.Condition.MonitoringQueryLanguageCondition"
      end
    end
    add_message "google.monitoring.v3.AlertPolicy.Condition.Trigger" do
      oneof :type do
        optional :count, :int32, 1
        optional :percent, :double, 2
      end
    end
    add_message "google.monitoring.v3.AlertPolicy.Condition.MetricThreshold" do
      optional :filter, :string, 2
      repeated :aggregations, :message, 8, "google.monitoring.v3.Aggregation"
      optional :denominator_filter, :string, 9
      repeated :denominator_aggregations, :message, 10, "google.monitoring.v3.Aggregation"
      optional :comparison, :enum, 4, "google.monitoring.v3.ComparisonType"
      optional :threshold_value, :double, 5
      optional :duration, :message, 6, "google.protobuf.Duration"
      optional :trigger, :message, 7, "google.monitoring.v3.AlertPolicy.Condition.Trigger"
    end
    add_message "google.monitoring.v3.AlertPolicy.Condition.MetricAbsence" do
      optional :filter, :string, 1
      repeated :aggregations, :message, 5, "google.monitoring.v3.Aggregation"
      optional :duration, :message, 2, "google.protobuf.Duration"
      optional :trigger, :message, 3, "google.monitoring.v3.AlertPolicy.Condition.Trigger"
    end
    add_message "google.monitoring.v3.AlertPolicy.Condition.LogMatch" do
      optional :filter, :string, 1
      map :label_extractors, :string, :string, 2
    end
    add_message "google.monitoring.v3.AlertPolicy.Condition.MonitoringQueryLanguageCondition" do
      optional :query, :string, 1
      optional :duration, :message, 2, "google.protobuf.Duration"
      optional :trigger, :message, 3, "google.monitoring.v3.AlertPolicy.Condition.Trigger"
    end
    add_message "google.monitoring.v3.AlertPolicy.AlertStrategy" do
      optional :notification_rate_limit, :message, 1, "google.monitoring.v3.AlertPolicy.AlertStrategy.NotificationRateLimit"
    end
    add_message "google.monitoring.v3.AlertPolicy.AlertStrategy.NotificationRateLimit" do
      optional :period, :message, 1, "google.protobuf.Duration"
    end
    add_enum "google.monitoring.v3.AlertPolicy.ConditionCombinerType" do
      value :COMBINE_UNSPECIFIED, 0
      value :AND, 1
      value :OR, 2
      value :AND_WITH_MATCHING_RESOURCE, 3
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module V3
        AlertPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy").msgclass
        AlertPolicy::Documentation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Documentation").msgclass
        AlertPolicy::Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition").msgclass
        AlertPolicy::Condition::Trigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.Trigger").msgclass
        AlertPolicy::Condition::MetricThreshold = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.MetricThreshold").msgclass
        AlertPolicy::Condition::MetricAbsence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.MetricAbsence").msgclass
        AlertPolicy::Condition::LogMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.LogMatch").msgclass
        AlertPolicy::Condition::MonitoringQueryLanguageCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.MonitoringQueryLanguageCondition").msgclass
        AlertPolicy::AlertStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.AlertStrategy").msgclass
        AlertPolicy::AlertStrategy::NotificationRateLimit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.AlertStrategy.NotificationRateLimit").msgclass
        AlertPolicy::ConditionCombinerType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.ConditionCombinerType").enummodule
      end
    end
  end
end
