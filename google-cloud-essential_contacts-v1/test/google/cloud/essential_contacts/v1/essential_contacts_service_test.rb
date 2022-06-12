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

require "google/cloud/essentialcontacts/v1/service_pb"
require "google/cloud/essentialcontacts/v1/service_services_pb"
require "google/cloud/essential_contacts/v1/essential_contacts_service"

class ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::ClientTest < Minitest::Test
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

  def test_create_contact
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::EssentialContacts::V1::Contact.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    contact = {}

    create_contact_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_contact, name
      assert_kind_of ::Google::Cloud::EssentialContacts::V1::CreateContactRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::EssentialContacts::V1::Contact), request["contact"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_contact_client_stub do
      # Create client
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_contact({ parent: parent, contact: contact }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_contact parent: parent, contact: contact do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_contact ::Google::Cloud::EssentialContacts::V1::CreateContactRequest.new(parent: parent, contact: contact) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_contact({ parent: parent, contact: contact }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_contact(::Google::Cloud::EssentialContacts::V1::CreateContactRequest.new(parent: parent, contact: contact), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_contact_client_stub.call_rpc_count
    end
  end

  def test_update_contact
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::EssentialContacts::V1::Contact.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    contact = {}
    update_mask = {}

    update_contact_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_contact, name
      assert_kind_of ::Google::Cloud::EssentialContacts::V1::UpdateContactRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::EssentialContacts::V1::Contact), request["contact"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_contact_client_stub do
      # Create client
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_contact({ contact: contact, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_contact contact: contact, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_contact ::Google::Cloud::EssentialContacts::V1::UpdateContactRequest.new(contact: contact, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_contact({ contact: contact, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_contact(::Google::Cloud::EssentialContacts::V1::UpdateContactRequest.new(contact: contact, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_contact_client_stub.call_rpc_count
    end
  end

  def test_list_contacts
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::EssentialContacts::V1::ListContactsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_contacts_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_contacts, name
      assert_kind_of ::Google::Cloud::EssentialContacts::V1::ListContactsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_contacts_client_stub do
      # Create client
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_contacts({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_contacts parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_contacts ::Google::Cloud::EssentialContacts::V1::ListContactsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_contacts({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_contacts(::Google::Cloud::EssentialContacts::V1::ListContactsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_contacts_client_stub.call_rpc_count
    end
  end

  def test_get_contact
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::EssentialContacts::V1::Contact.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_contact_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_contact, name
      assert_kind_of ::Google::Cloud::EssentialContacts::V1::GetContactRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_contact_client_stub do
      # Create client
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_contact({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_contact name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_contact ::Google::Cloud::EssentialContacts::V1::GetContactRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_contact({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_contact(::Google::Cloud::EssentialContacts::V1::GetContactRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_contact_client_stub.call_rpc_count
    end
  end

  def test_delete_contact
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_contact_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_contact, name
      assert_kind_of ::Google::Cloud::EssentialContacts::V1::DeleteContactRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_contact_client_stub do
      # Create client
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_contact({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_contact name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_contact ::Google::Cloud::EssentialContacts::V1::DeleteContactRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_contact({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_contact(::Google::Cloud::EssentialContacts::V1::DeleteContactRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_contact_client_stub.call_rpc_count
    end
  end

  def test_compute_contacts
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::EssentialContacts::V1::ComputeContactsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    notification_categories = [:NOTIFICATION_CATEGORY_UNSPECIFIED]
    page_size = 42
    page_token = "hello world"

    compute_contacts_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :compute_contacts, name
      assert_kind_of ::Google::Cloud::EssentialContacts::V1::ComputeContactsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal [:NOTIFICATION_CATEGORY_UNSPECIFIED], request["notification_categories"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, compute_contacts_client_stub do
      # Create client
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.compute_contacts({ parent: parent, notification_categories: notification_categories, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.compute_contacts parent: parent, notification_categories: notification_categories, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.compute_contacts ::Google::Cloud::EssentialContacts::V1::ComputeContactsRequest.new(parent: parent, notification_categories: notification_categories, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.compute_contacts({ parent: parent, notification_categories: notification_categories, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.compute_contacts(::Google::Cloud::EssentialContacts::V1::ComputeContactsRequest.new(parent: parent, notification_categories: notification_categories, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, compute_contacts_client_stub.call_rpc_count
    end
  end

  def test_send_test_message
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    contacts = ["hello world"]
    resource = "hello world"
    notification_category = :NOTIFICATION_CATEGORY_UNSPECIFIED

    send_test_message_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :send_test_message, name
      assert_kind_of ::Google::Cloud::EssentialContacts::V1::SendTestMessageRequest, request
      assert_equal ["hello world"], request["contacts"]
      assert_equal "hello world", request["resource"]
      assert_equal :NOTIFICATION_CATEGORY_UNSPECIFIED, request["notification_category"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, send_test_message_client_stub do
      # Create client
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.send_test_message({ contacts: contacts, resource: resource, notification_category: notification_category }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.send_test_message contacts: contacts, resource: resource, notification_category: notification_category do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.send_test_message ::Google::Cloud::EssentialContacts::V1::SendTestMessageRequest.new(contacts: contacts, resource: resource, notification_category: notification_category) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.send_test_message({ contacts: contacts, resource: resource, notification_category: notification_category }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.send_test_message(::Google::Cloud::EssentialContacts::V1::SendTestMessageRequest.new(contacts: contacts, resource: resource, notification_category: notification_category), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, send_test_message_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client::Configuration, config
  end
end
