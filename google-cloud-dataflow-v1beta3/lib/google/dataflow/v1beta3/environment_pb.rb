# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/dataflow/v1beta3/environment.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/struct_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/dataflow/v1beta3/environment.proto", :syntax => :proto3) do
    add_message "google.dataflow.v1beta3.Environment" do
      optional :temp_storage_prefix, :string, 1
      optional :cluster_manager_api_service, :string, 2
      repeated :experiments, :string, 3
      repeated :service_options, :string, 16
      optional :service_kms_key_name, :string, 12
      repeated :worker_pools, :message, 4, "google.dataflow.v1beta3.WorkerPool"
      optional :user_agent, :message, 5, "google.protobuf.Struct"
      optional :version, :message, 6, "google.protobuf.Struct"
      optional :dataset, :string, 7
      optional :sdk_pipeline_options, :message, 8, "google.protobuf.Struct"
      optional :internal_experiments, :message, 9, "google.protobuf.Any"
      optional :service_account_email, :string, 10
      optional :flex_resource_scheduling_goal, :enum, 11, "google.dataflow.v1beta3.FlexResourceSchedulingGoal"
      optional :worker_region, :string, 13
      optional :worker_zone, :string, 14
      optional :shuffle_mode, :enum, 15, "google.dataflow.v1beta3.ShuffleMode"
      optional :debug_options, :message, 17, "google.dataflow.v1beta3.DebugOptions"
    end
    add_message "google.dataflow.v1beta3.Package" do
      optional :name, :string, 1
      optional :location, :string, 2
    end
    add_message "google.dataflow.v1beta3.Disk" do
      optional :size_gb, :int32, 1
      optional :disk_type, :string, 2
      optional :mount_point, :string, 3
    end
    add_message "google.dataflow.v1beta3.WorkerSettings" do
      optional :base_url, :string, 1
      optional :reporting_enabled, :bool, 2
      optional :service_path, :string, 3
      optional :shuffle_service_path, :string, 4
      optional :worker_id, :string, 5
      optional :temp_storage_prefix, :string, 6
    end
    add_message "google.dataflow.v1beta3.TaskRunnerSettings" do
      optional :task_user, :string, 1
      optional :task_group, :string, 2
      repeated :oauth_scopes, :string, 3
      optional :base_url, :string, 4
      optional :dataflow_api_version, :string, 5
      optional :parallel_worker_settings, :message, 6, "google.dataflow.v1beta3.WorkerSettings"
      optional :base_task_dir, :string, 7
      optional :continue_on_exception, :bool, 8
      optional :log_to_serialconsole, :bool, 9
      optional :alsologtostderr, :bool, 10
      optional :log_upload_location, :string, 11
      optional :log_dir, :string, 12
      optional :temp_storage_prefix, :string, 13
      optional :harness_command, :string, 14
      optional :workflow_file_name, :string, 15
      optional :commandlines_file_name, :string, 16
      optional :vm_id, :string, 17
      optional :language_hint, :string, 18
      optional :streaming_worker_main_class, :string, 19
    end
    add_message "google.dataflow.v1beta3.AutoscalingSettings" do
      optional :algorithm, :enum, 1, "google.dataflow.v1beta3.AutoscalingAlgorithm"
      optional :max_num_workers, :int32, 2
    end
    add_message "google.dataflow.v1beta3.SdkHarnessContainerImage" do
      optional :container_image, :string, 1
      optional :use_single_core_per_container, :bool, 2
      optional :environment_id, :string, 3
      repeated :capabilities, :string, 4
    end
    add_message "google.dataflow.v1beta3.WorkerPool" do
      optional :kind, :string, 1
      optional :num_workers, :int32, 2
      repeated :packages, :message, 3, "google.dataflow.v1beta3.Package"
      optional :default_package_set, :enum, 4, "google.dataflow.v1beta3.DefaultPackageSet"
      optional :machine_type, :string, 5
      optional :teardown_policy, :enum, 6, "google.dataflow.v1beta3.TeardownPolicy"
      optional :disk_size_gb, :int32, 7
      optional :disk_type, :string, 16
      optional :disk_source_image, :string, 8
      optional :zone, :string, 9
      optional :taskrunner_settings, :message, 10, "google.dataflow.v1beta3.TaskRunnerSettings"
      optional :on_host_maintenance, :string, 11
      repeated :data_disks, :message, 12, "google.dataflow.v1beta3.Disk"
      map :metadata, :string, :string, 13
      optional :autoscaling_settings, :message, 14, "google.dataflow.v1beta3.AutoscalingSettings"
      optional :pool_args, :message, 15, "google.protobuf.Any"
      optional :network, :string, 17
      optional :subnetwork, :string, 19
      optional :worker_harness_container_image, :string, 18
      optional :num_threads_per_worker, :int32, 20
      optional :ip_configuration, :enum, 21, "google.dataflow.v1beta3.WorkerIPAddressConfiguration"
      repeated :sdk_harness_container_images, :message, 22, "google.dataflow.v1beta3.SdkHarnessContainerImage"
    end
    add_message "google.dataflow.v1beta3.DebugOptions" do
      optional :enable_hot_key_logging, :bool, 1
    end
    add_enum "google.dataflow.v1beta3.JobType" do
      value :JOB_TYPE_UNKNOWN, 0
      value :JOB_TYPE_BATCH, 1
      value :JOB_TYPE_STREAMING, 2
    end
    add_enum "google.dataflow.v1beta3.FlexResourceSchedulingGoal" do
      value :FLEXRS_UNSPECIFIED, 0
      value :FLEXRS_SPEED_OPTIMIZED, 1
      value :FLEXRS_COST_OPTIMIZED, 2
    end
    add_enum "google.dataflow.v1beta3.TeardownPolicy" do
      value :TEARDOWN_POLICY_UNKNOWN, 0
      value :TEARDOWN_ALWAYS, 1
      value :TEARDOWN_ON_SUCCESS, 2
      value :TEARDOWN_NEVER, 3
    end
    add_enum "google.dataflow.v1beta3.DefaultPackageSet" do
      value :DEFAULT_PACKAGE_SET_UNKNOWN, 0
      value :DEFAULT_PACKAGE_SET_NONE, 1
      value :DEFAULT_PACKAGE_SET_JAVA, 2
      value :DEFAULT_PACKAGE_SET_PYTHON, 3
    end
    add_enum "google.dataflow.v1beta3.AutoscalingAlgorithm" do
      value :AUTOSCALING_ALGORITHM_UNKNOWN, 0
      value :AUTOSCALING_ALGORITHM_NONE, 1
      value :AUTOSCALING_ALGORITHM_BASIC, 2
    end
    add_enum "google.dataflow.v1beta3.WorkerIPAddressConfiguration" do
      value :WORKER_IP_UNSPECIFIED, 0
      value :WORKER_IP_PUBLIC, 1
      value :WORKER_IP_PRIVATE, 2
    end
    add_enum "google.dataflow.v1beta3.ShuffleMode" do
      value :SHUFFLE_MODE_UNSPECIFIED, 0
      value :VM_BASED, 1
      value :SERVICE_BASED, 2
    end
  end
end

module Google
  module Cloud
    module Dataflow
      module V1beta3
        Environment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.Environment").msgclass
        Package = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.Package").msgclass
        Disk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.Disk").msgclass
        WorkerSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.WorkerSettings").msgclass
        TaskRunnerSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.TaskRunnerSettings").msgclass
        AutoscalingSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.AutoscalingSettings").msgclass
        SdkHarnessContainerImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.SdkHarnessContainerImage").msgclass
        WorkerPool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.WorkerPool").msgclass
        DebugOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.DebugOptions").msgclass
        JobType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobType").enummodule
        FlexResourceSchedulingGoal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.FlexResourceSchedulingGoal").enummodule
        TeardownPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.TeardownPolicy").enummodule
        DefaultPackageSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.DefaultPackageSet").enummodule
        AutoscalingAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.AutoscalingAlgorithm").enummodule
        WorkerIPAddressConfiguration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.WorkerIPAddressConfiguration").enummodule
        ShuffleMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ShuffleMode").enummodule
      end
    end
  end
end
