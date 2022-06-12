# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/datastore/admin/v1/migration.proto

require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/datastore/admin/v1/migration.proto", :syntax => :proto3) do
    add_message "google.datastore.admin.v1.MigrationStateEvent" do
      optional :state, :enum, 1, "google.datastore.admin.v1.MigrationState"
    end
    add_message "google.datastore.admin.v1.MigrationProgressEvent" do
      optional :step, :enum, 1, "google.datastore.admin.v1.MigrationStep"
      oneof :step_details do
        optional :prepare_step_details, :message, 2, "google.datastore.admin.v1.MigrationProgressEvent.PrepareStepDetails"
        optional :redirect_writes_step_details, :message, 3, "google.datastore.admin.v1.MigrationProgressEvent.RedirectWritesStepDetails"
      end
    end
    add_message "google.datastore.admin.v1.MigrationProgressEvent.PrepareStepDetails" do
      optional :concurrency_mode, :enum, 1, "google.datastore.admin.v1.MigrationProgressEvent.ConcurrencyMode"
    end
    add_message "google.datastore.admin.v1.MigrationProgressEvent.RedirectWritesStepDetails" do
      optional :concurrency_mode, :enum, 1, "google.datastore.admin.v1.MigrationProgressEvent.ConcurrencyMode"
    end
    add_enum "google.datastore.admin.v1.MigrationProgressEvent.ConcurrencyMode" do
      value :CONCURRENCY_MODE_UNSPECIFIED, 0
      value :PESSIMISTIC, 1
      value :OPTIMISTIC, 2
    end
    add_enum "google.datastore.admin.v1.MigrationState" do
      value :MIGRATION_STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :PAUSED, 2
      value :COMPLETE, 3
    end
    add_enum "google.datastore.admin.v1.MigrationStep" do
      value :MIGRATION_STEP_UNSPECIFIED, 0
      value :PREPARE, 6
      value :START, 1
      value :APPLY_WRITES_SYNCHRONOUSLY, 7
      value :COPY_AND_VERIFY, 2
      value :REDIRECT_EVENTUALLY_CONSISTENT_READS, 3
      value :REDIRECT_STRONGLY_CONSISTENT_READS, 4
      value :REDIRECT_WRITES, 5
    end
  end
end

module Google
  module Cloud
    module Datastore
      module Admin
        module V1
          MigrationStateEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.admin.v1.MigrationStateEvent").msgclass
          MigrationProgressEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.admin.v1.MigrationProgressEvent").msgclass
          MigrationProgressEvent::PrepareStepDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.admin.v1.MigrationProgressEvent.PrepareStepDetails").msgclass
          MigrationProgressEvent::RedirectWritesStepDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.admin.v1.MigrationProgressEvent.RedirectWritesStepDetails").msgclass
          MigrationProgressEvent::ConcurrencyMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.admin.v1.MigrationProgressEvent.ConcurrencyMode").enummodule
          MigrationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.admin.v1.MigrationState").enummodule
          MigrationStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.admin.v1.MigrationStep").enummodule
        end
      end
    end
  end
end
