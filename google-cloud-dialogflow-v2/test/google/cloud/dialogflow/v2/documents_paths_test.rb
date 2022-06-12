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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/v2/documents"

class ::Google::Cloud::Dialogflow::V2::Documents::ClientPathsTest < Minitest::Test
  def test_document_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.document_path project: "value0", knowledge_base: "value1", document: "value2"
      assert_equal "projects/value0/knowledgeBases/value1/documents/value2", path

      path = client.document_path project: "value0", location: "value1", knowledge_base: "value2", document: "value3"
      assert_equal "projects/value0/locations/value1/knowledgeBases/value2/documents/value3", path
    end
  end

  def test_knowledge_base_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.knowledge_base_path project: "value0", knowledge_base: "value1"
      assert_equal "projects/value0/knowledgeBases/value1", path

      path = client.knowledge_base_path project: "value0", location: "value1", knowledge_base: "value2"
      assert_equal "projects/value0/locations/value1/knowledgeBases/value2", path
    end
  end
end
