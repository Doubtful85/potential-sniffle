# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/dataplex/v1/version"

require "google/cloud/dataplex/v1/dataplex_service/credentials"
require "google/cloud/dataplex/v1/dataplex_service/paths"
require "google/cloud/dataplex/v1/dataplex_service/operations"
require "google/cloud/dataplex/v1/dataplex_service/client"

module Google
  module Cloud
    module Dataplex
      module V1
        ##
        # Dataplex service provides data lakes as a service. The primary resources
        # offered by this service are Lakes, Zones and Assets which collectively allow
        # a data adminstrator to organize, manage, secure and catalog data across their
        # organization located across cloud projects in a variety of storage systems
        # including Cloud Storage and BigQuery.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/dataplex/v1/dataplex_service"
        #     client = ::Google::Cloud::Dataplex::V1::DataplexService::Client.new
        #
        module DataplexService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "dataplex_service", "helpers.rb"
require "google/cloud/dataplex/v1/dataplex_service/helpers" if ::File.file? helper_path