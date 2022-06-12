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

# [START dlp_v2_generated_DlpService_DeleteInspectTemplate_sync]
require "google/cloud/dlp/v2"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Dlp::V2::DlpService::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Dlp::V2::DeleteInspectTemplateRequest.new

# Call the delete_inspect_template method.
result = client.delete_inspect_template request

# The returned object is of type Google::Protobuf::Empty.
p result
# [END dlp_v2_generated_DlpService_DeleteInspectTemplate_sync]
