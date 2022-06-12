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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/os_config/v1/version"

require "google/cloud/os_config/v1/os_config_service/credentials"
require "google/cloud/os_config/v1/os_config_service/paths"
require "google/cloud/os_config/v1/os_config_service/client"

module Google
  module Cloud
    module OsConfig
      module V1
        ##
        # OS Config API
        #
        # The OS Config service is a server-side component that you can use to
        # manage package installations and patch jobs for virtual machine instances.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/os_config/v1/os_config_service"
        #     client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new
        #
        module OsConfigService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "os_config_service", "helpers.rb"
require "google/cloud/os_config/v1/os_config_service/helpers" if ::File.file? helper_path
