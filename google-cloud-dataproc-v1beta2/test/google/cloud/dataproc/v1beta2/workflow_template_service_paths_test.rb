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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dataproc/v1beta2/workflow_template_service"

class ::Google::Cloud::Dataproc::V1beta2::WorkflowTemplateService::ClientPathsTest < Minitest::Test
  def test_cluster_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataproc::V1beta2::WorkflowTemplateService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cluster_path project: "value0", location: "value1", cluster: "value2"
      assert_equal "projects/value0/locations/value1/clusters/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataproc::V1beta2::WorkflowTemplateService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_region_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataproc::V1beta2::WorkflowTemplateService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.region_path project: "value0", region: "value1"
      assert_equal "projects/value0/regions/value1", path
    end
  end

  def test_workflow_template_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataproc::V1beta2::WorkflowTemplateService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.workflow_template_path project: "value0", region: "value1", workflow_template: "value2"
      assert_equal "projects/value0/regions/value1/workflowTemplates/value2", path

      path = client.workflow_template_path project: "value0", location: "value1", workflow_template: "value2"
      assert_equal "projects/value0/locations/value1/workflowTemplates/value2", path
    end
  end
end
