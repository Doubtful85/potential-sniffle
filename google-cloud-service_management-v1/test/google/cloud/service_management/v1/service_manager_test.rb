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

require "google/api/servicemanagement/v1/servicemanager_pb"
require "google/api/servicemanagement/v1/servicemanager_services_pb"
require "google/cloud/service_management/v1/service_manager"

class ::Google::Cloud::ServiceManagement::V1::ServiceManager::ClientTest < Minitest::Test
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

  def test_list_services
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ServiceManagement::V1::ListServicesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    producer_project_id = "hello world"
    page_size = 42
    page_token = "hello world"
    consumer_id = "hello world"

    list_services_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_services, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::ListServicesRequest, request
      assert_equal "hello world", request["producer_project_id"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["consumer_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_services_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_services({ producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_services producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_services ::Google::Cloud::ServiceManagement::V1::ListServicesRequest.new(producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_services({ producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_services(::Google::Cloud::ServiceManagement::V1::ListServicesRequest.new(producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_services_client_stub.call_rpc_count
    end
  end

  def test_get_service
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ServiceManagement::V1::ManagedService.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"

    get_service_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_service, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::GetServiceRequest, request
      assert_equal "hello world", request["service_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_service_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_service({ service_name: service_name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_service service_name: service_name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_service ::Google::Cloud::ServiceManagement::V1::GetServiceRequest.new(service_name: service_name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_service({ service_name: service_name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_service(::Google::Cloud::ServiceManagement::V1::GetServiceRequest.new(service_name: service_name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_service_client_stub.call_rpc_count
    end
  end

  def test_create_service
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service = {}

    create_service_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_service, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::CreateServiceRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::ServiceManagement::V1::ManagedService), request["service"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_service_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_service({ service: service }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_service service: service do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_service ::Google::Cloud::ServiceManagement::V1::CreateServiceRequest.new(service: service) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_service({ service: service }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_service(::Google::Cloud::ServiceManagement::V1::CreateServiceRequest.new(service: service), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_service_client_stub.call_rpc_count
    end
  end

  def test_delete_service
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"

    delete_service_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_service, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::DeleteServiceRequest, request
      assert_equal "hello world", request["service_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_service_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_service({ service_name: service_name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_service service_name: service_name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_service ::Google::Cloud::ServiceManagement::V1::DeleteServiceRequest.new(service_name: service_name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_service({ service_name: service_name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_service(::Google::Cloud::ServiceManagement::V1::DeleteServiceRequest.new(service_name: service_name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_service_client_stub.call_rpc_count
    end
  end

  def test_undelete_service
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"

    undelete_service_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :undelete_service, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::UndeleteServiceRequest, request
      assert_equal "hello world", request["service_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, undelete_service_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.undelete_service({ service_name: service_name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.undelete_service service_name: service_name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.undelete_service ::Google::Cloud::ServiceManagement::V1::UndeleteServiceRequest.new(service_name: service_name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.undelete_service({ service_name: service_name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.undelete_service(::Google::Cloud::ServiceManagement::V1::UndeleteServiceRequest.new(service_name: service_name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, undelete_service_client_stub.call_rpc_count
    end
  end

  def test_list_service_configs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ServiceManagement::V1::ListServiceConfigsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    page_token = "hello world"
    page_size = 42

    list_service_configs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_service_configs, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::ListServiceConfigsRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_service_configs_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_service_configs({ service_name: service_name, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_service_configs service_name: service_name, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_service_configs ::Google::Cloud::ServiceManagement::V1::ListServiceConfigsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_service_configs({ service_name: service_name, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_service_configs(::Google::Cloud::ServiceManagement::V1::ListServiceConfigsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_service_configs_client_stub.call_rpc_count
    end
  end

  def test_get_service_config
    # Create GRPC objects.
    grpc_response = ::Google::Api::Service.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    config_id = "hello world"
    view = :BASIC

    get_service_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_service_config, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::GetServiceConfigRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal "hello world", request["config_id"]
      assert_equal :BASIC, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_service_config_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_service_config({ service_name: service_name, config_id: config_id, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_service_config service_name: service_name, config_id: config_id, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_service_config ::Google::Cloud::ServiceManagement::V1::GetServiceConfigRequest.new(service_name: service_name, config_id: config_id, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_service_config({ service_name: service_name, config_id: config_id, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_service_config(::Google::Cloud::ServiceManagement::V1::GetServiceConfigRequest.new(service_name: service_name, config_id: config_id, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_service_config_client_stub.call_rpc_count
    end
  end

  def test_create_service_config
    # Create GRPC objects.
    grpc_response = ::Google::Api::Service.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    service_config = {}

    create_service_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_service_config, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::CreateServiceConfigRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Api::Service), request["service_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_service_config_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_service_config({ service_name: service_name, service_config: service_config }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_service_config service_name: service_name, service_config: service_config do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_service_config ::Google::Cloud::ServiceManagement::V1::CreateServiceConfigRequest.new(service_name: service_name, service_config: service_config) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_service_config({ service_name: service_name, service_config: service_config }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_service_config(::Google::Cloud::ServiceManagement::V1::CreateServiceConfigRequest.new(service_name: service_name, service_config: service_config), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_service_config_client_stub.call_rpc_count
    end
  end

  def test_submit_config_source
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    config_source = {}
    validate_only = true

    submit_config_source_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :submit_config_source, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::SubmitConfigSourceRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::ServiceManagement::V1::ConfigSource), request["config_source"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, submit_config_source_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.submit_config_source({ service_name: service_name, config_source: config_source, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.submit_config_source service_name: service_name, config_source: config_source, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.submit_config_source ::Google::Cloud::ServiceManagement::V1::SubmitConfigSourceRequest.new(service_name: service_name, config_source: config_source, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.submit_config_source({ service_name: service_name, config_source: config_source, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.submit_config_source(::Google::Cloud::ServiceManagement::V1::SubmitConfigSourceRequest.new(service_name: service_name, config_source: config_source, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, submit_config_source_client_stub.call_rpc_count
    end
  end

  def test_list_service_rollouts
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ServiceManagement::V1::ListServiceRolloutsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    page_token = "hello world"
    page_size = 42
    filter = "hello world"

    list_service_rollouts_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_service_rollouts, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::ListServiceRolloutsRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_service_rollouts_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_service_rollouts({ service_name: service_name, page_token: page_token, page_size: page_size, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_service_rollouts service_name: service_name, page_token: page_token, page_size: page_size, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_service_rollouts ::Google::Cloud::ServiceManagement::V1::ListServiceRolloutsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_service_rollouts({ service_name: service_name, page_token: page_token, page_size: page_size, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_service_rollouts(::Google::Cloud::ServiceManagement::V1::ListServiceRolloutsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_service_rollouts_client_stub.call_rpc_count
    end
  end

  def test_get_service_rollout
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ServiceManagement::V1::Rollout.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    rollout_id = "hello world"

    get_service_rollout_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_service_rollout, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::GetServiceRolloutRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal "hello world", request["rollout_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_service_rollout_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_service_rollout({ service_name: service_name, rollout_id: rollout_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_service_rollout service_name: service_name, rollout_id: rollout_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_service_rollout ::Google::Cloud::ServiceManagement::V1::GetServiceRolloutRequest.new(service_name: service_name, rollout_id: rollout_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_service_rollout({ service_name: service_name, rollout_id: rollout_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_service_rollout(::Google::Cloud::ServiceManagement::V1::GetServiceRolloutRequest.new(service_name: service_name, rollout_id: rollout_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_service_rollout_client_stub.call_rpc_count
    end
  end

  def test_create_service_rollout
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    rollout = {}

    create_service_rollout_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_service_rollout, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::CreateServiceRolloutRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::ServiceManagement::V1::Rollout), request["rollout"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_service_rollout_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_service_rollout({ service_name: service_name, rollout: rollout }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_service_rollout service_name: service_name, rollout: rollout do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_service_rollout ::Google::Cloud::ServiceManagement::V1::CreateServiceRolloutRequest.new(service_name: service_name, rollout: rollout) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_service_rollout({ service_name: service_name, rollout: rollout }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_service_rollout(::Google::Cloud::ServiceManagement::V1::CreateServiceRolloutRequest.new(service_name: service_name, rollout: rollout), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_service_rollout_client_stub.call_rpc_count
    end
  end

  def test_generate_config_report
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ServiceManagement::V1::GenerateConfigReportResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    new_config = {}
    old_config = {}

    generate_config_report_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :generate_config_report, name
      assert_kind_of ::Google::Cloud::ServiceManagement::V1::GenerateConfigReportRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Any), request["new_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Any), request["old_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, generate_config_report_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.generate_config_report({ new_config: new_config, old_config: old_config }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.generate_config_report new_config: new_config, old_config: old_config do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.generate_config_report ::Google::Cloud::ServiceManagement::V1::GenerateConfigReportRequest.new(new_config: new_config, old_config: old_config) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.generate_config_report({ new_config: new_config, old_config: old_config }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.generate_config_report(::Google::Cloud::ServiceManagement::V1::GenerateConfigReportRequest.new(new_config: new_config, old_config: old_config), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, generate_config_report_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::ServiceManagement::V1::ServiceManager::Operations, client.operations_client
  end
end
