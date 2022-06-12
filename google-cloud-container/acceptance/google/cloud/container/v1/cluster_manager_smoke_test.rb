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

# AUTO GENERATED BY GAPIC

require "simplecov"
require "minitest/autorun"
require "minitest/spec"

require "google/cloud/container"

describe "ClusterManagerSmokeTest v1" do
  it "runs one smoke test with list_clusters" do
    unless ENV["CONTAINER_TEST_PROJECT"]
      fail "CONTAINER_TEST_PROJECT environment variable must be defined"
    end
    project_id = ENV["CONTAINER_TEST_PROJECT"].freeze

    cluster_manager_client = Google::Cloud::Container.new(version: :v1)
    project_id_2 = project_id
    zone = "us-central1-a"
    response = cluster_manager_client.list_clusters(project_id: project_id_2, zone: zone)
  end
end
