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

require "google/cloud/iot/v1/device_manager_pb"
require "google/cloud/iot/v1/device_manager_services_pb"
require "google/cloud/iot/v1/device_manager"

class Google::Cloud::Iot::V1::DeviceManager::ClientTest < Minitest::Test
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

  def test_create_device_registry
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::DeviceRegistry.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    device_registry = {}

    create_device_registry_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_device_registry, name
      assert_kind_of Google::Cloud::Iot::V1::CreateDeviceRegistryRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Iot::V1::DeviceRegistry), request.device_registry
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_device_registry_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_device_registry({ parent: parent, device_registry: device_registry }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_device_registry parent: parent, device_registry: device_registry do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_device_registry Google::Cloud::Iot::V1::CreateDeviceRegistryRequest.new(parent: parent, device_registry: device_registry) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_device_registry({ parent: parent, device_registry: device_registry }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_device_registry Google::Cloud::Iot::V1::CreateDeviceRegistryRequest.new(parent: parent, device_registry: device_registry), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_device_registry_client_stub.call_rpc_count
    end
  end

  def test_get_device_registry
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::DeviceRegistry.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_device_registry_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_device_registry, name
      assert_kind_of Google::Cloud::Iot::V1::GetDeviceRegistryRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_device_registry_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_device_registry({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_device_registry name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_device_registry Google::Cloud::Iot::V1::GetDeviceRegistryRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_device_registry({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_device_registry Google::Cloud::Iot::V1::GetDeviceRegistryRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_device_registry_client_stub.call_rpc_count
    end
  end

  def test_update_device_registry
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::DeviceRegistry.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    device_registry = {}
    update_mask = {}

    update_device_registry_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_device_registry, name
      assert_kind_of Google::Cloud::Iot::V1::UpdateDeviceRegistryRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Iot::V1::DeviceRegistry), request.device_registry
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_device_registry_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_device_registry({ device_registry: device_registry, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_device_registry device_registry: device_registry, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_device_registry Google::Cloud::Iot::V1::UpdateDeviceRegistryRequest.new(device_registry: device_registry, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_device_registry({ device_registry: device_registry, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_device_registry Google::Cloud::Iot::V1::UpdateDeviceRegistryRequest.new(device_registry: device_registry, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_device_registry_client_stub.call_rpc_count
    end
  end

  def test_delete_device_registry
    # Create GRPC objects.
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_device_registry_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_device_registry, name
      assert_kind_of Google::Cloud::Iot::V1::DeleteDeviceRegistryRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_device_registry_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_device_registry({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_device_registry name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_device_registry Google::Cloud::Iot::V1::DeleteDeviceRegistryRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_device_registry({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_device_registry Google::Cloud::Iot::V1::DeleteDeviceRegistryRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_device_registry_client_stub.call_rpc_count
    end
  end

  def test_list_device_registries
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::ListDeviceRegistriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_device_registries_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_device_registries, name
      assert_kind_of Google::Cloud::Iot::V1::ListDeviceRegistriesRequest, request
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_device_registries_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_device_registries({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_device_registries parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_device_registries Google::Cloud::Iot::V1::ListDeviceRegistriesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_device_registries({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_device_registries Google::Cloud::Iot::V1::ListDeviceRegistriesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_device_registries_client_stub.call_rpc_count
    end
  end

  def test_create_device
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::Device.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    device = {}

    create_device_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_device, name
      assert_kind_of Google::Cloud::Iot::V1::CreateDeviceRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Iot::V1::Device), request.device
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_device_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_device({ parent: parent, device: device }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_device parent: parent, device: device do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_device Google::Cloud::Iot::V1::CreateDeviceRequest.new(parent: parent, device: device) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_device({ parent: parent, device: device }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_device Google::Cloud::Iot::V1::CreateDeviceRequest.new(parent: parent, device: device), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_device_client_stub.call_rpc_count
    end
  end

  def test_get_device
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::Device.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    field_mask = {}

    get_device_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_device, name
      assert_kind_of Google::Cloud::Iot::V1::GetDeviceRequest, request
      assert_equal "hello world", request.name
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.field_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_device_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_device({ name: name, field_mask: field_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_device name: name, field_mask: field_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_device Google::Cloud::Iot::V1::GetDeviceRequest.new(name: name, field_mask: field_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_device({ name: name, field_mask: field_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_device Google::Cloud::Iot::V1::GetDeviceRequest.new(name: name, field_mask: field_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_device_client_stub.call_rpc_count
    end
  end

  def test_update_device
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::Device.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    device = {}
    update_mask = {}

    update_device_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_device, name
      assert_kind_of Google::Cloud::Iot::V1::UpdateDeviceRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Iot::V1::Device), request.device
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_device_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_device({ device: device, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_device device: device, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_device Google::Cloud::Iot::V1::UpdateDeviceRequest.new(device: device, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_device({ device: device, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_device Google::Cloud::Iot::V1::UpdateDeviceRequest.new(device: device, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_device_client_stub.call_rpc_count
    end
  end

  def test_delete_device
    # Create GRPC objects.
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_device_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_device, name
      assert_kind_of Google::Cloud::Iot::V1::DeleteDeviceRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_device_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_device({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_device name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_device Google::Cloud::Iot::V1::DeleteDeviceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_device({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_device Google::Cloud::Iot::V1::DeleteDeviceRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_device_client_stub.call_rpc_count
    end
  end

  def test_list_devices
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::ListDevicesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    device_num_ids = [42]
    device_ids = ["hello world"]
    field_mask = {}
    gateway_list_options = {}
    page_size = 42
    page_token = "hello world"

    list_devices_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_devices, name
      assert_kind_of Google::Cloud::Iot::V1::ListDevicesRequest, request
      assert_equal "hello world", request.parent
      assert_equal [42], request.device_num_ids
      assert_equal ["hello world"], request.device_ids
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.field_mask
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Iot::V1::GatewayListOptions), request.gateway_list_options
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_devices_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_devices({ parent: parent, device_num_ids: device_num_ids, device_ids: device_ids, field_mask: field_mask, gateway_list_options: gateway_list_options, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_devices parent: parent, device_num_ids: device_num_ids, device_ids: device_ids, field_mask: field_mask, gateway_list_options: gateway_list_options, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_devices Google::Cloud::Iot::V1::ListDevicesRequest.new(parent: parent, device_num_ids: device_num_ids, device_ids: device_ids, field_mask: field_mask, gateway_list_options: gateway_list_options, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_devices({ parent: parent, device_num_ids: device_num_ids, device_ids: device_ids, field_mask: field_mask, gateway_list_options: gateway_list_options, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_devices Google::Cloud::Iot::V1::ListDevicesRequest.new(parent: parent, device_num_ids: device_num_ids, device_ids: device_ids, field_mask: field_mask, gateway_list_options: gateway_list_options, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_devices_client_stub.call_rpc_count
    end
  end

  def test_modify_cloud_to_device_config
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::DeviceConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    version_to_update = 42
    binary_data = "hello world"

    modify_cloud_to_device_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :modify_cloud_to_device_config, name
      assert_kind_of Google::Cloud::Iot::V1::ModifyCloudToDeviceConfigRequest, request
      assert_equal "hello world", request.name
      assert_equal 42, request.version_to_update
      assert_equal "hello world", request.binary_data
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, modify_cloud_to_device_config_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.modify_cloud_to_device_config({ name: name, version_to_update: version_to_update, binary_data: binary_data }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.modify_cloud_to_device_config name: name, version_to_update: version_to_update, binary_data: binary_data do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.modify_cloud_to_device_config Google::Cloud::Iot::V1::ModifyCloudToDeviceConfigRequest.new(name: name, version_to_update: version_to_update, binary_data: binary_data) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.modify_cloud_to_device_config({ name: name, version_to_update: version_to_update, binary_data: binary_data }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.modify_cloud_to_device_config Google::Cloud::Iot::V1::ModifyCloudToDeviceConfigRequest.new(name: name, version_to_update: version_to_update, binary_data: binary_data), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, modify_cloud_to_device_config_client_stub.call_rpc_count
    end
  end

  def test_list_device_config_versions
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::ListDeviceConfigVersionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    num_versions = 42

    list_device_config_versions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_device_config_versions, name
      assert_kind_of Google::Cloud::Iot::V1::ListDeviceConfigVersionsRequest, request
      assert_equal "hello world", request.name
      assert_equal 42, request.num_versions
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_device_config_versions_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_device_config_versions({ name: name, num_versions: num_versions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_device_config_versions name: name, num_versions: num_versions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_device_config_versions Google::Cloud::Iot::V1::ListDeviceConfigVersionsRequest.new(name: name, num_versions: num_versions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_device_config_versions({ name: name, num_versions: num_versions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_device_config_versions Google::Cloud::Iot::V1::ListDeviceConfigVersionsRequest.new(name: name, num_versions: num_versions), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_device_config_versions_client_stub.call_rpc_count
    end
  end

  def test_list_device_states
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::ListDeviceStatesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    num_states = 42

    list_device_states_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_device_states, name
      assert_kind_of Google::Cloud::Iot::V1::ListDeviceStatesRequest, request
      assert_equal "hello world", request.name
      assert_equal 42, request.num_states
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_device_states_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_device_states({ name: name, num_states: num_states }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_device_states name: name, num_states: num_states do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_device_states Google::Cloud::Iot::V1::ListDeviceStatesRequest.new(name: name, num_states: num_states) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_device_states({ name: name, num_states: num_states }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_device_states Google::Cloud::Iot::V1::ListDeviceStatesRequest.new(name: name, num_states: num_states), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_device_states_client_stub.call_rpc_count
    end
  end

  def test_set_iam_policy
    # Create GRPC objects.
    grpc_response = Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}

    set_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_iam_policy, name
      assert_kind_of Google::Iam::V1::SetIamPolicyRequest, request
      assert_equal "hello world", request.resource
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Iam::V1::Policy), request.policy
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_iam_policy_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_iam_policy({ resource: resource, policy: policy }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_iam_policy resource: resource, policy: policy do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_iam_policy Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_iam_policy({ resource: resource, policy: policy }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_iam_policy Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_get_iam_policy
    # Create GRPC objects.
    grpc_response = Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"

    get_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iam_policy, name
      assert_kind_of Google::Iam::V1::GetIamPolicyRequest, request
      assert_equal "hello world", request.resource
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iam_policy_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iam_policy({ resource: resource }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iam_policy resource: resource do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iam_policy Google::Iam::V1::GetIamPolicyRequest.new(resource: resource) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iam_policy({ resource: resource }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iam_policy Google::Iam::V1::GetIamPolicyRequest.new(resource: resource), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_test_iam_permissions
    # Create GRPC objects.
    grpc_response = Google::Iam::V1::TestIamPermissionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :test_iam_permissions, name
      assert_kind_of Google::Iam::V1::TestIamPermissionsRequest, request
      assert_equal "hello world", request.resource
      assert_equal ["hello world"], request.permissions
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.test_iam_permissions({ resource: resource, permissions: permissions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.test_iam_permissions resource: resource, permissions: permissions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.test_iam_permissions Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.test_iam_permissions({ resource: resource, permissions: permissions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.test_iam_permissions Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_rpc_count
    end
  end

  def test_send_command_to_device
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::SendCommandToDeviceResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    binary_data = "hello world"
    subfolder = "hello world"

    send_command_to_device_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :send_command_to_device, name
      assert_kind_of Google::Cloud::Iot::V1::SendCommandToDeviceRequest, request
      assert_equal "hello world", request.name
      assert_equal "hello world", request.binary_data
      assert_equal "hello world", request.subfolder
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, send_command_to_device_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.send_command_to_device({ name: name, binary_data: binary_data, subfolder: subfolder }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.send_command_to_device name: name, binary_data: binary_data, subfolder: subfolder do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.send_command_to_device Google::Cloud::Iot::V1::SendCommandToDeviceRequest.new(name: name, binary_data: binary_data, subfolder: subfolder) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.send_command_to_device({ name: name, binary_data: binary_data, subfolder: subfolder }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.send_command_to_device Google::Cloud::Iot::V1::SendCommandToDeviceRequest.new(name: name, binary_data: binary_data, subfolder: subfolder), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, send_command_to_device_client_stub.call_rpc_count
    end
  end

  def test_bind_device_to_gateway
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::BindDeviceToGatewayResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    gateway_id = "hello world"
    device_id = "hello world"

    bind_device_to_gateway_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :bind_device_to_gateway, name
      assert_kind_of Google::Cloud::Iot::V1::BindDeviceToGatewayRequest, request
      assert_equal "hello world", request.parent
      assert_equal "hello world", request.gateway_id
      assert_equal "hello world", request.device_id
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, bind_device_to_gateway_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.bind_device_to_gateway({ parent: parent, gateway_id: gateway_id, device_id: device_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.bind_device_to_gateway parent: parent, gateway_id: gateway_id, device_id: device_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.bind_device_to_gateway Google::Cloud::Iot::V1::BindDeviceToGatewayRequest.new(parent: parent, gateway_id: gateway_id, device_id: device_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.bind_device_to_gateway({ parent: parent, gateway_id: gateway_id, device_id: device_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.bind_device_to_gateway Google::Cloud::Iot::V1::BindDeviceToGatewayRequest.new(parent: parent, gateway_id: gateway_id, device_id: device_id), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, bind_device_to_gateway_client_stub.call_rpc_count
    end
  end

  def test_unbind_device_from_gateway
    # Create GRPC objects.
    grpc_response = Google::Cloud::Iot::V1::UnbindDeviceFromGatewayResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    gateway_id = "hello world"
    device_id = "hello world"

    unbind_device_from_gateway_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :unbind_device_from_gateway, name
      assert_kind_of Google::Cloud::Iot::V1::UnbindDeviceFromGatewayRequest, request
      assert_equal "hello world", request.parent
      assert_equal "hello world", request.gateway_id
      assert_equal "hello world", request.device_id
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, unbind_device_from_gateway_client_stub do
      # Create client
      client = Google::Cloud::Iot::V1::DeviceManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.unbind_device_from_gateway({ parent: parent, gateway_id: gateway_id, device_id: device_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.unbind_device_from_gateway parent: parent, gateway_id: gateway_id, device_id: device_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.unbind_device_from_gateway Google::Cloud::Iot::V1::UnbindDeviceFromGatewayRequest.new(parent: parent, gateway_id: gateway_id, device_id: device_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.unbind_device_from_gateway({ parent: parent, gateway_id: gateway_id, device_id: device_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.unbind_device_from_gateway Google::Cloud::Iot::V1::UnbindDeviceFromGatewayRequest.new(parent: parent, gateway_id: gateway_id, device_id: device_id), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, unbind_device_from_gateway_client_stub.call_rpc_count
    end
  end
end
