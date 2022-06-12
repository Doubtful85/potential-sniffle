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

require "google/devtools/cloudprofiler/v2/profiler_pb"
require "google/devtools/cloudprofiler/v2/profiler_services_pb"
require "google/cloud/profiler/v2/profiler_service"

class ::Google::Cloud::Profiler::V2::ProfilerService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_profile
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Profiler::V2::Profile.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    deployment = {}
    profile_type = [:PROFILE_TYPE_UNSPECIFIED]

    create_profile_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_profile, name
      assert_kind_of ::Google::Cloud::Profiler::V2::CreateProfileRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Profiler::V2::Deployment), request["deployment"]
      assert_equal [:PROFILE_TYPE_UNSPECIFIED], request["profile_type"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_profile_client_stub do
      # Create client
      client = ::Google::Cloud::Profiler::V2::ProfilerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_profile({ parent: parent, deployment: deployment, profile_type: profile_type }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_profile parent: parent, deployment: deployment, profile_type: profile_type do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_profile ::Google::Cloud::Profiler::V2::CreateProfileRequest.new(parent: parent, deployment: deployment, profile_type: profile_type) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_profile({ parent: parent, deployment: deployment, profile_type: profile_type }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_profile(::Google::Cloud::Profiler::V2::CreateProfileRequest.new(parent: parent, deployment: deployment, profile_type: profile_type), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_profile_client_stub.call_rpc_count
    end
  end

  def test_create_offline_profile
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Profiler::V2::Profile.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    profile = {}

    create_offline_profile_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_offline_profile, name
      assert_kind_of ::Google::Cloud::Profiler::V2::CreateOfflineProfileRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Profiler::V2::Profile), request["profile"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_offline_profile_client_stub do
      # Create client
      client = ::Google::Cloud::Profiler::V2::ProfilerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_offline_profile({ parent: parent, profile: profile }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_offline_profile parent: parent, profile: profile do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_offline_profile ::Google::Cloud::Profiler::V2::CreateOfflineProfileRequest.new(parent: parent, profile: profile) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_offline_profile({ parent: parent, profile: profile }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_offline_profile(::Google::Cloud::Profiler::V2::CreateOfflineProfileRequest.new(parent: parent, profile: profile), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_offline_profile_client_stub.call_rpc_count
    end
  end

  def test_update_profile
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Profiler::V2::Profile.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    profile = {}
    update_mask = {}

    update_profile_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_profile, name
      assert_kind_of ::Google::Cloud::Profiler::V2::UpdateProfileRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Profiler::V2::Profile), request["profile"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_profile_client_stub do
      # Create client
      client = ::Google::Cloud::Profiler::V2::ProfilerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_profile({ profile: profile, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_profile profile: profile, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_profile ::Google::Cloud::Profiler::V2::UpdateProfileRequest.new(profile: profile, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_profile({ profile: profile, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_profile(::Google::Cloud::Profiler::V2::UpdateProfileRequest.new(profile: profile, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_profile_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Profiler::V2::ProfilerService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Profiler::V2::ProfilerService::Client::Configuration, config
  end
end
