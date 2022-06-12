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
require "gapic/rest"
require "google/cloud/compute/v1/compute_pb"
require "google/cloud/compute/v1/instance_groups"


class ::Google::Cloud::Compute::V1::InstanceGroups::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_add_instances
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    instance_group = "hello world"
    instance_groups_add_instances_request_resource = {}
    project = "hello world"
    request_id = "hello world"
    zone = "hello world"

    add_instances_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :post, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "requestId"
      refute_nil body
    end

    Gapic::Rest::ClientStub.stub :new, add_instances_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.add_instances({ instance_group: instance_group, instance_groups_add_instances_request_resource: instance_groups_add_instances_request_resource, project: project, request_id: request_id, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.add_instances instance_group: instance_group, instance_groups_add_instances_request_resource: instance_groups_add_instances_request_resource, project: project, request_id: request_id, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.add_instances ::Google::Cloud::Compute::V1::AddInstancesInstanceGroupRequest.new(instance_group: instance_group, instance_groups_add_instances_request_resource: instance_groups_add_instances_request_resource, project: project, request_id: request_id, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.add_instances({ instance_group: instance_group, instance_groups_add_instances_request_resource: instance_groups_add_instances_request_resource, project: project, request_id: request_id, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.add_instances(::Google::Cloud::Compute::V1::AddInstancesInstanceGroupRequest.new(instance_group: instance_group, instance_groups_add_instances_request_resource: instance_groups_add_instances_request_resource, project: project, request_id: request_id, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, add_instances_client_stub.call_count
    end
  end

  def test_aggregated_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::InstanceGroupAggregatedList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    include_all_scopes = true
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true

    aggregated_list_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :get, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "filter"
      assert params.key? "includeAllScopes"
      assert params.key? "maxResults"
      assert params.key? "orderBy"
      assert params.key? "pageToken"
      assert params.key? "returnPartialSuccess"
      assert_nil body
    end

    Gapic::Rest::ClientStub.stub :new, aggregated_list_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.aggregated_list filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.aggregated_list ::Google::Cloud::Compute::V1::AggregatedListInstanceGroupsRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.aggregated_list(::Google::Cloud::Compute::V1::AggregatedListInstanceGroupsRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, aggregated_list_client_stub.call_count
    end
  end

  def test_delete
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    instance_group = "hello world"
    project = "hello world"
    request_id = "hello world"
    zone = "hello world"

    delete_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :delete, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "requestId"
      assert_nil body
    end

    Gapic::Rest::ClientStub.stub :new, delete_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.delete({ instance_group: instance_group, project: project, request_id: request_id, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.delete instance_group: instance_group, project: project, request_id: request_id, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.delete ::Google::Cloud::Compute::V1::DeleteInstanceGroupRequest.new(instance_group: instance_group, project: project, request_id: request_id, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.delete({ instance_group: instance_group, project: project, request_id: request_id, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.delete(::Google::Cloud::Compute::V1::DeleteInstanceGroupRequest.new(instance_group: instance_group, project: project, request_id: request_id, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, delete_client_stub.call_count
    end
  end

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::InstanceGroup.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    instance_group = "hello world"
    project = "hello world"
    zone = "hello world"

    get_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :get, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert_nil body
    end

    Gapic::Rest::ClientStub.stub :new, get_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.get({ instance_group: instance_group, project: project, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.get instance_group: instance_group, project: project, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.get ::Google::Cloud::Compute::V1::GetInstanceGroupRequest.new(instance_group: instance_group, project: project, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.get({ instance_group: instance_group, project: project, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.get(::Google::Cloud::Compute::V1::GetInstanceGroupRequest.new(instance_group: instance_group, project: project, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, get_client_stub.call_count
    end
  end

  def test_insert
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    instance_group_resource = {}
    project = "hello world"
    request_id = "hello world"
    zone = "hello world"

    insert_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :post, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "requestId"
      refute_nil body
    end

    Gapic::Rest::ClientStub.stub :new, insert_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.insert({ instance_group_resource: instance_group_resource, project: project, request_id: request_id, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.insert instance_group_resource: instance_group_resource, project: project, request_id: request_id, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.insert ::Google::Cloud::Compute::V1::InsertInstanceGroupRequest.new(instance_group_resource: instance_group_resource, project: project, request_id: request_id, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.insert({ instance_group_resource: instance_group_resource, project: project, request_id: request_id, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.insert(::Google::Cloud::Compute::V1::InsertInstanceGroupRequest.new(instance_group_resource: instance_group_resource, project: project, request_id: request_id, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, insert_client_stub.call_count
    end
  end

  def test_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::InstanceGroupList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true
    zone = "hello world"

    list_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :get, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "filter"
      assert params.key? "maxResults"
      assert params.key? "orderBy"
      assert params.key? "pageToken"
      assert params.key? "returnPartialSuccess"
      assert_nil body
    end

    Gapic::Rest::ClientStub.stub :new, list_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.list filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.list ::Google::Cloud::Compute::V1::ListInstanceGroupsRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.list(::Google::Cloud::Compute::V1::ListInstanceGroupsRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, list_client_stub.call_count
    end
  end

  def test_list_instances
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::InstanceGroupsListInstances.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    instance_group = "hello world"
    instance_groups_list_instances_request_resource = {}
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true
    zone = "hello world"

    list_instances_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :post, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "filter"
      assert params.key? "maxResults"
      assert params.key? "orderBy"
      assert params.key? "pageToken"
      assert params.key? "returnPartialSuccess"
      refute_nil body
    end

    Gapic::Rest::ClientStub.stub :new, list_instances_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.list_instances({ filter: filter, instance_group: instance_group, instance_groups_list_instances_request_resource: instance_groups_list_instances_request_resource, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.list_instances filter: filter, instance_group: instance_group, instance_groups_list_instances_request_resource: instance_groups_list_instances_request_resource, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.list_instances ::Google::Cloud::Compute::V1::ListInstancesInstanceGroupsRequest.new(filter: filter, instance_group: instance_group, instance_groups_list_instances_request_resource: instance_groups_list_instances_request_resource, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.list_instances({ filter: filter, instance_group: instance_group, instance_groups_list_instances_request_resource: instance_groups_list_instances_request_resource, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.list_instances(::Google::Cloud::Compute::V1::ListInstancesInstanceGroupsRequest.new(filter: filter, instance_group: instance_group, instance_groups_list_instances_request_resource: instance_groups_list_instances_request_resource, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, list_instances_client_stub.call_count
    end
  end

  def test_remove_instances
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    instance_group = "hello world"
    instance_groups_remove_instances_request_resource = {}
    project = "hello world"
    request_id = "hello world"
    zone = "hello world"

    remove_instances_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :post, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "requestId"
      refute_nil body
    end

    Gapic::Rest::ClientStub.stub :new, remove_instances_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.remove_instances({ instance_group: instance_group, instance_groups_remove_instances_request_resource: instance_groups_remove_instances_request_resource, project: project, request_id: request_id, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.remove_instances instance_group: instance_group, instance_groups_remove_instances_request_resource: instance_groups_remove_instances_request_resource, project: project, request_id: request_id, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.remove_instances ::Google::Cloud::Compute::V1::RemoveInstancesInstanceGroupRequest.new(instance_group: instance_group, instance_groups_remove_instances_request_resource: instance_groups_remove_instances_request_resource, project: project, request_id: request_id, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.remove_instances({ instance_group: instance_group, instance_groups_remove_instances_request_resource: instance_groups_remove_instances_request_resource, project: project, request_id: request_id, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.remove_instances(::Google::Cloud::Compute::V1::RemoveInstancesInstanceGroupRequest.new(instance_group: instance_group, instance_groups_remove_instances_request_resource: instance_groups_remove_instances_request_resource, project: project, request_id: request_id, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, remove_instances_client_stub.call_count
    end
  end

  def test_set_named_ports
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    instance_group = "hello world"
    instance_groups_set_named_ports_request_resource = {}
    project = "hello world"
    request_id = "hello world"
    zone = "hello world"

    set_named_ports_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :post, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"

      assert params.key? "requestId"
      refute_nil body
    end

    Gapic::Rest::ClientStub.stub :new, set_named_ports_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.set_named_ports({ instance_group: instance_group, instance_groups_set_named_ports_request_resource: instance_groups_set_named_ports_request_resource, project: project, request_id: request_id, zone: zone }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.set_named_ports instance_group: instance_group, instance_groups_set_named_ports_request_resource: instance_groups_set_named_ports_request_resource, project: project, request_id: request_id, zone: zone do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.set_named_ports ::Google::Cloud::Compute::V1::SetNamedPortsInstanceGroupRequest.new(instance_group: instance_group, instance_groups_set_named_ports_request_resource: instance_groups_set_named_ports_request_resource, project: project, request_id: request_id, zone: zone) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.set_named_ports({ instance_group: instance_group, instance_groups_set_named_ports_request_resource: instance_groups_set_named_ports_request_resource, project: project, request_id: request_id, zone: zone }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.set_named_ports(::Google::Cloud::Compute::V1::SetNamedPortsInstanceGroupRequest.new(instance_group: instance_group, instance_groups_set_named_ports_request_resource: instance_groups_set_named_ports_request_resource, project: project, request_id: request_id, zone: zone), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, set_named_ports_client_stub.call_count
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::InstanceGroups::Rest::Client::Configuration, config
  end
end
