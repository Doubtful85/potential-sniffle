# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/dataproc/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :dataproc do |config|
  config.add_field! :endpoint,      "dataproc.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module Dataproc
      ##
      # Create a new client object for AutoscalingPolicyService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Client](https://googleapis.dev/ruby/google-cloud-dataproc-v1/latest/Google/Cloud/Dataproc/V1/AutoscalingPolicyService/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the AutoscalingPolicyService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AutoscalingPolicyService
      #
      # The API interface for managing autoscaling policies in the
      # Dataproc API.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [AutoscalingPolicyService::Client] A client object for the specified version.
      #
      def self.autoscaling_policy_service version: :v1, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dataproc.const_get package_name
        package_module.const_get(:AutoscalingPolicyService).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for BatchController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::BatchController::Client](https://googleapis.dev/ruby/google-cloud-dataproc-v1/latest/Google/Cloud/Dataproc/V1/BatchController/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the BatchController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About BatchController
      #
      # The BatchController provides methods to manage batch workloads.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [BatchController::Client] A client object for the specified version.
      #
      def self.batch_controller version: :v1, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dataproc.const_get package_name
        package_module.const_get(:BatchController).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ClusterController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::ClusterController::Client](https://googleapis.dev/ruby/google-cloud-dataproc-v1/latest/Google/Cloud/Dataproc/V1/ClusterController/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the ClusterController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About ClusterController
      #
      # The ClusterControllerService provides methods to manage clusters
      # of Compute Engine instances.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [ClusterController::Client] A client object for the specified version.
      #
      def self.cluster_controller version: :v1, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dataproc.const_get package_name
        package_module.const_get(:ClusterController).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for JobController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::JobController::Client](https://googleapis.dev/ruby/google-cloud-dataproc-v1/latest/Google/Cloud/Dataproc/V1/JobController/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the JobController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About JobController
      #
      # The JobController provides methods to manage jobs.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [JobController::Client] A client object for the specified version.
      #
      def self.job_controller version: :v1, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dataproc.const_get package_name
        package_module.const_get(:JobController).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for WorkflowTemplateService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::WorkflowTemplateService::Client](https://googleapis.dev/ruby/google-cloud-dataproc-v1/latest/Google/Cloud/Dataproc/V1/WorkflowTemplateService/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the WorkflowTemplateService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About WorkflowTemplateService
      #
      # The API interface for managing Workflow Templates in the
      # Dataproc API.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [WorkflowTemplateService::Client] A client object for the specified version.
      #
      def self.workflow_template_service version: :v1, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dataproc.const_get package_name
        package_module.const_get(:WorkflowTemplateService).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-dataproc library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional gRPC headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.dataproc if block_given?

        ::Google::Cloud.configure.dataproc
      end
    end
  end
end

helper_path = ::File.join __dir__, "dataproc", "helpers.rb"
require "google/cloud/dataproc/helpers" if ::File.file? helper_path
