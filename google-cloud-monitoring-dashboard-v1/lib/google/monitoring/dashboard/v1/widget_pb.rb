# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/widget.proto

require 'google/api/field_behavior_pb'
require 'google/monitoring/dashboard/v1/alertchart_pb'
require 'google/monitoring/dashboard/v1/scorecard_pb'
require 'google/monitoring/dashboard/v1/text_pb'
require 'google/monitoring/dashboard/v1/xychart_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/widget.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.Widget" do
      optional :title, :string, 1
      oneof :content do
        optional :xy_chart, :message, 2, "google.monitoring.dashboard.v1.XyChart"
        optional :scorecard, :message, 3, "google.monitoring.dashboard.v1.Scorecard"
        optional :text, :message, 4, "google.monitoring.dashboard.v1.Text"
        optional :blank, :message, 5, "google.protobuf.Empty"
        optional :alert_chart, :message, 7, "google.monitoring.dashboard.v1.AlertChart"
      end
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          Widget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.Widget").msgclass
        end
      end
    end
  end
end
