# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1p1beta1/notification_message.proto

require 'google/protobuf'

require 'google/cloud/securitycenter/v1p1beta1/finding_pb'
require 'google/cloud/securitycenter/v1p1beta1/resource_pb'
require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1p1beta1/notification_message.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1p1beta1.NotificationMessage" do
      optional :notification_config_name, :string, 1
      optional :resource, :message, 3, "google.cloud.securitycenter.v1p1beta1.Resource"
      oneof :event do
        optional :finding, :message, 2, "google.cloud.securitycenter.v1p1beta1.Finding"
      end
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1p1beta1
        NotificationMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.NotificationMessage").msgclass
      end
    end
  end
end
