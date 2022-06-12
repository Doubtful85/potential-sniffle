# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/scheduler/v1/target.proto

require 'google/api/resource_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/scheduler/v1/target.proto", :syntax => :proto3) do
    add_message "google.cloud.scheduler.v1.HttpTarget" do
      optional :uri, :string, 1
      optional :http_method, :enum, 2, "google.cloud.scheduler.v1.HttpMethod"
      map :headers, :string, :string, 3
      optional :body, :bytes, 4
      oneof :authorization_header do
        optional :oauth_token, :message, 5, "google.cloud.scheduler.v1.OAuthToken"
        optional :oidc_token, :message, 6, "google.cloud.scheduler.v1.OidcToken"
      end
    end
    add_message "google.cloud.scheduler.v1.AppEngineHttpTarget" do
      optional :http_method, :enum, 1, "google.cloud.scheduler.v1.HttpMethod"
      optional :app_engine_routing, :message, 2, "google.cloud.scheduler.v1.AppEngineRouting"
      optional :relative_uri, :string, 3
      map :headers, :string, :string, 4
      optional :body, :bytes, 5
    end
    add_message "google.cloud.scheduler.v1.PubsubTarget" do
      optional :topic_name, :string, 1
      optional :data, :bytes, 3
      map :attributes, :string, :string, 4
    end
    add_message "google.cloud.scheduler.v1.AppEngineRouting" do
      optional :service, :string, 1
      optional :version, :string, 2
      optional :instance, :string, 3
      optional :host, :string, 4
    end
    add_message "google.cloud.scheduler.v1.OAuthToken" do
      optional :service_account_email, :string, 1
      optional :scope, :string, 2
    end
    add_message "google.cloud.scheduler.v1.OidcToken" do
      optional :service_account_email, :string, 1
      optional :audience, :string, 2
    end
    add_enum "google.cloud.scheduler.v1.HttpMethod" do
      value :HTTP_METHOD_UNSPECIFIED, 0
      value :POST, 1
      value :GET, 2
      value :HEAD, 3
      value :PUT, 4
      value :DELETE, 5
      value :PATCH, 6
      value :OPTIONS, 7
    end
  end
end

module Google
  module Cloud
    module Scheduler
      module V1
        HttpTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.HttpTarget").msgclass
        AppEngineHttpTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.AppEngineHttpTarget").msgclass
        PubsubTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.PubsubTarget").msgclass
        AppEngineRouting = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.AppEngineRouting").msgclass
        OAuthToken = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.OAuthToken").msgclass
        OidcToken = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.OidcToken").msgclass
        HttpMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.HttpMethod").enummodule
      end
    end
  end
end
