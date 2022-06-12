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

# [START websecurityscanner_v1beta_generated_WebSecurityScanner_GetScanRun_sync]
require "google/cloud/web_security_scanner/v1beta"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::WebSecurityScanner::V1beta::GetScanRunRequest.new

# Call the get_scan_run method.
result = client.get_scan_run request

# The returned object is of type Google::Cloud::WebSecurityScanner::V1beta::ScanRun.
p result
# [END websecurityscanner_v1beta_generated_WebSecurityScanner_GetScanRun_sync]
