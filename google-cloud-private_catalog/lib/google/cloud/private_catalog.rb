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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/private_catalog/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :private_catalog do |config|
  config.add_field! :endpoint,      "cloudprivatecatalog.googleapis.com", match: ::String
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
    module PrivateCatalog
      ##
      # Create a new client object for PrivateCatalog.
      #
      # By default, this returns an instance of
      # [Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Client](https://googleapis.dev/ruby/google-cloud-private_catalog-v1beta1/latest/Google/Cloud/PrivateCatalog/V1beta1/PrivateCatalog/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the PrivateCatalog service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PrivateCatalog
      #
      # `PrivateCatalog` allows catalog consumers to retrieve `Catalog`, `Product`
      # and `Version` resources under a target resource context.
      #
      # `Catalog` is computed based on the [Association][]s linked to the target
      # resource and its ancestors. Each association's
      # [google.cloud.privatecatalogproducer.v1beta.Catalog][] is transformed into a
      # `Catalog`. If multiple associations have the same parent
      # [google.cloud.privatecatalogproducer.v1beta.Catalog][], they are
      # de-duplicated into one `Catalog`. Users must have
      # `cloudprivatecatalog.catalogTargets.get` IAM permission on the resource
      # context in order to access catalogs. `Catalog` contains the resource name and
      # a subset of data of the original
      # [google.cloud.privatecatalogproducer.v1beta.Catalog][].
      #
      # `Product` is child resource of the catalog. A `Product` contains the resource
      # name and a subset of the data of the original
      # [google.cloud.privatecatalogproducer.v1beta.Product][].
      #
      # `Version` is child resource of the product. A `Version` contains the resource
      # name and a subset of the data of the original
      # [google.cloud.privatecatalogproducer.v1beta.Version][].
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [PrivateCatalog::Client] A client object for the specified version.
      #
      def self.private_catalog version: :v1beta1, &block
        require "google/cloud/private_catalog/#{version.to_s.downcase}"

        package_name = Google::Cloud::PrivateCatalog
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::PrivateCatalog.const_get package_name
        package_module.const_get(:PrivateCatalog).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-private_catalog library.
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
        yield ::Google::Cloud.configure.private_catalog if block_given?

        ::Google::Cloud.configure.private_catalog
      end
    end
  end
end

helper_path = ::File.join __dir__, "private_catalog", "helpers.rb"
require "google/cloud/private_catalog/helpers" if ::File.file? helper_path
