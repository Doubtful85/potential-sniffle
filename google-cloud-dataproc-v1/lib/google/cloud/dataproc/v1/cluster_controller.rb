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

require "google/cloud/dataproc/v1/version"

require "google/cloud/dataproc/v1/cluster_controller/credentials"
require "google/cloud/dataproc/v1/cluster_controller/paths"
require "google/cloud/dataproc/v1/cluster_controller/operations"
require "google/cloud/dataproc/v1/cluster_controller/client"

module Google
  module Cloud
    module Dataproc
      module V1
        ##
        # The ClusterControllerService provides methods to manage clusters
        # of Compute Engine instances.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/dataproc/v1/cluster_controller"
        #     client = ::Google::Cloud::Dataproc::V1::ClusterController::Client.new
        #
        module ClusterController
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cluster_controller", "helpers.rb"
require "google/cloud/dataproc/v1/cluster_controller/helpers" if ::File.file? helper_path
