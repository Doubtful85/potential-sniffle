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

require "google/cloud/firestore/admin/v1/version"

require "google/cloud/firestore/admin/v1/firestore_admin/credentials"
require "google/cloud/firestore/admin/v1/firestore_admin/paths"
require "google/cloud/firestore/admin/v1/firestore_admin/operations"
require "google/cloud/firestore/admin/v1/firestore_admin/client"

module Google
  module Cloud
    module Firestore
      module Admin
        module V1
          ##
          # Operations are created by service `FirestoreAdmin`, but are accessed via
          # service `google.longrunning.Operations`.
          #
          # To load this service and instantiate a client:
          #
          #     require "google/cloud/firestore/admin/v1/firestore_admin"
          #     client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new
          #
          module FirestoreAdmin
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "firestore_admin", "helpers.rb"
require "google/cloud/firestore/admin/v1/firestore_admin/helpers" if ::File.file? helper_path
