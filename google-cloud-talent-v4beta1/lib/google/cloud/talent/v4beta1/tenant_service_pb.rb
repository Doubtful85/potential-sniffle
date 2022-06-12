# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/tenant_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/cloud/talent/v4beta1/tenant_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4beta1/tenant_service.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4beta1.CreateTenantRequest" do
      optional :parent, :string, 1
      optional :tenant, :message, 2, "google.cloud.talent.v4beta1.Tenant"
    end
    add_message "google.cloud.talent.v4beta1.GetTenantRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.talent.v4beta1.UpdateTenantRequest" do
      optional :tenant, :message, 1, "google.cloud.talent.v4beta1.Tenant"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.talent.v4beta1.DeleteTenantRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.talent.v4beta1.ListTenantsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.cloud.talent.v4beta1.ListTenantsResponse" do
      repeated :tenants, :message, 1, "google.cloud.talent.v4beta1.Tenant"
      optional :next_page_token, :string, 2
      optional :metadata, :message, 3, "google.cloud.talent.v4beta1.ResponseMetadata"
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        CreateTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CreateTenantRequest").msgclass
        GetTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.GetTenantRequest").msgclass
        UpdateTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.UpdateTenantRequest").msgclass
        DeleteTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.DeleteTenantRequest").msgclass
        ListTenantsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ListTenantsRequest").msgclass
        ListTenantsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ListTenantsResponse").msgclass
      end
    end
  end
end
