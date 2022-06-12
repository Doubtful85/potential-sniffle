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
require "google/cloud/resourcemanager/v3/organizations_pb"

module Google
  module Cloud
    module ResourceManager
      module V3
        module Organizations
          ##
          # Client for the Organizations service.
          #
          # Allows users to manage their organization resources.
          #
          class Client
            include Paths

            # @private
            attr_reader :organizations_stub

            ##
            # Configure the Organizations Client class.
            #
            # See {::Google::Cloud::ResourceManager::V3::Organizations::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all Organizations clients
            #   ::Google::Cloud::ResourceManager::V3::Organizations::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "ResourceManager", "V3"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.get_organization.timeout = 60.0
                default_config.rpcs.get_organization.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.search_organizations.timeout = 60.0

                default_config.rpcs.get_iam_policy.timeout = 60.0
                default_config.rpcs.get_iam_policy.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.set_iam_policy.timeout = 60.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Organizations Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::ResourceManager::V3::Organizations::Client::Configuration}
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
            # Create a new Organizations client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::ResourceManager::V3::Organizations::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::ResourceManager::V3::Organizations::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Organizations client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/resourcemanager/v3/organizations_services_pb"

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

              @organizations_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::ResourceManager::V3::Organizations::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Fetches an organization resource identified by the specified resource name.
            #
            # @overload get_organization(request, options = nil)
            #   Pass arguments to `get_organization` via a request object, either of type
            #   {::Google::Cloud::ResourceManager::V3::GetOrganizationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceManager::V3::GetOrganizationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_organization(name: nil)
            #   Pass arguments to `get_organization` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The resource name of the Organization to fetch. This is the organization's
            #     relative path in the API, formatted as "organizations/[organizationId]".
            #     For example, "organizations/1234".
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::ResourceManager::V3::Organization]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::ResourceManager::V3::Organization]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def get_organization request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceManager::V3::GetOrganizationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_organization.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_organization.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_organization.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @organizations_stub.call_rpc :get_organization, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Searches organization resources that are visible to the user and satisfy
            # the specified filter. This method returns organizations in an unspecified
            # order. New organizations do not necessarily appear at the end of the
            # results, and may take a small amount of time to appear.
            #
            # Search will only return organizations on which the user has the permission
            # `resourcemanager.organizations.get`
            #
            # @overload search_organizations(request, options = nil)
            #   Pass arguments to `search_organizations` via a request object, either of type
            #   {::Google::Cloud::ResourceManager::V3::SearchOrganizationsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceManager::V3::SearchOrganizationsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload search_organizations(page_size: nil, page_token: nil, query: nil)
            #   Pass arguments to `search_organizations` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param page_size [::Integer]
            #     Optional. The maximum number of organizations to return in the response.
            #     If unspecified, server picks an appropriate default.
            #   @param page_token [::String]
            #     Optional. A pagination token returned from a previous call to `SearchOrganizations`
            #     that indicates from where listing should continue.
            #   @param query [::String]
            #     Optional. An optional query string used to filter the Organizations to return in
            #     the response. Query rules are case-insensitive.
            #
            #
            #     | Field            | Description                                |
            #     |------------------|--------------------------------------------|
            #     | directoryCustomerId, owner.directoryCustomerId | Filters by directory
            #     customer id. |
            #     | domain           | Filters by domain.                         |
            #
            #     Organizations may be queried by `directoryCustomerId` or by
            #     `domain`, where the domain is a G Suite domain, for example:
            #
            #     * Query `directorycustomerid:123456789` returns Organization
            #     resources with `owner.directory_customer_id` equal to `123456789`.
            #     * Query `domain:google.com` returns Organization resources corresponding
            #     to the domain `google.com`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::ResourceManager::V3::Organization>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::ResourceManager::V3::Organization>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def search_organizations request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceManager::V3::SearchOrganizationsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.search_organizations.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.search_organizations.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.search_organizations.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @organizations_stub.call_rpc :search_organizations, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @organizations_stub, :search_organizations, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets the access control policy for an organization resource. The policy may
            # be empty if no such policy or resource exists. The `resource` field should
            # be the organization's resource name, for example: "organizations/123".
            #
            # Authorization requires the IAM permission
            # `resourcemanager.organizations.getIamPolicy` on the specified organization.
            #
            # @overload get_iam_policy(request, options = nil)
            #   Pass arguments to `get_iam_policy` via a request object, either of type
            #   {::Google::Iam::V1::GetIamPolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V1::GetIamPolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_iam_policy(resource: nil, options: nil)
            #   Pass arguments to `get_iam_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param resource [::String]
            #     REQUIRED: The resource for which the policy is being requested.
            #     See the operation documentation for the appropriate value for this field.
            #   @param options [::Google::Iam::V1::GetPolicyOptions, ::Hash]
            #     OPTIONAL: A `GetPolicyOptions` object for specifying options to
            #     `GetIamPolicy`. This field is only used by Cloud IAM.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Iam::V1::Policy]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Iam::V1::Policy]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def get_iam_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V1::GetIamPolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_iam_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.resource
                header_params["resource"] = request.resource
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_iam_policy.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_iam_policy.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @organizations_stub.call_rpc :get_iam_policy, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Sets the access control policy on an organization resource. Replaces any
            # existing policy. The `resource` field should be the organization's resource
            # name, for example: "organizations/123".
            #
            # Authorization requires the IAM permission
            # `resourcemanager.organizations.setIamPolicy` on the specified organization.
            #
            # @overload set_iam_policy(request, options = nil)
            #   Pass arguments to `set_iam_policy` via a request object, either of type
            #   {::Google::Iam::V1::SetIamPolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V1::SetIamPolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload set_iam_policy(resource: nil, policy: nil)
            #   Pass arguments to `set_iam_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param resource [::String]
            #     REQUIRED: The resource for which the policy is being specified.
            #     See the operation documentation for the appropriate value for this field.
            #   @param policy [::Google::Iam::V1::Policy, ::Hash]
            #     REQUIRED: The complete policy to be applied to the `resource`. The size of
            #     the policy is limited to a few 10s of KB. An empty policy is a
            #     valid policy but certain Cloud Platform services (such as Projects)
            #     might reject them.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Iam::V1::Policy]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Iam::V1::Policy]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def set_iam_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V1::SetIamPolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.set_iam_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.resource
                header_params["resource"] = request.resource
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.set_iam_policy.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.set_iam_policy.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @organizations_stub.call_rpc :set_iam_policy, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Returns the permissions that a caller has on the specified organization.
            # The `resource` field should be the organization's resource name,
            # for example: "organizations/123".
            #
            # There are no permissions required for making this API call.
            #
            # @overload test_iam_permissions(request, options = nil)
            #   Pass arguments to `test_iam_permissions` via a request object, either of type
            #   {::Google::Iam::V1::TestIamPermissionsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V1::TestIamPermissionsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload test_iam_permissions(resource: nil, permissions: nil)
            #   Pass arguments to `test_iam_permissions` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param resource [::String]
            #     REQUIRED: The resource for which the policy detail is being requested.
            #     See the operation documentation for the appropriate value for this field.
            #   @param permissions [::Array<::String>]
            #     The set of permissions to check for the `resource`. Permissions with
            #     wildcards (such as '*' or 'storage.*') are not allowed. For more
            #     information see
            #     [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Iam::V1::TestIamPermissionsResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Iam::V1::TestIamPermissionsResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def test_iam_permissions request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V1::TestIamPermissionsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.test_iam_permissions.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.resource
                header_params["resource"] = request.resource
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.test_iam_permissions.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.test_iam_permissions.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @organizations_stub.call_rpc :test_iam_permissions, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Organizations API.
            #
            # This class represents the configuration for Organizations,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::ResourceManager::V3::Organizations::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # get_organization to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::ResourceManager::V3::Organizations::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.get_organization.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::ResourceManager::V3::Organizations::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.get_organization.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"cloudresourcemanager.googleapis.com"`.
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

              config_attr :endpoint,      "cloudresourcemanager.googleapis.com", ::String
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
              # Configuration RPC class for the Organizations API.
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
                # RPC-specific configuration for `get_organization`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_organization
                ##
                # RPC-specific configuration for `search_organizations`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :search_organizations
                ##
                # RPC-specific configuration for `get_iam_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_iam_policy
                ##
                # RPC-specific configuration for `set_iam_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :set_iam_policy
                ##
                # RPC-specific configuration for `test_iam_permissions`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :test_iam_permissions

                # @private
                def initialize parent_rpcs = nil
                  get_organization_config = parent_rpcs.get_organization if parent_rpcs.respond_to? :get_organization
                  @get_organization = ::Gapic::Config::Method.new get_organization_config
                  search_organizations_config = parent_rpcs.search_organizations if parent_rpcs.respond_to? :search_organizations
                  @search_organizations = ::Gapic::Config::Method.new search_organizations_config
                  get_iam_policy_config = parent_rpcs.get_iam_policy if parent_rpcs.respond_to? :get_iam_policy
                  @get_iam_policy = ::Gapic::Config::Method.new get_iam_policy_config
                  set_iam_policy_config = parent_rpcs.set_iam_policy if parent_rpcs.respond_to? :set_iam_policy
                  @set_iam_policy = ::Gapic::Config::Method.new set_iam_policy_config
                  test_iam_permissions_config = parent_rpcs.test_iam_permissions if parent_rpcs.respond_to? :test_iam_permissions
                  @test_iam_permissions = ::Gapic::Config::Method.new test_iam_permissions_config

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
