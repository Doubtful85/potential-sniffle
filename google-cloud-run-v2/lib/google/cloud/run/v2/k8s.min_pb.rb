# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/k8s.min.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/run/v2/k8s.min.proto", :syntax => :proto3) do
    add_message "google.cloud.run.v2.Container" do
      optional :name, :string, 1
      optional :image, :string, 2
      repeated :command, :string, 3
      repeated :args, :string, 4
      repeated :env, :message, 5, "google.cloud.run.v2.EnvVar"
      optional :resources, :message, 6, "google.cloud.run.v2.ResourceRequirements"
      repeated :ports, :message, 7, "google.cloud.run.v2.ContainerPort"
      repeated :volume_mounts, :message, 8, "google.cloud.run.v2.VolumeMount"
    end
    add_message "google.cloud.run.v2.ResourceRequirements" do
      map :limits, :string, :string, 1
      optional :cpu_idle, :bool, 2
    end
    add_message "google.cloud.run.v2.EnvVar" do
      optional :name, :string, 1
      oneof :values do
        optional :value, :string, 2
        optional :value_source, :message, 3, "google.cloud.run.v2.EnvVarSource"
      end
    end
    add_message "google.cloud.run.v2.EnvVarSource" do
      optional :secret_key_ref, :message, 1, "google.cloud.run.v2.SecretKeySelector"
    end
    add_message "google.cloud.run.v2.SecretKeySelector" do
      optional :secret, :string, 1
      optional :version, :string, 2
    end
    add_message "google.cloud.run.v2.ContainerPort" do
      optional :name, :string, 1
      optional :container_port, :int32, 3
    end
    add_message "google.cloud.run.v2.VolumeMount" do
      optional :name, :string, 1
      optional :mount_path, :string, 3
    end
    add_message "google.cloud.run.v2.Volume" do
      optional :name, :string, 1
      oneof :volume_type do
        optional :secret, :message, 2, "google.cloud.run.v2.SecretVolumeSource"
        optional :cloud_sql_instance, :message, 3, "google.cloud.run.v2.CloudSqlInstance"
      end
    end
    add_message "google.cloud.run.v2.SecretVolumeSource" do
      optional :secret, :string, 1
      repeated :items, :message, 2, "google.cloud.run.v2.VersionToPath"
      optional :default_mode, :int32, 3
    end
    add_message "google.cloud.run.v2.VersionToPath" do
      optional :path, :string, 1
      optional :version, :string, 2
      optional :mode, :int32, 3
    end
    add_message "google.cloud.run.v2.CloudSqlInstance" do
      repeated :instances, :string, 1
    end
  end
end

module Google
  module Cloud
    module Run
      module V2
        Container = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Container").msgclass
        ResourceRequirements = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ResourceRequirements").msgclass
        EnvVar = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.EnvVar").msgclass
        EnvVarSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.EnvVarSource").msgclass
        SecretKeySelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SecretKeySelector").msgclass
        ContainerPort = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ContainerPort").msgclass
        VolumeMount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.VolumeMount").msgclass
        Volume = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Volume").msgclass
        SecretVolumeSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SecretVolumeSource").msgclass
        VersionToPath = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.VersionToPath").msgclass
        CloudSqlInstance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.CloudSqlInstance").msgclass
      end
    end
  end
end
