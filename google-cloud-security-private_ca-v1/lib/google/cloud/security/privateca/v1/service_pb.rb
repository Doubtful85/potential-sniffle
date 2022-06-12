# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/security/privateca/v1/service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/security/privateca/v1/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/security/privateca/v1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.security.privateca.v1.CreateCertificateRequest" do
      optional :parent, :string, 1
      optional :certificate_id, :string, 2
      optional :certificate, :message, 3, "google.cloud.security.privateca.v1.Certificate"
      optional :request_id, :string, 4
      optional :validate_only, :bool, 5
      optional :issuing_certificate_authority_id, :string, 6
    end
    add_message "google.cloud.security.privateca.v1.GetCertificateRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.ListCertificatesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.security.privateca.v1.ListCertificatesResponse" do
      repeated :certificates, :message, 1, "google.cloud.security.privateca.v1.Certificate"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.RevokeCertificateRequest" do
      optional :name, :string, 1
      optional :reason, :enum, 2, "google.cloud.security.privateca.v1.RevocationReason"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.UpdateCertificateRequest" do
      optional :certificate, :message, 1, "google.cloud.security.privateca.v1.Certificate"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.ActivateCertificateAuthorityRequest" do
      optional :name, :string, 1
      optional :pem_ca_certificate, :string, 2
      optional :subordinate_config, :message, 3, "google.cloud.security.privateca.v1.SubordinateConfig"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.security.privateca.v1.CreateCertificateAuthorityRequest" do
      optional :parent, :string, 1
      optional :certificate_authority_id, :string, 2
      optional :certificate_authority, :message, 3, "google.cloud.security.privateca.v1.CertificateAuthority"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.security.privateca.v1.DisableCertificateAuthorityRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.security.privateca.v1.EnableCertificateAuthorityRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.security.privateca.v1.FetchCertificateAuthorityCsrRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.FetchCertificateAuthorityCsrResponse" do
      optional :pem_csr, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.GetCertificateAuthorityRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.ListCertificateAuthoritiesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.security.privateca.v1.ListCertificateAuthoritiesResponse" do
      repeated :certificate_authorities, :message, 1, "google.cloud.security.privateca.v1.CertificateAuthority"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.UndeleteCertificateAuthorityRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.security.privateca.v1.DeleteCertificateAuthorityRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
      optional :ignore_active_certificates, :bool, 4
    end
    add_message "google.cloud.security.privateca.v1.UpdateCertificateAuthorityRequest" do
      optional :certificate_authority, :message, 1, "google.cloud.security.privateca.v1.CertificateAuthority"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.CreateCaPoolRequest" do
      optional :parent, :string, 1
      optional :ca_pool_id, :string, 2
      optional :ca_pool, :message, 3, "google.cloud.security.privateca.v1.CaPool"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.security.privateca.v1.UpdateCaPoolRequest" do
      optional :ca_pool, :message, 1, "google.cloud.security.privateca.v1.CaPool"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.DeleteCaPoolRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.security.privateca.v1.FetchCaCertsRequest" do
      optional :ca_pool, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.security.privateca.v1.FetchCaCertsResponse" do
      repeated :ca_certs, :message, 1, "google.cloud.security.privateca.v1.FetchCaCertsResponse.CertChain"
    end
    add_message "google.cloud.security.privateca.v1.FetchCaCertsResponse.CertChain" do
      repeated :certificates, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.GetCaPoolRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.ListCaPoolsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.security.privateca.v1.ListCaPoolsResponse" do
      repeated :ca_pools, :message, 1, "google.cloud.security.privateca.v1.CaPool"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.GetCertificateRevocationListRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.ListCertificateRevocationListsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.security.privateca.v1.ListCertificateRevocationListsResponse" do
      repeated :certificate_revocation_lists, :message, 1, "google.cloud.security.privateca.v1.CertificateRevocationList"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.UpdateCertificateRevocationListRequest" do
      optional :certificate_revocation_list, :message, 1, "google.cloud.security.privateca.v1.CertificateRevocationList"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.CreateCertificateTemplateRequest" do
      optional :parent, :string, 1
      optional :certificate_template_id, :string, 2
      optional :certificate_template, :message, 3, "google.cloud.security.privateca.v1.CertificateTemplate"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.security.privateca.v1.DeleteCertificateTemplateRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.security.privateca.v1.GetCertificateTemplateRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.ListCertificateTemplatesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.security.privateca.v1.ListCertificateTemplatesResponse" do
      repeated :certificate_templates, :message, 1, "google.cloud.security.privateca.v1.CertificateTemplate"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.UpdateCertificateTemplateRequest" do
      optional :certificate_template, :message, 1, "google.cloud.security.privateca.v1.CertificateTemplate"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.security.privateca.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
  end
end

module Google
  module Cloud
    module Security
      module PrivateCA
        module V1
          CreateCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CreateCertificateRequest").msgclass
          GetCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.GetCertificateRequest").msgclass
          ListCertificatesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificatesRequest").msgclass
          ListCertificatesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificatesResponse").msgclass
          RevokeCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.RevokeCertificateRequest").msgclass
          UpdateCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.UpdateCertificateRequest").msgclass
          ActivateCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ActivateCertificateAuthorityRequest").msgclass
          CreateCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CreateCertificateAuthorityRequest").msgclass
          DisableCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.DisableCertificateAuthorityRequest").msgclass
          EnableCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.EnableCertificateAuthorityRequest").msgclass
          FetchCertificateAuthorityCsrRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.FetchCertificateAuthorityCsrRequest").msgclass
          FetchCertificateAuthorityCsrResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.FetchCertificateAuthorityCsrResponse").msgclass
          GetCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.GetCertificateAuthorityRequest").msgclass
          ListCertificateAuthoritiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificateAuthoritiesRequest").msgclass
          ListCertificateAuthoritiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificateAuthoritiesResponse").msgclass
          UndeleteCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.UndeleteCertificateAuthorityRequest").msgclass
          DeleteCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.DeleteCertificateAuthorityRequest").msgclass
          UpdateCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.UpdateCertificateAuthorityRequest").msgclass
          CreateCaPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CreateCaPoolRequest").msgclass
          UpdateCaPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.UpdateCaPoolRequest").msgclass
          DeleteCaPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.DeleteCaPoolRequest").msgclass
          FetchCaCertsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.FetchCaCertsRequest").msgclass
          FetchCaCertsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.FetchCaCertsResponse").msgclass
          FetchCaCertsResponse::CertChain = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.FetchCaCertsResponse.CertChain").msgclass
          GetCaPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.GetCaPoolRequest").msgclass
          ListCaPoolsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCaPoolsRequest").msgclass
          ListCaPoolsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCaPoolsResponse").msgclass
          GetCertificateRevocationListRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.GetCertificateRevocationListRequest").msgclass
          ListCertificateRevocationListsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificateRevocationListsRequest").msgclass
          ListCertificateRevocationListsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificateRevocationListsResponse").msgclass
          UpdateCertificateRevocationListRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.UpdateCertificateRevocationListRequest").msgclass
          CreateCertificateTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CreateCertificateTemplateRequest").msgclass
          DeleteCertificateTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.DeleteCertificateTemplateRequest").msgclass
          GetCertificateTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.GetCertificateTemplateRequest").msgclass
          ListCertificateTemplatesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificateTemplatesRequest").msgclass
          ListCertificateTemplatesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ListCertificateTemplatesResponse").msgclass
          UpdateCertificateTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.UpdateCertificateTemplateRequest").msgclass
          OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.OperationMetadata").msgclass
        end
      end
    end
  end
end
