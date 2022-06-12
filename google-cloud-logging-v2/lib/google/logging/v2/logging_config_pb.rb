# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/logging/v2/logging_config.proto

require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/logging/v2/logging_config.proto", :syntax => :proto3) do
    add_message "google.logging.v2.LogBucket" do
      optional :name, :string, 1
      optional :description, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      optional :retention_days, :int32, 11
      optional :locked, :bool, 9
      optional :lifecycle_state, :enum, 12, "google.logging.v2.LifecycleState"
    end
    add_message "google.logging.v2.LogView" do
      optional :name, :string, 1
      optional :description, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      optional :filter, :string, 7
    end
    add_message "google.logging.v2.LogSink" do
      optional :name, :string, 1
      optional :destination, :string, 3
      optional :filter, :string, 5
      optional :description, :string, 18
      optional :disabled, :bool, 19
      repeated :exclusions, :message, 16, "google.logging.v2.LogExclusion"
      optional :output_version_format, :enum, 6, "google.logging.v2.LogSink.VersionFormat"
      optional :writer_identity, :string, 8
      optional :include_children, :bool, 9
      optional :create_time, :message, 13, "google.protobuf.Timestamp"
      optional :update_time, :message, 14, "google.protobuf.Timestamp"
      oneof :options do
        optional :bigquery_options, :message, 12, "google.logging.v2.BigQueryOptions"
      end
    end
    add_enum "google.logging.v2.LogSink.VersionFormat" do
      value :VERSION_FORMAT_UNSPECIFIED, 0
      value :V2, 1
      value :V1, 2
    end
    add_message "google.logging.v2.BigQueryOptions" do
      optional :use_partitioned_tables, :bool, 1
      optional :uses_timestamp_column_partitioning, :bool, 3
    end
    add_message "google.logging.v2.ListBucketsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.logging.v2.ListBucketsResponse" do
      repeated :buckets, :message, 1, "google.logging.v2.LogBucket"
      optional :next_page_token, :string, 2
    end
    add_message "google.logging.v2.CreateBucketRequest" do
      optional :parent, :string, 1
      optional :bucket_id, :string, 2
      optional :bucket, :message, 3, "google.logging.v2.LogBucket"
    end
    add_message "google.logging.v2.UpdateBucketRequest" do
      optional :name, :string, 1
      optional :bucket, :message, 2, "google.logging.v2.LogBucket"
      optional :update_mask, :message, 4, "google.protobuf.FieldMask"
    end
    add_message "google.logging.v2.GetBucketRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.DeleteBucketRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.UndeleteBucketRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.ListViewsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.logging.v2.ListViewsResponse" do
      repeated :views, :message, 1, "google.logging.v2.LogView"
      optional :next_page_token, :string, 2
    end
    add_message "google.logging.v2.CreateViewRequest" do
      optional :parent, :string, 1
      optional :view_id, :string, 2
      optional :view, :message, 3, "google.logging.v2.LogView"
    end
    add_message "google.logging.v2.UpdateViewRequest" do
      optional :name, :string, 1
      optional :view, :message, 2, "google.logging.v2.LogView"
      optional :update_mask, :message, 4, "google.protobuf.FieldMask"
    end
    add_message "google.logging.v2.GetViewRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.DeleteViewRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.ListSinksRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.logging.v2.ListSinksResponse" do
      repeated :sinks, :message, 1, "google.logging.v2.LogSink"
      optional :next_page_token, :string, 2
    end
    add_message "google.logging.v2.GetSinkRequest" do
      optional :sink_name, :string, 1
    end
    add_message "google.logging.v2.CreateSinkRequest" do
      optional :parent, :string, 1
      optional :sink, :message, 2, "google.logging.v2.LogSink"
      optional :unique_writer_identity, :bool, 3
    end
    add_message "google.logging.v2.UpdateSinkRequest" do
      optional :sink_name, :string, 1
      optional :sink, :message, 2, "google.logging.v2.LogSink"
      optional :unique_writer_identity, :bool, 3
      optional :update_mask, :message, 4, "google.protobuf.FieldMask"
    end
    add_message "google.logging.v2.DeleteSinkRequest" do
      optional :sink_name, :string, 1
    end
    add_message "google.logging.v2.LogExclusion" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :filter, :string, 3
      optional :disabled, :bool, 4
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
    end
    add_message "google.logging.v2.ListExclusionsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.logging.v2.ListExclusionsResponse" do
      repeated :exclusions, :message, 1, "google.logging.v2.LogExclusion"
      optional :next_page_token, :string, 2
    end
    add_message "google.logging.v2.GetExclusionRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.CreateExclusionRequest" do
      optional :parent, :string, 1
      optional :exclusion, :message, 2, "google.logging.v2.LogExclusion"
    end
    add_message "google.logging.v2.UpdateExclusionRequest" do
      optional :name, :string, 1
      optional :exclusion, :message, 2, "google.logging.v2.LogExclusion"
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "google.logging.v2.DeleteExclusionRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.GetCmekSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.logging.v2.UpdateCmekSettingsRequest" do
      optional :name, :string, 1
      optional :cmek_settings, :message, 2, "google.logging.v2.CmekSettings"
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "google.logging.v2.CmekSettings" do
      optional :name, :string, 1
      optional :kms_key_name, :string, 2
      optional :service_account_id, :string, 3
    end
    add_enum "google.logging.v2.LifecycleState" do
      value :LIFECYCLE_STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :DELETE_REQUESTED, 2
    end
  end
end

module Google
  module Cloud
    module Logging
      module V2
        LogBucket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogBucket").msgclass
        LogView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogView").msgclass
        LogSink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogSink").msgclass
        LogSink::VersionFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogSink.VersionFormat").enummodule
        BigQueryOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.BigQueryOptions").msgclass
        ListBucketsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListBucketsRequest").msgclass
        ListBucketsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListBucketsResponse").msgclass
        CreateBucketRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.CreateBucketRequest").msgclass
        UpdateBucketRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.UpdateBucketRequest").msgclass
        GetBucketRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.GetBucketRequest").msgclass
        DeleteBucketRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.DeleteBucketRequest").msgclass
        UndeleteBucketRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.UndeleteBucketRequest").msgclass
        ListViewsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListViewsRequest").msgclass
        ListViewsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListViewsResponse").msgclass
        CreateViewRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.CreateViewRequest").msgclass
        UpdateViewRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.UpdateViewRequest").msgclass
        GetViewRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.GetViewRequest").msgclass
        DeleteViewRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.DeleteViewRequest").msgclass
        ListSinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListSinksRequest").msgclass
        ListSinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListSinksResponse").msgclass
        GetSinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.GetSinkRequest").msgclass
        CreateSinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.CreateSinkRequest").msgclass
        UpdateSinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.UpdateSinkRequest").msgclass
        DeleteSinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.DeleteSinkRequest").msgclass
        LogExclusion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogExclusion").msgclass
        ListExclusionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListExclusionsRequest").msgclass
        ListExclusionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListExclusionsResponse").msgclass
        GetExclusionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.GetExclusionRequest").msgclass
        CreateExclusionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.CreateExclusionRequest").msgclass
        UpdateExclusionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.UpdateExclusionRequest").msgclass
        DeleteExclusionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.DeleteExclusionRequest").msgclass
        GetCmekSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.GetCmekSettingsRequest").msgclass
        UpdateCmekSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.UpdateCmekSettingsRequest").msgclass
        CmekSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.CmekSettings").msgclass
        LifecycleState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LifecycleState").enummodule
      end
    end
  end
end
