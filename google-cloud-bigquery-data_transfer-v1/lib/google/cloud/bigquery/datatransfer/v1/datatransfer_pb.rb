# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/datatransfer/v1/datatransfer.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/bigquery/datatransfer/v1/transfer_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/bigquery/datatransfer/v1/datatransfer.proto", :syntax => :proto3) do
    add_message "google.cloud.bigquery.datatransfer.v1.DataSourceParameter" do
      optional :param_id, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :type, :enum, 4, "google.cloud.bigquery.datatransfer.v1.DataSourceParameter.Type"
      optional :required, :bool, 5
      optional :repeated, :bool, 6
      optional :validation_regex, :string, 7
      repeated :allowed_values, :string, 8
      optional :min_value, :message, 9, "google.protobuf.DoubleValue"
      optional :max_value, :message, 10, "google.protobuf.DoubleValue"
      repeated :fields, :message, 11, "google.cloud.bigquery.datatransfer.v1.DataSourceParameter"
      optional :validation_description, :string, 12
      optional :validation_help_url, :string, 13
      optional :immutable, :bool, 14
      optional :recurse, :bool, 15
      optional :deprecated, :bool, 20
    end
    add_enum "google.cloud.bigquery.datatransfer.v1.DataSourceParameter.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :STRING, 1
      value :INTEGER, 2
      value :DOUBLE, 3
      value :BOOLEAN, 4
      value :RECORD, 5
      value :PLUS_PAGE, 6
    end
    add_message "google.cloud.bigquery.datatransfer.v1.DataSource" do
      optional :name, :string, 1
      optional :data_source_id, :string, 2
      optional :display_name, :string, 3
      optional :description, :string, 4
      optional :client_id, :string, 5
      repeated :scopes, :string, 6
      optional :transfer_type, :enum, 7, "google.cloud.bigquery.datatransfer.v1.TransferType"
      optional :supports_multiple_transfers, :bool, 8
      optional :update_deadline_seconds, :int32, 9
      optional :default_schedule, :string, 10
      optional :supports_custom_schedule, :bool, 11
      repeated :parameters, :message, 12, "google.cloud.bigquery.datatransfer.v1.DataSourceParameter"
      optional :help_url, :string, 13
      optional :authorization_type, :enum, 14, "google.cloud.bigquery.datatransfer.v1.DataSource.AuthorizationType"
      optional :data_refresh_type, :enum, 15, "google.cloud.bigquery.datatransfer.v1.DataSource.DataRefreshType"
      optional :default_data_refresh_window_days, :int32, 16
      optional :manual_runs_disabled, :bool, 17
      optional :minimum_schedule_interval, :message, 18, "google.protobuf.Duration"
    end
    add_enum "google.cloud.bigquery.datatransfer.v1.DataSource.AuthorizationType" do
      value :AUTHORIZATION_TYPE_UNSPECIFIED, 0
      value :AUTHORIZATION_CODE, 1
      value :GOOGLE_PLUS_AUTHORIZATION_CODE, 2
      value :FIRST_PARTY_OAUTH, 3
    end
    add_enum "google.cloud.bigquery.datatransfer.v1.DataSource.DataRefreshType" do
      value :DATA_REFRESH_TYPE_UNSPECIFIED, 0
      value :SLIDING_WINDOW, 1
      value :CUSTOM_SLIDING_WINDOW, 2
    end
    add_message "google.cloud.bigquery.datatransfer.v1.GetDataSourceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListDataSourcesRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 3
      optional :page_size, :int32, 4
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListDataSourcesResponse" do
      repeated :data_sources, :message, 1, "google.cloud.bigquery.datatransfer.v1.DataSource"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.datatransfer.v1.CreateTransferConfigRequest" do
      optional :parent, :string, 1
      optional :transfer_config, :message, 2, "google.cloud.bigquery.datatransfer.v1.TransferConfig"
      optional :authorization_code, :string, 3
      optional :version_info, :string, 5
      optional :service_account_name, :string, 6
    end
    add_message "google.cloud.bigquery.datatransfer.v1.UpdateTransferConfigRequest" do
      optional :transfer_config, :message, 1, "google.cloud.bigquery.datatransfer.v1.TransferConfig"
      optional :authorization_code, :string, 3
      optional :update_mask, :message, 4, "google.protobuf.FieldMask"
      optional :version_info, :string, 5
      optional :service_account_name, :string, 6
    end
    add_message "google.cloud.bigquery.datatransfer.v1.GetTransferConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.DeleteTransferConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.GetTransferRunRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.DeleteTransferRunRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListTransferConfigsRequest" do
      optional :parent, :string, 1
      repeated :data_source_ids, :string, 2
      optional :page_token, :string, 3
      optional :page_size, :int32, 4
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListTransferConfigsResponse" do
      repeated :transfer_configs, :message, 1, "google.cloud.bigquery.datatransfer.v1.TransferConfig"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest" do
      optional :parent, :string, 1
      repeated :states, :enum, 2, "google.cloud.bigquery.datatransfer.v1.TransferState"
      optional :page_token, :string, 3
      optional :page_size, :int32, 4
      optional :run_attempt, :enum, 5, "google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest.RunAttempt"
    end
    add_enum "google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest.RunAttempt" do
      value :RUN_ATTEMPT_UNSPECIFIED, 0
      value :LATEST, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListTransferRunsResponse" do
      repeated :transfer_runs, :message, 1, "google.cloud.bigquery.datatransfer.v1.TransferRun"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListTransferLogsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 4
      optional :page_size, :int32, 5
      repeated :message_types, :enum, 6, "google.cloud.bigquery.datatransfer.v1.TransferMessage.MessageSeverity"
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ListTransferLogsResponse" do
      repeated :transfer_messages, :message, 1, "google.cloud.bigquery.datatransfer.v1.TransferMessage"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.datatransfer.v1.CheckValidCredsRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.CheckValidCredsResponse" do
      optional :has_valid_creds, :bool, 1
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsRequest" do
      optional :parent, :string, 1
      optional :start_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsResponse" do
      repeated :runs, :message, 1, "google.cloud.bigquery.datatransfer.v1.TransferRun"
    end
    add_message "google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest" do
      optional :parent, :string, 1
      oneof :time do
        optional :requested_time_range, :message, 3, "google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest.TimeRange"
        optional :requested_run_time, :message, 4, "google.protobuf.Timestamp"
      end
    end
    add_message "google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest.TimeRange" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsResponse" do
      repeated :runs, :message, 1, "google.cloud.bigquery.datatransfer.v1.TransferRun"
    end
    add_message "google.cloud.bigquery.datatransfer.v1.EnrollDataSourcesRequest" do
      optional :name, :string, 1
      repeated :data_source_ids, :string, 2
    end
  end
