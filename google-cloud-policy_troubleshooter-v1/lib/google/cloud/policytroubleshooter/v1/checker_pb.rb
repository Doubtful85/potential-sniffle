# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/policytroubleshooter/v1/checker.proto

require 'google/cloud/policytroubleshooter/v1/explanations_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/policytroubleshooter/v1/checker.proto", :syntax => :proto3) do
    add_message "google.cloud.policytroubleshooter.v1.TroubleshootIamPolicyRequest" do
      optional :access_tuple, :message, 1, "google.cloud.policytroubleshooter.v1.AccessTuple"
    end
    add_message "google.cloud.policytroubleshooter.v1.TroubleshootIamPolicyResponse" do
      optional :access, :enum, 1, "google.cloud.policytroubleshooter.v1.AccessState"
      repeated :explained_policies, :message, 2, "google.cloud.policytroubleshooter.v1.ExplainedPolicy"
    end
  end
end

module Google
  module Cloud
    module PolicyTroubleshooter
      module V1
        TroubleshootIamPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.TroubleshootIamPolicyRequest").msgclass
        TroubleshootIamPolicyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.TroubleshootIamPolicyResponse").msgclass
      end
    end
  end
end
