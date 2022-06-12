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

# [START dialogflow_v2_generated_SessionEntityTypes_UpdateSessionEntityType_sync]
require "google/cloud/dialogflow/v2"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Dialogflow::V2::SessionEntityTypes::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Dialogflow::V2::UpdateSessionEntityTypeRequest.new

# Call the update_session_entity_type method.
result = client.update_session_entity_type request

# The returned object is of type Google::Cloud::Dialogflow::V2::SessionEntityType.
p result
# [END dialogflow_v2_generated_SessionEntityTypes_UpdateSessionEntityType_sync]
