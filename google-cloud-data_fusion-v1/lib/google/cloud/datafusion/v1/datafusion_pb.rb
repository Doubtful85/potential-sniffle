# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datafusion/v1/datafusion.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/datafusion/v1/datafusion.proto", :syntax => :proto3) do
    add_message "google.cloud.datafusion.v1.NetworkConfig" do
      optional :network, :string, 1
      optional :ip_allocation, :string, 2
    end
    add_message "google.cloud.datafusion.v1.Version" do
      optional :version_number, :string, 1
      optional :default_version, :bool, 2
      repeated :available_features, :string, 3
      optional :type, :enum, 4, "google.cloud.datafusion.v1.Version.Type"
    end
    add_enum "google.cloud.datafusion.v1.Version.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :TYPE_PREVIEW, 1
      value :TYPE_GENERAL_AVAILABILITY, 2
    end
    add_message "google.cloud.datafusion.v1.Accelerator" do
      optional :accelerator_type, :enum, 1, "google.cloud.datafusion.v1.Accelerator.AcceleratorType"
      optional :state, :enum, 2, "google.cloud.datafusion.v1.Accelerator.State"
    end
    add_enum "google.cloud.datafusion.v1.Accelerator.AcceleratorType" do
      value :ACCELERATOR_TYPE_UNSPECIFIED, 0
      value :CDC, 1
      value :HEALTHCARE, 2
      value :CCAI_INSIGHTS, 3
    end
    add_enum "google.cloud.datafusion.v1.Accelerator.State" do
      value :STATE_UNSPECIFIED, 0
      value :ENABLED, 1
      value :DISABLED, 2
      value :UNKNOWN, 3
    end
    add_message "google.cloud.datafusion.v1.CryptoKeyConfig" do
      optional :key_reference, :string, 1
    end
    add_message "google.cloud.datafusion.v1.Instance" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :type, :enum, 3, "google.cloud.datafusion.v1.Instance.Type"
      optional :enable_stackdriver_logging, :bool, 4
      optional :enable_stackdriver_monitoring, :bool, 5
      optional :private_instance, :bool, 6
      optional :network_config, :message, 7, "google.cloud.datafusion.v1.NetworkConfig"
      map :labels, :string, :string, 8
      map :options, :string, :string, 9
      optional :create_time, :message, 10, "google.protobuf.Timestamp"
      optional :update_time, :message, 11, "google.protobuf.Timestamp"
      optional :state, :enum, 12, "google.cloud.datafusion.v1.Instance.State"
      optional :state_message, :string, 13
      optional :service_endpoint, :string, 14
      optional :zone, :string, 15
      optional :version, :string, 16
      optional :service_account, :string, 17
      optional :display_name, :string, 18
      repeated :available_version, :message, 19, "google.cloud.datafusion.v1.Version"
      optional :api_endpoint, :string, 20
      optional :gcs_bucket, :string, 21
      repeated :accelerators, :message, 22, "google.cloud.datafusion.v1.Accelerator"
      optional :p4_service_account, :string, 23
      optional :tenant_project_id, :string, 24
      optional :dataproc_service_account, :string, 25
      optional :enable_rbac, :bool, 27
      optional :crypto_key_config, :message, 28, "google.cloud.datafusion.v1.CryptoKeyConfig"
      repeated :disabled_reason, :enum, 29, "google.cloud.datafusion.v1.Instance.DisabledReason"
    end
    add_enum "google.cloud.datafusion.v1.Instance.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :BASIC, 1
      value :ENTERPRISE, 2
      value :DEVELOPER, 3
    end
    add_enum "google.cloud.datafusion.v1.Instance.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :ACTIVE, 2
      value :FAILED, 3
      value :DELETING, 4
      value :UPGRADING, 5
      value :RESTARTING, 6
      value :UPDATING, 7
      value :AUTO_UPDATING, 8
      value :AUTO_UPGRADING, 9
      value :DISABLED, 10
    end
    add_enum "google.cloud.datafusion.v1.Instance.DisabledReason" do
      value :DISABLED_REASON_UNSPECIFIED, 0
      value :KMS_KEY_ISSUE, 1
    end
    add_message "google.cloud.datafusion.v1.ListInstancesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.datafusion.v1.ListInstancesResponse" do
      repeated :instances, :message, 1, "google.cloud.datafusion.v1.Instance"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.datafusion.v1.ListAvailableVersionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :latest_patch_only, :bool, 4
    end
    add_message "google.cloud.datafusion.v1.ListAvailableVersionsResponse" do
      repeated :available_versions, :message, 1, "google.cloud.datafusion.v1.Version"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.datafusion.v1.GetInstanceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.datafusion.v1.CreateInstanceRequest" do
      optional :parent, :string, 1
      optional :instance_id, :string, 2
      optional :instance, :message, 3, "google.cloud.datafusion.v1.Instance"
    end
    add_message "google.cloud.datafusion.v1.DeleteInstanceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.datafusion.v1.UpdateInstanceRequest" do
      optional :instance, :message, 1, "google.cloud.datafusion.v1.Instance"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.datafusion.v1.RestartInstanceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.datafusion.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_detail, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
      map :additional_status, :string, :string, 8
    end
  end
end

module Google
  module Cloud
    module DataFusion
      module V1
        NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.NetworkConfig").msgclass
        Version = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Version").msgclass
        Version::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Version.Type").enummodule
        Accelerator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Accelerator").msgclass
        Accelerator::AcceleratorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Accelerator.AcceleratorType").enummodule
        Accelerator::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Accelerator.State").enummodule
        CryptoKeyConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.CryptoKeyConfig").msgclass
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Instance").msgclass
        Instance::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Instance.Type").enummodule
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Instance.State").enummodule
        Instance::DisabledReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.Instance.DisabledReason").enummodule
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.ListInstancesResponse").msgclass
        ListAvailableVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.ListAvailableVersionsRequest").msgclass
        ListAvailableVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.ListAvailableVersionsResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.CreateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.DeleteInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.UpdateInstanceRequest").msgclass
        RestartInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.RestartInstanceRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datafusion.v1.OperationMetadata").msgclass
      end
    end
  end
end