end

module Google
  module Cloud
    module Bigquery
      module DataTransfer
        module V1
          DataSourceParameter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSourceParameter").msgclass
          DataSourceParameter::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSourceParameter.Type").enummodule
          DataSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSource").msgclass
          DataSource::AuthorizationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSource.AuthorizationType").enummodule
          DataSource::DataRefreshType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSource.DataRefreshType").enummodule
          GetDataSourceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.GetDataSourceRequest").msgclass
          ListDataSourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListDataSourcesRequest").msgclass
          ListDataSourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListDataSourcesResponse").msgclass
          CreateTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.CreateTransferConfigRequest").msgclass
          UpdateTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.UpdateTransferConfigRequest").msgclass
          GetTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.GetTransferConfigRequest").msgclass
          DeleteTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DeleteTransferConfigRequest").msgclass
          GetTransferRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.GetTransferRunRequest").msgclass
          DeleteTransferRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DeleteTransferRunRequest").msgclass
          ListTransferConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferConfigsRequest").msgclass
          ListTransferConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferConfigsResponse").msgclass
          ListTransferRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest").msgclass
          ListTransferRunsRequest::RunAttempt = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest.RunAttempt").enummodule
          ListTransferRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferRunsResponse").msgclass
          ListTransferLogsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferLogsRequest").msgclass
          ListTransferLogsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferLogsResponse").msgclass
          CheckValidCredsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.CheckValidCredsRequest").msgclass
          CheckValidCredsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.CheckValidCredsResponse").msgclass
          ScheduleTransferRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsRequest").msgclass
          ScheduleTransferRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsResponse").msgclass
          StartManualTransferRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest").msgclass
          StartManualTransferRunsRequest::TimeRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest.TimeRange").msgclass
          StartManualTransferRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsResponse").msgclass
          EnrollDataSourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.EnrollDataSourcesRequest").msgclass
        end
      end
    end
  end
end
