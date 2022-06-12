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

require "simplecov"
require "minitest/autorun"

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/v2/context_pb"
require "google/cloud/dialogflow/v2/context_services_pb"
require "google/cloud/dialogflow/v2/contexts"

class Google::Cloud::Dialogflow::V2::Contexts::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_contexts
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::ListContextsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_contexts_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_contexts, name
      assert_kind_of Google::Cloud::Dialogflow::V2::ListContextsRequest, request
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_contexts_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::Contexts::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_contexts({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_contexts parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_contexts Google::Cloud::Dialogflow::V2::ListContextsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_contexts({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_contexts Google::Cloud::Dialogflow::V2::ListContextsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_contexts_client_stub.call_rpc_count
    end
  end

  def test_get_context
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::Context.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_context_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_context, name
      assert_kind_of Google::Cloud::Dialogflow::V2::GetContextRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_context_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::Contexts::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_context({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_context name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_context Google::Cloud::Dialogflow::V2::GetContextRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_context({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_context Google::Cloud::Dialogflow::V2::GetContextRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_context_client_stub.call_rpc_count
    end
  end

  def test_create_context
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::Context.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    context = {}

    create_context_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_context, name
      assert_kind_of Google::Cloud::Dialogflow::V2::CreateContextRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Dialogflow::V2::Context), request.context
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_context_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::Contexts::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_context({ parent: parent, context: context }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_context parent: parent, context: context do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_context Google::Cloud::Dialogflow::V2::CreateContextRequest.new(parent: parent, context: context) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_context({ parent: parent, context: context }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_context Google::Cloud::Dialogflow::V2::CreateContextRequest.new(parent: parent, context: context), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_context_client_stub.call_rpc_count
    end
  end

  def test_update_context
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::Context.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    context = {}
    update_mask = {}

    update_context_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_context, name
      assert_kind_of Google::Cloud::Dialogflow::V2::UpdateContextRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Dialogflow::V2::Context), request.context
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_context_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::Contexts::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_context({ context: context, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_context context: context, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_context Google::Cloud::Dialogflow::V2::UpdateContextRequest.new(context: context, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_context({ context: context, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_context Google::Cloud::Dialogflow::V2::UpdateContextRequest.new(context: context, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_context_client_stub.call_rpc_count
    end
  end

  def test_delete_context
    # Create GRPC objects.
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_context_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_context, name
      assert_kind_of Google::Cloud::Dialogflow::V2::DeleteContextRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_context_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::Contexts::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_context({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_context name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_context Google::Cloud::Dialogflow::V2::DeleteContextRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_context({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_context Google::Cloud::Dialogflow::V2::DeleteContextRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_context_client_stub.call_rpc_count
    end
  end

  def test_delete_all_contexts
    # Create GRPC objects.
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    delete_all_contexts_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_all_contexts, name
      assert_kind_of Google::Cloud::Dialogflow::V2::DeleteAllContextsRequest, request
      assert_equal "hello world", request.parent
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_all_contexts_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::Contexts::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_all_contexts({ parent: parent }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_all_contexts parent: parent do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_all_contexts Google::Cloud::Dialogflow::V2::DeleteAllContextsRequest.new(parent: parent) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_all_contexts({ parent: parent }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_all_contexts Google::Cloud::Dialogflow::V2::DeleteAllContextsRequest.new(parent: parent), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_all_contexts_client_stub.call_rpc_count
    end
  end
end
