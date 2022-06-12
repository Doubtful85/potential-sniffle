# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/certificate.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/appengine/v1/certificate.proto", :syntax => :proto3) do
    add_message "google.appengine.v1.AuthorizedCertificate" do
      optional :name, :string, 1
      optional :id, :string, 2
      optional :display_name, :string, 3
      repeated :domain_names, :string, 4
      optional :expire_time, :message, 5, "google.protobuf.Timestamp"
      optional :certificate_raw_data, :message, 6, "google.appengine.v1.CertificateRawData"
      optional :managed_certificate, :message, 7, "google.appengine.v1.ManagedCertificate"
      repeated :visible_domain_mappings, :string, 8
      optional :domain_mappings_count, :int32, 9
    end
    add_message "google.appengine.v1.CertificateRawData" do
      optional :public_certificate, :string, 1
      optional :private_key, :string, 2
    end
    add_message "google.appengine.v1.ManagedCertificate" do
      optional :last_renewal_time, :message, 1, "google.protobuf.Timestamp"
      optional :status, :enum, 2, "google.appengine.v1.ManagementStatus"
    end
    add_enum "google.appengine.v1.ManagementStatus" do
      value :MANAGEMENT_STATUS_UNSPECIFIED, 0
      value :OK, 1
      value :PENDING, 2
      value :FAILED_RETRYING_NOT_VISIBLE, 4
      value :FAILED_PERMANENT, 6
      value :FAILED_RETRYING_CAA_FORBIDDEN, 7
      value :FAILED_RETRYING_CAA_CHECKING, 8
    end
  end
end

module Google
  module Cloud
    module AppEngine
      module V1
        AuthorizedCertificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.AuthorizedCertificate").msgclass
        CertificateRawData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.CertificateRawData").msgclass
        ManagedCertificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ManagedCertificate").msgclass
        ManagementStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ManagementStatus").enummodule
      end
    end
  end
end
