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

require "google/devtools/cloudtrace/v2/tracing_pb"
require "google/devtools/cloudtrace/v2/tracing_services_pb"
require "google/cloud/trace/v2/trace_service"

class ::Google::Cloud::Trace::V2::TraceService::ClientTest < Minitest::Test
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

  def test_batch_write_spans
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    spans = [{}]

    batch_write_spans_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_write_spans, name
      assert_kind_of ::Google::Cloud::Trace::V2::BatchWriteSpansRequest, request
      assert_equal "hello world", request["name"]
      assert_kind_of ::Google::Cloud::Trace::V2::Span, request["spans"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_write_spans_client_stub do
      # Create client
      client = ::Google::Cloud::Trace::V2::TraceService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_write_spans({ name: name, spans: spans }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_write_spans name: name, spans: spans do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_write_spans ::Google::Cloud::Trace::V2::BatchWriteSpansRequest.new(name: name, spans: spans) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_write_spans({ name: name, spans: spans }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_write_spans(::Google::Cloud::Trace::V2::BatchWriteSpansRequest.new(name: name, spans: spans), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_write_spans_client_stub.call_rpc_count
    end
  end

  def test_create_span
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Trace::V2::Span.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    span_id = "hello world"
    parent_span_id = "hello world"
    display_name = {}
    start_time = {}
    end_time = {}
    attributes = {}
    stack_trace = {}
    time_events = {}
    links = {}
    status = {}
    same_process_as_parent_span = {}
    child_span_count = {}
    span_kind = :SPAN_KIND_UNSPECIFIED

    create_span_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_span, name
      assert_kind_of ::Google::Cloud::Trace::V2::Span, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["span_id"]
      assert_equal "hello world", request["parent_span_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Trace::V2::TruncatableString), request["display_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["start_time"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["end_time"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Trace::V2::Span::Attributes), request["attributes"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Trace::V2::StackTrace), request["stack_trace"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Trace::V2::Span::TimeEvents), request["time_events"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Trace::V2::Span::Links), request["links"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Rpc::Status), request["status"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::BoolValue), request["same_process_as_parent_span"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Int32Value), request["child_span_count"]
      assert_equal :SPAN_KIND_UNSPECIFIED, request["span_kind"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_span_client_stub do
      # Create client
      client = ::Google::Cloud::Trace::V2::TraceService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_span({ name: name, span_id: span_id, parent_span_id: parent_span_id, display_name: display_name, start_time: start_time, end_time: end_time, attributes: attributes, stack_trace: stack_trace, time_events: time_events, links: links, status: status, same_process_as_parent_span: same_process_as_parent_span, child_span_count: child_span_count, span_kind: span_kind }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_span name: name, span_id: span_id, parent_span_id: parent_span_id, display_name: display_name, start_time: start_time, end_time: end_time, attributes: attributes, stack_trace: stack_trace, time_events: time_events, links: links, status: status, same_process_as_parent_span: same_process_as_parent_span, child_span_count: child_span_count, span_kind: span_kind do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_span ::Google::Cloud::Trace::V2::Span.new(name: name, span_id: span_id, parent_span_id: parent_span_id, display_name: display_name, start_time: start_time, end_time: end_time, attributes: attributes, stack_trace: stack_trace, time_events: time_events, links: links, status: status, same_process_as_parent_span: same_process_as_parent_span, child_span_count: child_span_count, span_kind: span_kind) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_span({ name: name, span_id: span_id, parent_span_id: parent_span_id, display_name: display_name, start_time: start_time, end_time: end_time, attributes: attributes, stack_trace: stack_trace, time_events: time_events, links: links, status: status, same_process_as_parent_span: same_process_as_parent_span, child_span_count: child_span_count, span_kind: span_kind }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_span(::Google::Cloud::Trace::V2::Span.new(name: name, span_id: span_id, parent_span_id: parent_span_id, display_name: display_name, start_time: start_time, end_time: end_time, attributes: attributes, stack_trace: stack_trace, time_events: time_events, links: links, status: status, same_process_as_parent_span: same_process_as_parent_span, child_span_count: child_span_count, span_kind: span_kind), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_span_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Trace::V2::TraceService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Trace::V2::TraceService::Client::Configuration, config
  end
end
