# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/tasks/v2/cloudtasks.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/tasks/v2/queue_pb'
require 'google/cloud/tasks/v2/task_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/tasks/v2/cloudtasks.proto", :syntax => :proto3) do
    add_message "google.cloud.tasks.v2.ListQueuesRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.cloud.tasks.v2.ListQueuesResponse" do
      repeated :queues, :message, 1, "google.cloud.tasks.v2.Queue"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.tasks.v2.GetQueueRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.tasks.v2.CreateQueueRequest" do
      optional :parent, :string, 1
      optional :queue, :message, 2, "google.cloud.tasks.v2.Queue"
    end
    add_message "google.cloud.tasks.v2.UpdateQueueRequest" do
      optional :queue, :message, 1, "google.cloud.tasks.v2.Queue"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.tasks.v2.DeleteQueueRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.tasks.v2.PurgeQueueRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.tasks.v2.PauseQueueRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.tasks.v2.ResumeQueueRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.tasks.v2.ListTasksRequest" do
      optional :parent, :string, 1
      optional :response_view, :enum, 2, "google.cloud.tasks.v2.Task.View"
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.cloud.tasks.v2.ListTasksResponse" do
      repeated :tasks, :message, 1, "google.cloud.tasks.v2.Task"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.tasks.v2.GetTaskRequest" do
      optional :name, :string, 1
      optional :response_view, :enum, 2, "google.cloud.tasks.v2.Task.View"
    end
    add_message "google.cloud.tasks.v2.CreateTaskRequest" do
      optional :parent, :string, 1
      optional :task, :message, 2, "google.cloud.tasks.v2.Task"
      optional :response_view, :enum, 3, "google.cloud.tasks.v2.Task.View"
    end
    add_message "google.cloud.tasks.v2.DeleteTaskRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.tasks.v2.RunTaskRequest" do
      optional :name, :string, 1
      optional :response_view, :enum, 2, "google.cloud.tasks.v2.Task.View"
    end
  end
end

module Google
  module Cloud
    module Tasks
      module V2
        ListQueuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.ListQueuesRequest").msgclass
        ListQueuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.ListQueuesResponse").msgclass
        GetQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.GetQueueRequest").msgclass
        CreateQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.CreateQueueRequest").msgclass
        UpdateQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.UpdateQueueRequest").msgclass
        DeleteQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.DeleteQueueRequest").msgclass
        PurgeQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.PurgeQueueRequest").msgclass
        PauseQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.PauseQueueRequest").msgclass
        ResumeQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.ResumeQueueRequest").msgclass
        ListTasksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.ListTasksRequest").msgclass
        ListTasksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.ListTasksResponse").msgclass
        GetTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.GetTaskRequest").msgclass
        CreateTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.CreateTaskRequest").msgclass
        DeleteTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.DeleteTaskRequest").msgclass
        RunTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.RunTaskRequest").msgclass
      end
    end
  end
end
