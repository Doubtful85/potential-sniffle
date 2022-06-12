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

# [START cloudbuild_v1_generated_CloudBuild_ListWorkerPools_sync]
require "google/cloud/build/v1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Build::V1::CloudBuild::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Build::V1::ListWorkerPoolsRequest.new

# Call the list_worker_pools method.
result = client.list_worker_pools request

# The returned object is of type Gapic::PagedEnumerable. You can
# iterate over all elements by calling #each, and the enumerable
# will lazily make API calls to fetch subsequent pages. Other
# methods are also available for managing paging directly.
result.each do |response|
  # Each element is of type ::Google::Cloud::Build::V1::WorkerPool.
  p response
end
# [END cloudbuild_v1_generated_CloudBuild_ListWorkerPools_sync]
