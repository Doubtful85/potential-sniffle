# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/completion_service.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/api/client_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4beta1/completion_service.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4beta1.CompleteQueryRequest" do
      optional :parent, :string, 1
      optional :query, :string, 2
      repeated :language_codes, :string, 3
      optional :page_size, :int32, 4
      optional :company, :string, 5
      optional :scope, :enum, 6, "google.cloud.talent.v4beta1.CompleteQueryRequest.CompletionScope"
      optional :type, :enum, 7, "google.cloud.talent.v4beta1.CompleteQueryRequest.CompletionType"
    end
    add_enum "google.cloud.talent.v4beta1.CompleteQueryRequest.CompletionScope" do
      value :COMPLETION_SCOPE_UNSPECIFIED, 0
      value :TENANT, 1
      value :PUBLIC, 2
    end
    add_enum "google.cloud.talent.v4beta1.CompleteQueryRequest.CompletionType" do
      value :COMPLETION_TYPE_UNSPECIFIED, 0
      value :JOB_TITLE, 1
      value :COMPANY_NAME, 2
      value :COMBINED, 3
    end
    add_message "google.cloud.talent.v4beta1.CompleteQueryResponse" do
      repeated :completion_results, :message, 1, "google.cloud.talent.v4beta1.CompleteQueryResponse.CompletionResult"
      optional :metadata, :message, 2, "google.cloud.talent.v4beta1.ResponseMetadata"
    end
    add_message "google.cloud.talent.v4beta1.CompleteQueryResponse.CompletionResult" do
      optional :suggestion, :string, 1
      optional :type, :enum, 2, "google.cloud.talent.v4beta1.CompleteQueryRequest.CompletionType"
      optional :image_uri, :string, 3
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        CompleteQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompleteQueryRequest").msgclass
        CompleteQueryRequest::CompletionScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompleteQueryRequest.CompletionScope").enummodule
        CompleteQueryRequest::CompletionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompleteQueryRequest.CompletionType").enummodule
        CompleteQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompleteQueryResponse").msgclass
        CompleteQueryResponse::CompletionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompleteQueryResponse.CompletionResult").msgclass
      end
    end
  end
end
