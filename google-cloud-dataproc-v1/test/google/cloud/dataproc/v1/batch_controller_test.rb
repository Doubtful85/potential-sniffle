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

require "google/cloud/dataproc/v1/batches_pb"
require "google/cloud/dataproc/v1/batches_services_pb"
require "google/cloud/dataproc/v1/batch_controller"

class ::Google::Cloud::Dataproc::V1::BatchController::ClientTest < Minitest::Test
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

  def test_create_batch
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    batch = {}
    batch_id = "hello world"
    request_id = "hello world"

    create_batch_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_batch, name
      assert_kind_of ::Google::Cloud::Dataproc::V1::CreateBatchRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dataproc::V1::Batch), request["batch"]
      assert_equal "hello world", request["batch_id"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_batch_client_stub do
      # Create client
      client = ::Google::Cloud::Dataproc::V1::BatchController::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_batch({ parent: parent, batch: batch, batch_id: batch_id, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_batch parent: parent, batch: batch, batch_id: batch_id, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_batch ::Google::Cloud::Dataproc::V1::CreateBatchRequest.new(parent: parent, batch: batch, batch_id: batch_id, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_batch({ parent: parent, batch: batch, batch_id: batch_id, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_batch(::Google::Cloud::Dataproc::V1::CreateBatchRequest.new(parent: parent, batch: batch, batch_id: batch_id, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_batch_client_stub.call_rpc_count
    end
  end

  def test_get_batch
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataproc::V1::Batch.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_batch_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_batch, name
      assert_kind_of ::Google::Cloud::Dataproc::V1::GetBatchRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_batch_client_stub do
      # Create client
      client = ::Google::Cloud::Dataproc::V1::BatchController::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_batch({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_batch name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_batch ::Google::Cloud::Dataproc::V1::GetBatchRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_batch({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_batch(::Google::Cloud::Dataproc::V1::GetBatchRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_batch_client_stub.call_rpc_count
    end
  end

  def test_list_batches
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataproc::V1::ListBatchesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_batches_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_batches, name
      assert_kind_of ::Google::Cloud::Dataproc::V1::ListBatchesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_batches_client_stub do
      # Create client
      client = ::Google::Cloud::Dataproc::V1::BatchController::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_batches({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_batches parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_batches ::Google::Cloud::Dataproc::V1::ListBatchesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_batches({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_batches(::Google::Cloud::Dataproc::V1::ListBatchesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_batches_client_stub.call_rpc_count
    end
  end

  def test_delete_batch
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_batch_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_batch, name
      assert_kind_of ::Google::Cloud::Dataproc::V1::DeleteBatchRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_batch_client_stub do
      # Create client
      client = ::Google::Cloud::Dataproc::V1::BatchController::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_batch({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_batch name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_batch ::Google::Cloud::Dataproc::V1::DeleteBatchRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_batch({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_batch(::Google::Cloud::Dataproc::V1::DeleteBatchRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_batch_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataproc::V1::BatchController::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataproc::V1::BatchController::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataproc::V1::BatchController::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Dataproc::V1::BatchController::Operations, client.operations_client
  end
end
