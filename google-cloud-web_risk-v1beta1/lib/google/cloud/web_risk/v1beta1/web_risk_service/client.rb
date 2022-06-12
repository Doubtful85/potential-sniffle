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

require "google/cloud/errors"
require "google/cloud/webrisk/v1beta1/webrisk_pb"

module Google
  module Cloud
    module WebRisk
      module V1beta1
        module WebRiskService
          ##
          # Client for the WebRiskService service.
          #
          # Web Risk v1beta1 API defines an interface to detect malicious URLs on your
          # website and in client applications.
          #
          class Client
            # @private
            attr_reader :web_risk_service_stub

            ##
            # Configure the WebRiskService Client class.
            #
            # See {::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all WebRiskService clients
            #   ::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "WebRisk", "V1beta1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.compute_threat_list_diff.timeout = 600.0
                default_config.rpcs.compute_threat_list_diff.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                }

                default_config.rpcs.search_uris.timeout = 600.0
                default_config.rpcs.search_uris.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                }

                default_config.rpcs.search_hashes.timeout = 600.0
                default_config.rpcs.search_hashes.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the WebRiskService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client::Configuration}
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
            # Create a new WebRiskService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the WebRiskService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/webrisk/v1beta1/webrisk_services_pb"

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

              @web_risk_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::WebRisk::V1beta1::WebRiskServiceV1Beta1::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Gets the most recent threat list diffs.
            #
            # @overload compute_threat_list_diff(request, options = nil)
            #   Pass arguments to `compute_threat_list_diff` via a request object, either of type
            #   {::Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload compute_threat_list_diff(threat_type: nil, version_token: nil, constraints: nil)
            #   Pass arguments to `compute_threat_list_diff` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param threat_type [::Google::Cloud::WebRisk::V1beta1::ThreatType]
            #     The ThreatList to update.
            #   @param version_token [::String]
            #     The current version token of the client for the requested list (the
            #     client version that was received from the last successful diff).
            #   @param constraints [::Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffRequest::Constraints, ::Hash]
            #     Required. The constraints associated with this request.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/web_risk/v1beta1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffRequest.new
            #
            #   # Call the compute_threat_list_diff method.
            #   result = client.compute_threat_list_diff request
            #
            #   # The returned object is of type Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffResponse.
            #   p result
            #
            def compute_threat_list_diff request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.compute_threat_list_diff.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::WebRisk::V1beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.compute_threat_list_diff.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.compute_threat_list_diff.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @web_risk_service_stub.call_rpc :compute_threat_list_diff, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # This method is used to check whether a URI is on a given threatList.
            #
            # @overload search_uris(request, options = nil)
            #   Pass arguments to `search_uris` via a request object, either of type
            #   {::Google::Cloud::WebRisk::V1beta1::SearchUrisRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::WebRisk::V1beta1::SearchUrisRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload search_uris(uri: nil, threat_types: nil)
            #   Pass arguments to `search_uris` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param uri [::String]
            #     Required. The URI to be checked for matches.
            #   @param threat_types [::Array<::Google::Cloud::WebRisk::V1beta1::ThreatType>]
            #     Required. The ThreatLists to search in.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::WebRisk::V1beta1::SearchUrisResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::WebRisk::V1beta1::SearchUrisResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/web_risk/v1beta1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::WebRisk::V1beta1::SearchUrisRequest.new
            #
            #   # Call the search_uris method.
            #   result = client.search_uris request
            #
            #   # The returned object is of type Google::Cloud::WebRisk::V1beta1::SearchUrisResponse.
            #   p result
            #
            def search_uris request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::WebRisk::V1beta1::SearchUrisRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.search_uris.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::WebRisk::V1beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.search_uris.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.search_uris.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @web_risk_service_stub.call_rpc :search_uris, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets the full hashes that match the requested hash prefix.
            # This is used after a hash prefix is looked up in a threatList
            # and there is a match. The client side threatList only holds partial hashes
            # so the client must query this method to determine if there is a full
            # hash match of a threat.
            #
            # @overload search_hashes(request, options = nil)
            #   Pass arguments to `search_hashes` via a request object, either of type
            #   {::Google::Cloud::WebRisk::V1beta1::SearchHashesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::WebRisk::V1beta1::SearchHashesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload search_hashes(hash_prefix: nil, threat_types: nil)
            #   Pass arguments to `search_hashes` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param hash_prefix [::String]
            #     A hash prefix, consisting of the most significant 4-32 bytes of a SHA256
            #     hash. For JSON requests, this field is base64-encoded.
            #   @param threat_types [::Array<::Google::Cloud::WebRisk::V1beta1::ThreatType>]
            #     Required. The ThreatLists to search in.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::WebRisk::V1beta1::SearchHashesResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::WebRisk::V1beta1::SearchHashesResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/web_risk/v1beta1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::WebRisk::V1beta1::SearchHashesRequest.new
            #
            #   # Call the search_hashes method.
            #   result = client.search_hashes request
            #
            #   # The returned object is of type Google::Cloud::WebRisk::V1beta1::SearchHashesResponse.
            #   p result
            #
            def search_hashes request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::WebRisk::V1beta1::SearchHashesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.search_hashes.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::WebRisk::V1beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.search_hashes.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.search_hashes.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @web_risk_service_stub.call_rpc :search_hashes, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the WebRiskService API.
            #
            # This class represents the configuration for WebRiskService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # compute_threat_list_diff to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.compute_threat_list_diff.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.compute_threat_list_diff.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"webrisk.googleapis.com"`.
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

              config_attr :endpoint,      "webrisk.googleapis.com", ::String
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
              # Configuration RPC class for the WebRiskService API.
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
                # RPC-specific configuration for `compute_threat_list_diff`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :compute_threat_list_diff
                ##
                # RPC-specific configuration for `search_uris`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :search_uris
                ##
                # RPC-specific configuration for `search_hashes`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :search_hashes

                # @private
                def initialize parent_rpcs = nil
                  compute_threat_list_diff_config = parent_rpcs.compute_threat_list_diff if parent_rpcs.respond_to? :compute_threat_list_diff
                  @compute_threat_list_diff = ::Gapic::Config::Method.new compute_threat_list_diff_config
                  search_uris_config = parent_rpcs.search_uris if parent_rpcs.respond_to? :search_uris
                  @search_uris = ::Gapic::Config::Method.new search_uris_config
                  search_hashes_config = parent_rpcs.search_hashes if parent_rpcs.respond_to? :search_hashes
                  @search_hashes = ::Gapic::Config::Method.new search_hashes_config

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
