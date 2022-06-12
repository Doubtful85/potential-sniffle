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
require "google/identity/access_context_manager/version"

require "googleauth"

module Google
  module Identity
    module AccessContextManager
      ##
      # Create a new client object for AccessContextManager.
      #
      # By default, this returns an instance of
      # [Google::Identity::AccessContextManager::V1::AccessContextManager::Client](https://googleapis.dev/ruby/google-identity-access_context_manager-v1/latest/Google/Identity/AccessContextManager/V1/AccessContextManager/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the AccessContextManager service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AccessContextManager
      #
      # API for setting [Access Levels]
      # [google.identity.accesscontextmanager.v1.AccessLevel] and [Service
      # Perimeters] [google.identity.accesscontextmanager.v1.ServicePerimeter]
      # for Google Cloud Projects. Each organization has one [AccessPolicy]
      # [google.identity.accesscontextmanager.v1.AccessPolicy] containing the
      # [Access Levels] [google.identity.accesscontextmanager.v1.AccessLevel]
      # and [Service Perimeters]
      # [google.identity.accesscontextmanager.v1.ServicePerimeter]. This
      # [AccessPolicy] [google.identity.accesscontextmanager.v1.AccessPolicy] is
      # applicable to all resources in the organization.
      # AccessPolicies
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [AccessContextManager::Client] A client object for the specified version.
      #
      def self.access_context_manager version: :v1, &block
        require "google/identity/access_context_manager/#{version.to_s.downcase}"

        package_name = Google::Identity::AccessContextManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Identity::AccessContextManager.const_get package_name
        package_module.const_get(:AccessContextManager).const_get(:Client).new(&block)
      end
    end
  end
end

helper_path = ::File.join __dir__, "access_context_manager", "helpers.rb"
require "google/identity/access_context_manager/helpers" if ::File.file? helper_path
