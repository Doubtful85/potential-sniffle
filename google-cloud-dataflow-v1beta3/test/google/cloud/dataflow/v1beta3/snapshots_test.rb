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

require "google/dataflow/v1beta3/snapshots_pb"
require "google/dataflow/v1beta3/snapshots_services_pb"
require "google/cloud/dataflow/v1beta3/snapshots"

class ::Google::Cloud::Dataflow::V1beta3::Snapshots::ClientTest < Minitest::Test
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

  def test_get_snapshot
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataflow::V1beta3::Snapshot.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    snapshot_id = "hello world"
    location = "hello world"

    get_snapshot_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_snapshot, name
      assert_kind_of ::Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["snapshot_id"]
      assert_equal "hello world", request["location"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_snapshot_client_stub do
      # Create client
      client = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_snapshot({ project_id: project_id, snapshot_id: snapshot_id, location: location }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_snapshot project_id: project_id, snapshot_id: snapshot_id, location: location do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_snapshot ::Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest.new(project_id: project_id, snapshot_id: snapshot_id, location: location) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_snapshot({ project_id: project_id, snapshot_id: snapshot_id, location: location }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_snapshot(::Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest.new(project_id: project_id, snapshot_id: snapshot_id, location: location), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_snapshot_client_stub.call_rpc_count
    end
  end

  def test_delete_snapshot
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    snapshot_id = "hello world"
    location = "hello world"

    delete_snapshot_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_snapshot, name
      assert_kind_of ::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["snapshot_id"]
      assert_equal "hello world", request["location"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_snapshot_client_stub do
      # Create client
      client = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_snapshot({ project_id: project_id, snapshot_id: snapshot_id, location: location }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_snapshot project_id: project_id, snapshot_id: snapshot_id, location: location do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_snapshot ::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest.new(project_id: project_id, snapshot_id: snapshot_id, location: location) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_snapshot({ project_id: project_id, snapshot_id: snapshot_id, location: location }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_snapshot(::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest.new(project_id: project_id, snapshot_id: snapshot_id, location: location), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_snapshot_client_stub.call_rpc_count
    end
  end

  def test_list_snapshots
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataflow::V1beta3::ListSnapshotsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    job_id = "hello world"
    location = "hello world"

    list_snapshots_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_snapshots, name
      assert_kind_of ::Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["job_id"]
      assert_equal "hello world", request["location"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_snapshots_client_stub do
      # Create client
      client = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_snapshots({ project_id: project_id, job_id: job_id, location: location }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_snapshots project_id: project_id, job_id: job_id, location: location do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_snapshots ::Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest.new(project_id: project_id, job_id: job_id, location: location) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_snapshots({ project_id: project_id, job_id: job_id, location: location }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_snapshots(::Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest.new(project_id: project_id, job_id: job_id, location: location), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_snapshots_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataflow::V1beta3::Snapshots::Client::Configuration, config
  end
end
