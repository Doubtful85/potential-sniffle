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

require "google/cloud/gaming/v1/game_server_clusters_service_pb"
require "google/cloud/gaming/v1/game_server_clusters_service_services_pb"
require "google/cloud/gaming/v1/game_server_clusters_service"

class ::Google::Cloud::Gaming::V1::GameServerClustersService::ClientTest < Minitest::Test
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

  def test_list_game_server_clusters
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Gaming::V1::ListGameServerClustersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"
    view = :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED

    list_game_server_clusters_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_game_server_clusters, name
      assert_kind_of ::Google::Cloud::Gaming::V1::ListGameServerClustersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      assert_equal :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_game_server_clusters_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_game_server_clusters({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, view: view }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_game_server_clusters parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, view: view do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_game_server_clusters ::Google::Cloud::Gaming::V1::ListGameServerClustersRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, view: view) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_game_server_clusters({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, view: view }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_game_server_clusters(::Google::Cloud::Gaming::V1::ListGameServerClustersRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, view: view), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_game_server_clusters_client_stub.call_rpc_count
    end
  end

  def test_get_game_server_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Gaming::V1::GameServerCluster.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED

    get_game_server_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_game_server_cluster, name
      assert_kind_of ::Google::Cloud::Gaming::V1::GetGameServerClusterRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_game_server_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_game_server_cluster({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_game_server_cluster name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_game_server_cluster ::Google::Cloud::Gaming::V1::GetGameServerClusterRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_game_server_cluster({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_game_server_cluster(::Google::Cloud::Gaming::V1::GetGameServerClusterRequest.new(name: name, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_game_server_cluster_client_stub.call_rpc_count
    end
  end

  def test_create_game_server_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    game_server_cluster_id = "hello world"
    game_server_cluster = {}

    create_game_server_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_game_server_cluster, name
      assert_kind_of ::Google::Cloud::Gaming::V1::CreateGameServerClusterRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["game_server_cluster_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Gaming::V1::GameServerCluster), request["game_server_cluster"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_game_server_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_game_server_cluster({ parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_game_server_cluster parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_game_server_cluster ::Google::Cloud::Gaming::V1::CreateGameServerClusterRequest.new(parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_game_server_cluster({ parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_game_server_cluster(::Google::Cloud::Gaming::V1::CreateGameServerClusterRequest.new(parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_game_server_cluster_client_stub.call_rpc_count
    end
  end

  def test_preview_create_game_server_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Gaming::V1::PreviewCreateGameServerClusterResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    game_server_cluster_id = "hello world"
    game_server_cluster = {}
    preview_time = {}
    view = :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED

    preview_create_game_server_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :preview_create_game_server_cluster, name
      assert_kind_of ::Google::Cloud::Gaming::V1::PreviewCreateGameServerClusterRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["game_server_cluster_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Gaming::V1::GameServerCluster), request["game_server_cluster"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["preview_time"]
      assert_equal :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, preview_create_game_server_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.preview_create_game_server_cluster({ parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster, preview_time: preview_time, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.preview_create_game_server_cluster parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster, preview_time: preview_time, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.preview_create_game_server_cluster ::Google::Cloud::Gaming::V1::PreviewCreateGameServerClusterRequest.new(parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster, preview_time: preview_time, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.preview_create_game_server_cluster({ parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster, preview_time: preview_time, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.preview_create_game_server_cluster(::Google::Cloud::Gaming::V1::PreviewCreateGameServerClusterRequest.new(parent: parent, game_server_cluster_id: game_server_cluster_id, game_server_cluster: game_server_cluster, preview_time: preview_time, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, preview_create_game_server_cluster_client_stub.call_rpc_count
    end
  end

  def test_delete_game_server_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_game_server_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_game_server_cluster, name
      assert_kind_of ::Google::Cloud::Gaming::V1::DeleteGameServerClusterRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_game_server_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_game_server_cluster({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_game_server_cluster name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_game_server_cluster ::Google::Cloud::Gaming::V1::DeleteGameServerClusterRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_game_server_cluster({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_game_server_cluster(::Google::Cloud::Gaming::V1::DeleteGameServerClusterRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_game_server_cluster_client_stub.call_rpc_count
    end
  end

  def test_preview_delete_game_server_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Gaming::V1::PreviewDeleteGameServerClusterResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    preview_time = {}

    preview_delete_game_server_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :preview_delete_game_server_cluster, name
      assert_kind_of ::Google::Cloud::Gaming::V1::PreviewDeleteGameServerClusterRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["preview_time"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, preview_delete_game_server_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.preview_delete_game_server_cluster({ name: name, preview_time: preview_time }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.preview_delete_game_server_cluster name: name, preview_time: preview_time do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.preview_delete_game_server_cluster ::Google::Cloud::Gaming::V1::PreviewDeleteGameServerClusterRequest.new(name: name, preview_time: preview_time) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.preview_delete_game_server_cluster({ name: name, preview_time: preview_time }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.preview_delete_game_server_cluster(::Google::Cloud::Gaming::V1::PreviewDeleteGameServerClusterRequest.new(name: name, preview_time: preview_time), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, preview_delete_game_server_cluster_client_stub.call_rpc_count
    end
  end

  def test_update_game_server_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    game_server_cluster = {}
    update_mask = {}

    update_game_server_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_game_server_cluster, name
      assert_kind_of ::Google::Cloud::Gaming::V1::UpdateGameServerClusterRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Gaming::V1::GameServerCluster), request["game_server_cluster"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_game_server_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_game_server_cluster({ game_server_cluster: game_server_cluster, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_game_server_cluster game_server_cluster: game_server_cluster, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_game_server_cluster ::Google::Cloud::Gaming::V1::UpdateGameServerClusterRequest.new(game_server_cluster: game_server_cluster, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_game_server_cluster({ game_server_cluster: game_server_cluster, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_game_server_cluster(::Google::Cloud::Gaming::V1::UpdateGameServerClusterRequest.new(game_server_cluster: game_server_cluster, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_game_server_cluster_client_stub.call_rpc_count
    end
  end

  def test_preview_update_game_server_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Gaming::V1::PreviewUpdateGameServerClusterResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    game_server_cluster = {}
    update_mask = {}
    preview_time = {}

    preview_update_game_server_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :preview_update_game_server_cluster, name
      assert_kind_of ::Google::Cloud::Gaming::V1::PreviewUpdateGameServerClusterRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Gaming::V1::GameServerCluster), request["game_server_cluster"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["preview_time"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, preview_update_game_server_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.preview_update_game_server_cluster({ game_server_cluster: game_server_cluster, update_mask: update_mask, preview_time: preview_time }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.preview_update_game_server_cluster game_server_cluster: game_server_cluster, update_mask: update_mask, preview_time: preview_time do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.preview_update_game_server_cluster ::Google::Cloud::Gaming::V1::PreviewUpdateGameServerClusterRequest.new(game_server_cluster: game_server_cluster, update_mask: update_mask, preview_time: preview_time) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.preview_update_game_server_cluster({ game_server_cluster: game_server_cluster, update_mask: update_mask, preview_time: preview_time }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.preview_update_game_server_cluster(::Google::Cloud::Gaming::V1::PreviewUpdateGameServerClusterRequest.new(game_server_cluster: game_server_cluster, update_mask: update_mask, preview_time: preview_time), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, preview_update_game_server_cluster_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Gaming::V1::GameServerClustersService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Gaming::V1::GameServerClustersService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Gaming::V1::GameServerClustersService::Operations, client.operations_client
  end
end
