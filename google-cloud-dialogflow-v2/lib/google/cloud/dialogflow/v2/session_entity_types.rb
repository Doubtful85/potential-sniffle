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

require "google/cloud/dialogflow/v2/version"

require "google/cloud/dialogflow/v2/session_entity_types/credentials"
require "google/cloud/dialogflow/v2/session_entity_types/paths"
require "google/cloud/dialogflow/v2/session_entity_types/client"

module Google
  module Cloud
    module Dialogflow
      module V2
        ##
        # Service for managing {::Google::Cloud::Dialogflow::V2::SessionEntityType SessionEntityTypes}.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/dialogflow/v2/session_entity_types"
        #     client = ::Google::Cloud::Dialogflow::V2::SessionEntityTypes::Client.new
        #
        module SessionEntityTypes
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "session_entity_types", "helpers.rb"
require "google/cloud/dialogflow/v2/session_entity_types/helpers" if ::File.file? helper_path
