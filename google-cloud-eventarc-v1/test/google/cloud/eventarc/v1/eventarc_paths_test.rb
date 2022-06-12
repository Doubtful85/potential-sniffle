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

require "google/cloud/eventarc/v1/eventarc"

class ::Google::Cloud::Eventarc::V1::Eventarc::ClientPathsTest < Minitest::Test
  def test_channel_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.channel_path project: "value0", location: "value1", channel: "value2"
      assert_equal "projects/value0/locations/value1/channels/value2", path
    end
  end

  def test_channel_connection_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.channel_connection_path project: "value0", location: "value1", channel_connection: "value2"
      assert_equal "projects/value0/locations/value1/channelConnections/value2", path
    end
  end

  def test_cloud_function_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cloud_function_path project: "value0", location: "value1", function: "value2"
      assert_equal "projects/value0/locations/value1/functions/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_service_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end
    end
  end

  def test_service_account_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_account_path project: "value0", service_account: "value1"
      assert_equal "projects/value0/serviceAccounts/value1", path
    end
  end

  def test_trigger_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.trigger_path project: "value0", location: "value1", trigger: "value2"
      assert_equal "projects/value0/locations/value1/triggers/value2", path
    end
  end
end
