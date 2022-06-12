# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/layouts.proto

require 'google/monitoring/dashboard/v1/widget_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/layouts.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.GridLayout" do
      optional :columns, :int64, 1
      repeated :widgets, :message, 2, "google.monitoring.dashboard.v1.Widget"
    end
    add_message "google.monitoring.dashboard.v1.MosaicLayout" do
      optional :columns, :int32, 1
      repeated :tiles, :message, 3, "google.monitoring.dashboard.v1.MosaicLayout.Tile"
    end
    add_message "google.monitoring.dashboard.v1.MosaicLayout.Tile" do
      optional :x_pos, :int32, 1
      optional :y_pos, :int32, 2
      optional :width, :int32, 3
      optional :height, :int32, 4
      optional :widget, :message, 5, "google.monitoring.dashboard.v1.Widget"
    end
    add_message "google.monitoring.dashboard.v1.RowLayout" do
      repeated :rows, :message, 1, "google.monitoring.dashboard.v1.RowLayout.Row"
    end
    add_message "google.monitoring.dashboard.v1.RowLayout.Row" do
      optional :weight, :int64, 1
      repeated :widgets, :message, 2, "google.monitoring.dashboard.v1.Widget"
    end
    add_message "google.monitoring.dashboard.v1.ColumnLayout" do
      repeated :columns, :message, 1, "google.monitoring.dashboard.v1.ColumnLayout.Column"
    end
    add_message "google.monitoring.dashboard.v1.ColumnLayout.Column" do
      optional :weight, :int64, 1
      repeated :widgets, :message, 2, "google.monitoring.dashboard.v1.Widget"
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          GridLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.GridLayout").msgclass
          MosaicLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.MosaicLayout").msgclass
          MosaicLayout::Tile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.MosaicLayout.Tile").msgclass
          RowLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.RowLayout").msgclass
          RowLayout::Row = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.RowLayout.Row").msgclass
          ColumnLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ColumnLayout").msgclass
          ColumnLayout::Column = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ColumnLayout.Column").msgclass
        end
      end
    end
  end
end
