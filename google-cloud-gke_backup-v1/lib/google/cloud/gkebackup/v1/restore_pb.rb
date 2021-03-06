# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkebackup/v1/restore.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkebackup/v1/common_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/gkebackup/v1/restore.proto", :syntax => :proto3) do
    add_message "google.cloud.gkebackup.v1.Restore" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      optional :description, :string, 5
      optional :backup, :string, 6
      optional :cluster, :string, 7
      optional :restore_config, :message, 8, "google.cloud.gkebackup.v1.RestoreConfig"
      map :labels, :string, :string, 9
      optional :state, :enum, 10, "google.cloud.gkebackup.v1.Restore.State"
      optional :state_reason, :string, 11
      optional :complete_time, :message, 12, "google.protobuf.Timestamp"
      optional :resources_restored_count, :int32, 13
      optional :resources_excluded_count, :int32, 14
      optional :resources_failed_count, :int32, 15
      optional :volumes_restored_count, :int32, 16
      optional :etag, :string, 17
    end
    add_enum "google.cloud.gkebackup.v1.Restore.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :IN_PROGRESS, 2
      value :SUCCEEDED, 3
      value :FAILED, 4
      value :DELETING, 5
    end
    add_message "google.cloud.gkebackup.v1.RestoreConfig" do
      optional :volume_data_restore_policy, :enum, 1, "google.cloud.gkebackup.v1.RestoreConfig.VolumeDataRestorePolicy"
      optional :cluster_resource_conflict_policy, :enum, 2, "google.cloud.gkebackup.v1.RestoreConfig.ClusterResourceConflictPolicy"
      optional :namespaced_resource_restore_mode, :enum, 3, "google.cloud.gkebackup.v1.RestoreConfig.NamespacedResourceRestoreMode"
      optional :cluster_resource_restore_scope, :message, 4, "google.cloud.gkebackup.v1.RestoreConfig.ClusterResourceRestoreScope"
      repeated :substitution_rules, :message, 8, "google.cloud.gkebackup.v1.RestoreConfig.SubstitutionRule"
      oneof :namespaced_resource_restore_scope do
        optional :all_namespaces, :bool, 5
        optional :selected_namespaces, :message, 6, "google.cloud.gkebackup.v1.Namespaces"
        optional :selected_applications, :message, 7, "google.cloud.gkebackup.v1.NamespacedNames"
      end
    end
    add_message "google.cloud.gkebackup.v1.RestoreConfig.GroupKind" do
      optional :resource_group, :string, 1
      optional :resource_kind, :string, 2
    end
    add_message "google.cloud.gkebackup.v1.RestoreConfig.ClusterResourceRestoreScope" do
      repeated :selected_group_kinds, :message, 1, "google.cloud.gkebackup.v1.RestoreConfig.GroupKind"
    end
    add_message "google.cloud.gkebackup.v1.RestoreConfig.SubstitutionRule" do
      repeated :target_namespaces, :string, 1
      repeated :target_group_kinds, :message, 2, "google.cloud.gkebackup.v1.RestoreConfig.GroupKind"
      optional :target_json_path, :string, 3
      optional :original_value_pattern, :string, 4
      optional :new_value, :string, 5
    end
    add_enum "google.cloud.gkebackup.v1.RestoreConfig.VolumeDataRestorePolicy" do
      value :VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED, 0
      value :RESTORE_VOLUME_DATA_FROM_BACKUP, 1
      value :REUSE_VOLUME_HANDLE_FROM_BACKUP, 2
      value :NO_VOLUME_DATA_RESTORATION, 3
    end
    add_enum "google.cloud.gkebackup.v1.RestoreConfig.ClusterResourceConflictPolicy" do
      value :CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED, 0
      value :USE_EXISTING_VERSION, 1
      value :USE_BACKUP_VERSION, 2
    end
    add_enum "google.cloud.gkebackup.v1.RestoreConfig.NamespacedResourceRestoreMode" do
      value :NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED, 0
      value :DELETE_AND_RESTORE, 1
      value :FAIL_ON_CONFLICT, 2
    end
  end
end

module Google
  module Cloud
    module GkeBackup
      module V1
        Restore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.Restore").msgclass
        Restore::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.Restore.State").enummodule
        RestoreConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestoreConfig").msgclass
        RestoreConfig::GroupKind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestoreConfig.GroupKind").msgclass
        RestoreConfig::ClusterResourceRestoreScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestoreConfig.ClusterResourceRestoreScope").msgclass
        RestoreConfig::SubstitutionRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestoreConfig.SubstitutionRule").msgclass
        RestoreConfig::VolumeDataRestorePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestoreConfig.VolumeDataRestorePolicy").enummodule
        RestoreConfig::ClusterResourceConflictPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestoreConfig.ClusterResourceConflictPolicy").enummodule
        RestoreConfig::NamespacedResourceRestoreMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.RestoreConfig.NamespacedResourceRestoreMode").enummodule
      end
    end
  end
end
