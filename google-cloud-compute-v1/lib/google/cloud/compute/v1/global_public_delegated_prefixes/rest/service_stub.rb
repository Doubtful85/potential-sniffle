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

require "google/cloud/compute/v1/compute_pb"

module Google
  module Cloud
    module Compute
      module V1
        module GlobalPublicDelegatedPrefixes
          module Rest
            ##
            # REST service stub for the GlobalPublicDelegatedPrefixes service.
            # service stub contains baseline method implementations
            # including transcoding, making the REST call and deserialing the response
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials
              end

              ##
              # Baseline implementation for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def delete request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_delete_request request_pb
                response = @client_stub.make_delete_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/publicDelegatedPrefixes/#{request_pb.public_delegated_prefix}"
                body = nil
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::PublicDelegatedPrefix]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::PublicDelegatedPrefix]
              #   A result object deserialized from the server's reply
              def get request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, _query_string_params = transcode_get_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::PublicDelegatedPrefix.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/publicDelegatedPrefixes/#{request_pb.public_delegated_prefix}"
                body = nil
                query_string_params = {}

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def insert request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_insert_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_insert_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/publicDelegatedPrefixes"
                body = request_pb.public_delegated_prefix_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListGlobalPublicDelegatedPrefixesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::PublicDelegatedPrefixList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::PublicDelegatedPrefixList]
              #   A result object deserialized from the server's reply
              def list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_list_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::PublicDelegatedPrefixList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListGlobalPublicDelegatedPrefixesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/publicDelegatedPrefixes"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the patch REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::PatchGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def patch request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_patch_request request_pb
                response = @client_stub.make_patch_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the patch REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::PatchGlobalPublicDelegatedPrefixeRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_patch_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/publicDelegatedPrefixes/#{request_pb.public_delegated_prefix}"
                body = request_pb.public_delegated_prefix_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end
            end
          end
        end
      end
    end
  end
end
