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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/monitoring/metrics_scope/v1/version"

require "google/cloud/monitoring/metrics_scope/v1/metrics_scopes/credentials"
require "google/cloud/monitoring/metrics_scope/v1/metrics_scopes/paths"
require "google/cloud/monitoring/metrics_scope/v1/metrics_scopes/operations"
require "google/cloud/monitoring/metrics_scope/v1/metrics_scopes/client"

module Google
  module Cloud
    module Monitoring
      module MetricsScope
        module V1
          ##
          # Manages Cloud Monitoring Metrics Scopes, and the monitoring of Google Cloud
          # projects and AWS accounts.
          #
          # To load this service and instantiate a client:
          #
          #     require "google/cloud/monitoring/metrics_scope/v1/metrics_scopes"
          #     client = ::Google::Cloud::Monitoring::MetricsScope::V1::MetricsScopes::Client.new
          #
          module MetricsScopes
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "metrics_scopes", "helpers.rb"
require "google/cloud/monitoring/metrics_scope/v1/metrics_scopes/helpers" if ::File.file? helper_path
