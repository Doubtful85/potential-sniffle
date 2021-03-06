# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/migration/v2/migration_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/bigquery/migration/v2/migration_entities_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/bigquery/migration/v2/migration_service.proto", :syntax => :proto3) do
    add_message "google.cloud.bigquery.migration.v2.CreateMigrationWorkflowRequest" do
      optional :parent, :string, 1
      optional :migration_workflow, :message, 2, "google.cloud.bigquery.migration.v2.MigrationWorkflow"
    end
    add_message "google.cloud.bigquery.migration.v2.GetMigrationWorkflowRequest" do
      optional :name, :string, 1
      optional :read_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.bigquery.migration.v2.ListMigrationWorkflowsRequest" do
      optional :parent, :string, 1
      optional :read_mask, :message, 2, "google.protobuf.FieldMask"
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.cloud.bigquery.migration.v2.ListMigrationWorkflowsResponse" do
      repeated :migration_workflows, :message, 1, "google.cloud.bigquery.migration.v2.MigrationWorkflow"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.migration.v2.DeleteMigrationWorkflowRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.migration.v2.StartMigrationWorkflowRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.migration.v2.GetMigrationSubtaskRequest" do
      optional :name, :string, 1
      optional :read_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.bigquery.migration.v2.ListMigrationSubtasksRequest" do
      optional :parent, :string, 1
      optional :read_mask, :message, 2, "google.protobuf.FieldMask"
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :filter, :string, 5
    end
    add_message "google.cloud.bigquery.migration.v2.ListMigrationSubtasksResponse" do
      repeated :migration_subtasks, :message, 1, "google.cloud.bigquery.migration.v2.MigrationSubtask"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module Bigquery
      module Migration
        module V2
          CreateMigrationWorkflowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.CreateMigrationWorkflowRequest").msgclass
          GetMigrationWorkflowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.GetMigrationWorkflowRequest").msgclass
          ListMigrationWorkflowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ListMigrationWorkflowsRequest").msgclass
          ListMigrationWorkflowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ListMigrationWorkflowsResponse").msgclass
          DeleteMigrationWorkflowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.DeleteMigrationWorkflowRequest").msgclass
          StartMigrationWorkflowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.StartMigrationWorkflowRequest").msgclass
          GetMigrationSubtaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.GetMigrationSubtaskRequest").msgclass
          ListMigrationSubtasksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ListMigrationSubtasksRequest").msgclass
          ListMigrationSubtasksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ListMigrationSubtasksResponse").msgclass
        end
      end
    end
  end
end
