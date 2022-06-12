# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataqna/v1alpha/question_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataqna/v1alpha/question_pb'
require 'google/cloud/dataqna/v1alpha/user_feedback_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataqna/v1alpha/question_service.proto", :syntax => :proto3) do
    add_message "google.cloud.dataqna.v1alpha.GetQuestionRequest" do
      optional :name, :string, 1
      optional :read_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.dataqna.v1alpha.CreateQuestionRequest" do
      optional :parent, :string, 1
      optional :question, :message, 2, "google.cloud.dataqna.v1alpha.Question"
    end
    add_message "google.cloud.dataqna.v1alpha.ExecuteQuestionRequest" do
      optional :name, :string, 1
      optional :interpretation_index, :int32, 2
    end
    add_message "google.cloud.dataqna.v1alpha.GetUserFeedbackRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataqna.v1alpha.UpdateUserFeedbackRequest" do
      optional :user_feedback, :message, 1, "google.cloud.dataqna.v1alpha.UserFeedback"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
  end
end

module Google
  module Cloud
    module DataQnA
      module V1alpha
        GetQuestionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.GetQuestionRequest").msgclass
        CreateQuestionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.CreateQuestionRequest").msgclass
        ExecuteQuestionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.ExecuteQuestionRequest").msgclass
        GetUserFeedbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.GetUserFeedbackRequest").msgclass
        UpdateUserFeedbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.UpdateUserFeedbackRequest").msgclass
      end
    end
  end
end
