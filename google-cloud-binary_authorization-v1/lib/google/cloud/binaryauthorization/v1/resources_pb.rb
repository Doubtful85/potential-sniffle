# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/binaryauthorization/v1/resources.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/binaryauthorization/v1/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.binaryauthorization.v1.Policy" do
      optional :name, :string, 1
      optional :description, :string, 6
      optional :global_policy_evaluation_mode, :enum, 7, "google.cloud.binaryauthorization.v1.Policy.GlobalPolicyEvaluationMode"
      repeated :admission_whitelist_patterns, :message, 2, "google.cloud.binaryauthorization.v1.AdmissionWhitelistPattern"
      map :cluster_admission_rules, :string, :message, 3, "google.cloud.binaryauthorization.v1.AdmissionRule"
      map :kubernetes_namespace_admission_rules, :string, :message, 10, "google.cloud.binaryauthorization.v1.AdmissionRule"
      map :kubernetes_service_account_admission_rules, :string, :message, 8, "google.cloud.binaryauthorization.v1.AdmissionRule"
      map :istio_service_identity_admission_rules, :string, :message, 9, "google.cloud.binaryauthorization.v1.AdmissionRule"
      optional :default_admission_rule, :message, 4, "google.cloud.binaryauthorization.v1.AdmissionRule"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.binaryauthorization.v1.Policy.GlobalPolicyEvaluationMode" do
      value :GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED, 0
      value :ENABLE, 1
      value :DISABLE, 2
    end
    add_message "google.cloud.binaryauthorization.v1.AdmissionWhitelistPattern" do
      optional :name_pattern, :string, 1
    end
    add_message "google.cloud.binaryauthorization.v1.AdmissionRule" do
      optional :evaluation_mode, :enum, 1, "google.cloud.binaryauthorization.v1.AdmissionRule.EvaluationMode"
      repeated :require_attestations_by, :string, 2
      optional :enforcement_mode, :enum, 3, "google.cloud.binaryauthorization.v1.AdmissionRule.EnforcementMode"
    end
    add_enum "google.cloud.binaryauthorization.v1.AdmissionRule.EvaluationMode" do
      value :EVALUATION_MODE_UNSPECIFIED, 0
      value :ALWAYS_ALLOW, 1
      value :REQUIRE_ATTESTATION, 2
      value :ALWAYS_DENY, 3
    end
    add_enum "google.cloud.binaryauthorization.v1.AdmissionRule.EnforcementMode" do
      value :ENFORCEMENT_MODE_UNSPECIFIED, 0
      value :ENFORCED_BLOCK_AND_AUDIT_LOG, 1
      value :DRYRUN_AUDIT_LOG_ONLY, 2
    end
    add_message "google.cloud.binaryauthorization.v1.Attestor" do
      optional :name, :string, 1
      optional :description, :string, 6
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      oneof :attestor_type do
        optional :user_owned_grafeas_note, :message, 3, "google.cloud.binaryauthorization.v1.UserOwnedGrafeasNote"
      end
    end
    add_message "google.cloud.binaryauthorization.v1.UserOwnedGrafeasNote" do
      optional :note_reference, :string, 1
      repeated :public_keys, :message, 2, "google.cloud.binaryauthorization.v1.AttestorPublicKey"
      optional :delegation_service_account_email, :string, 3
    end
    add_message "google.cloud.binaryauthorization.v1.PkixPublicKey" do
      optional :public_key_pem, :string, 1
      optional :signature_algorithm, :enum, 2, "google.cloud.binaryauthorization.v1.PkixPublicKey.SignatureAlgorithm"
    end
    add_enum "google.cloud.binaryauthorization.v1.PkixPublicKey.SignatureAlgorithm" do
      value :SIGNATURE_ALGORITHM_UNSPECIFIED, 0
      value :RSA_PSS_2048_SHA256, 1
      value :RSA_PSS_3072_SHA256, 2
      value :RSA_PSS_4096_SHA256, 3
      value :RSA_PSS_4096_SHA512, 4
      value :RSA_SIGN_PKCS1_2048_SHA256, 5
      value :RSA_SIGN_PKCS1_3072_SHA256, 6
      value :RSA_SIGN_PKCS1_4096_SHA256, 7
      value :RSA_SIGN_PKCS1_4096_SHA512, 8
      value :ECDSA_P256_SHA256, 9
      value :EC_SIGN_P256_SHA256, 9
      value :ECDSA_P384_SHA384, 10
      value :EC_SIGN_P384_SHA384, 10
      value :ECDSA_P521_SHA512, 11
      value :EC_SIGN_P521_SHA512, 11
    end
    add_message "google.cloud.binaryauthorization.v1.AttestorPublicKey" do
      optional :comment, :string, 1
      optional :id, :string, 2
      oneof :public_key do
        optional :ascii_armored_pgp_public_key, :string, 3
        optional :pkix_public_key, :message, 5, "google.cloud.binaryauthorization.v1.PkixPublicKey"
      end
    end
  end
end

module Google
  module Cloud
    module BinaryAuthorization
      module V1
        Policy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.Policy").msgclass
        Policy::GlobalPolicyEvaluationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.Policy.GlobalPolicyEvaluationMode").enummodule
        AdmissionWhitelistPattern = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.AdmissionWhitelistPattern").msgclass
        AdmissionRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.AdmissionRule").msgclass
        AdmissionRule::EvaluationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.AdmissionRule.EvaluationMode").enummodule
        AdmissionRule::EnforcementMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.AdmissionRule.EnforcementMode").enummodule
        Attestor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.Attestor").msgclass
        UserOwnedGrafeasNote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.UserOwnedGrafeasNote").msgclass
        PkixPublicKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.PkixPublicKey").msgclass
        PkixPublicKey::SignatureAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.PkixPublicKey.SignatureAlgorithm").enummodule
        AttestorPublicKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.AttestorPublicKey").msgclass
      end
    end
  end
end
