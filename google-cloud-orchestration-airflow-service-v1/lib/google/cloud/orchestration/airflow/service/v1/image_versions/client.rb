# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/errors"
require "google/cloud/orchestration/airflow/service/v1/image_versions_pb"

module Google
  module Cloud
    module Orchestration
      module Airflow
        module Service
          module V1
            module ImageVersions
              ##
              # Client for the ImageVersions service.
              #
              # Readonly service to query available ImageVersions.
              #
              class Client
                # @private
                attr_reader :image_versions_stub

                ##
                # Configure the ImageVersions Client class.
                #
                # See {::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client::Configuration}
                # for a description of the configuration fields.
                #
                # @example
                #
                #   # Modify the configuration for all ImageVersions clients
                #   ::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client.configure do |config|
                #     config.timeout = 10.0
                #   end
                #
                # @yield [config] Configure the Client client.
                # @yieldparam config [Client::Configuration]
                #
                # @return [Client::Configuration]
                #
                def self.configure
                  @configure ||= begin
                    namespace = ["Google", "Cloud", "Orchestration", "Airflow", "Service", "V1"]
                    parent_config = while namespace.any?
                                      parent_name = namespace.join "::"
                                      parent_const = const_get parent_name
                                      break parent_const.configure if parent_const.respond_to? :configure
                                      namespace.pop
                                    end
                    default_config = Client::Configuration.new parent_config

                    default_config
                  end
                  yield @configure if block_given?
                  @configure
                end

                ##
                # Configure the ImageVersions Client instance.
                #
                # The configuration is set to the derived mode, meaning that values can be changed,
                # but structural changes (adding new fields, etc.) are not allowed. Structural changes
                # should be made on {Client.configure}.
                #
                # See {::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client::Configuration}
                # for a description of the configuration fields.
                #
                # @yield [config] Configure the Client client.
                # @yieldparam config [Client::Configuration]
                #
                # @return [Client::Configuration]
                #
                def configure
                  yield @config if block_given?
                  @config
                end

                ##
                # Create a new ImageVersions client object.
                #
                # @example
                #
                #   # Create a client using the default configuration
                #   client = ::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client.new
                #
                #   # Create a client using a custom configuration
                #   client = ::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client.new do |config|
                #     config.timeout = 10.0
                #   end
                #
                # @yield [config] Configure the ImageVersions client.
                # @yieldparam config [Client::Configuration]
                #
                def initialize
                  # These require statements are intentionally placed here to initialize
                  # the gRPC module only when it's required.
                  # See https://github.com/googleapis/toolkit/issues/446
                  require "gapic/grpc"
                  require "google/cloud/orchestration/airflow/service/v1/image_versions_services_pb"

                  # Create the configuration object
                  @config = Configuration.new Client.configure

                  # Yield the configuration if needed
                  yield @config if block_given?

                  # Create credentials
                  credentials = @config.credentials
                  # Use self-signed JWT if the endpoint is unchanged from default,
                  # but only if the default endpoint does not have a region prefix.
                  enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                           !@config.endpoint.split(".").first.include?("-")
                  credentials ||= Credentials.default scope: @config.scope,
                                                      enable_self_signed_jwt: enable_self_signed_jwt
                  if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                    credentials = Credentials.new credentials, scope: @config.scope
                  end
                  @quota_project_id = @config.quota_project
                  @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                  @image_versions_stub = ::Gapic::ServiceStub.new(
                    ::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Stub,
                    credentials:  credentials,
                    endpoint:     @config.endpoint,
                    channel_args: @config.channel_args,
                    interceptors: @config.interceptors
                  )
                end

                # Service calls

                ##
                # List ImageVersions for provided location.
                #
                # @overload list_image_versions(request, options = nil)
                #   Pass arguments to `list_image_versions` via a request object, either of type
                #   {::Google::Cloud::Orchestration::Airflow::Service::V1::ListImageVersionsRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Cloud::Orchestration::Airflow::Service::V1::ListImageVersionsRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
                #
                # @overload list_image_versions(parent: nil, page_size: nil, page_token: nil, include_past_releases: nil)
                #   Pass arguments to `list_image_versions` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param parent [::String]
                #     List ImageVersions in the given project and location, in the form:
                #     "projects/\\{projectId}/locations/\\{locationId}"
                #   @param page_size [::Integer]
                #     The maximum number of image_versions to return.
                #   @param page_token [::String]
                #     The next_page_token value returned from a previous List request, if any.
                #   @param include_past_releases [::Boolean]
                #     Whether or not image versions from old releases should be included.
                #
                # @yield [response, operation] Access the result along with the RPC operation
                # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersion>]
                # @yieldparam operation [::GRPC::ActiveCall::Operation]
                #
                # @return [::Gapic::PagedEnumerable<::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersion>]
                #
                # @raise [::Google::Cloud::Error] if the RPC is aborted.
                #
                def list_image_versions request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Orchestration::Airflow::Service::V1::ListImageVersionsRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  metadata = @config.rpcs.list_image_versions.metadata.to_h

                  # Set x-goog-api-client and x-goog-user-project headers
                  metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Cloud::Orchestration::Airflow::Service::V1::VERSION
                  metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  header_params = {}
                  if request.parent
                    header_params["parent"] = request.parent
                  end

                  request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                  metadata[:"x-goog-request-params"] ||= request_params_header

                  options.apply_defaults timeout:      @config.rpcs.list_image_versions.timeout,
                                         metadata:     metadata,
                                         retry_policy: @config.rpcs.list_image_versions.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @image_versions_stub.call_rpc :list_image_versions, request, options: options do |response, operation|
                    response = ::Gapic::PagedEnumerable.new @image_versions_stub, :list_image_versions, request, response, operation, options
                    yield response, operation if block_given?
                    return response
                  end
                rescue ::GRPC::BadStatus => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Configuration class for the ImageVersions API.
                #
                # This class represents the configuration for ImageVersions,
                # providing control over timeouts, retry behavior, logging, transport
                # parameters, and other low-level controls. Certain parameters can also be
                # applied individually to specific RPCs. See
                # {::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client::Configuration::Rpcs}
                # for a list of RPCs that can be configured independently.
                #
                # Configuration can be applied globally to all clients, or to a single client
                # on construction.
                #
                # @example
                #
                #   # Modify the global config, setting the timeout for
                #   # list_image_versions to 20 seconds,
                #   # and all remaining timeouts to 10 seconds.
                #   ::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client.configure do |config|
                #     config.timeout = 10.0
                #     config.rpcs.list_image_versions.timeout = 20.0
                #   end
                #
                #   # Apply the above configuration only to a new client.
                #   client = ::Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client.new do |config|
                #     config.timeout = 10.0
                #     config.rpcs.list_image_versions.timeout = 20.0
                #   end
                #
                # @!attribute [rw] endpoint
                #   The hostname or hostname:port of the service endpoint.
                #   Defaults to `"composer.googleapis.com"`.
                #   @return [::String]
                # @!attribute [rw] credentials
                #   Credentials to send with calls. You may provide any of the following types:
                #    *  (`String`) The path to a service account key file in JSON format
                #    *  (`Hash`) A service account key as a Hash
                #    *  (`Google::Auth::Credentials`) A googleauth credentials object
                #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
                #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
                #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
                #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
                #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
                #    *  (`nil`) indicating no credentials
                #   @return [::Object]
                # @!attribute [rw] scope
                #   The OAuth scopes
                #   @return [::Array<::String>]
                # @!attribute [rw] lib_name
                #   The library name as recorded in instrumentation and logging
                #   @return [::String]
                # @!attribute [rw] lib_version
                #   The library version as recorded in instrumentation and logging
                #   @return [::String]
                # @!attribute [rw] channel_args
                #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
                #   `GRPC::Core::Channel` object is provided as the credential.
                #   @return [::Hash]
                # @!attribute [rw] interceptors
                #   An array of interceptors that are run before calls are executed.
                #   @return [::Array<::GRPC::ClientInterceptor>]
                # @!attribute [rw] timeout
                #   The call timeout in seconds.
                #   @return [::Numeric]
                # @!attribute [rw] metadata
                #   Additional gRPC headers to be sent with the call.
                #   @return [::Hash{::Symbol=>::String}]
                # @!attribute [rw] retry_policy
                #   The retry policy. The value is a hash with the following keys:
                #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #       trigger a retry.
                #   @return [::Hash]
                # @!attribute [rw] quota_project
                #   A separate project against which to charge quota.
                #   @return [::String]
                #
                class Configuration
                  extend ::Gapic::Config

                  config_attr :endpoint,      "composer.googleapis.com", ::String
                  config_attr :credentials,   nil do |value|
                    allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                    allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                    allowed.any? { |klass| klass === value }
                  end
                  config_attr :scope,         nil, ::String, ::Array, nil
                  config_attr :lib_name,      nil, ::String, nil
                  config_attr :lib_version,   nil, ::String, nil
                  config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
                  config_attr :interceptors,  nil, ::Array, nil
                  config_attr :timeout,       nil, ::Numeric, nil
                  config_attr :metadata,      nil, ::Hash, nil
                  config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                  config_attr :quota_project, nil, ::String, nil

                  # @private
                  def initialize parent_config = nil
                    @parent_config = parent_config unless parent_config.nil?

                    yield self if block_given?
                  end

                  ##
                  # Configurations for individual RPCs
                  # @return [Rpcs]
                  #
                  def rpcs
                    @rpcs ||= begin
                      parent_rpcs = nil
                      parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                      Rpcs.new parent_rpcs
                    end
                  end

                  ##
                  # Configuration RPC class for the ImageVersions API.
                  #
                  # Includes fields providing the configuration for each RPC in this service.
                  # Each configuration object is of type `Gapic::Config::Method` and includes
                  # the following configuration fields:
                  #
                  #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                  #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
                  #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                  #     include the following keys:
                  #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                  #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                  #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                  #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                  #         trigger a retry.
                  #
                  class Rpcs
                    ##
                    # RPC-specific configuration for `list_image_versions`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :list_image_versions

                    # @private
                    def initialize parent_rpcs = nil
                      list_image_versions_config = parent_rpcs.list_image_versions if parent_rpcs.respond_to? :list_image_versions
                      @list_image_versions = ::Gapic::Config::Method.new list_image_versions_config

                      yield self if block_given?
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
