# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/mitre_attack.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/mitre_attack.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.MitreAttack" do
      optional :primary_tactic, :enum, 1, "google.cloud.securitycenter.v1.MitreAttack.Tactic"
      repeated :primary_techniques, :enum, 2, "google.cloud.securitycenter.v1.MitreAttack.Technique"
      repeated :additional_tactics, :enum, 3, "google.cloud.securitycenter.v1.MitreAttack.Tactic"
      repeated :additional_techniques, :enum, 4, "google.cloud.securitycenter.v1.MitreAttack.Technique"
      optional :version, :string, 5
    end
    add_enum "google.cloud.securitycenter.v1.MitreAttack.Tactic" do
      value :TACTIC_UNSPECIFIED, 0
      value :RECONNAISSANCE, 1
      value :RESOURCE_DEVELOPMENT, 2
      value :INITIAL_ACCESS, 5
      value :EXECUTION, 3
      value :PERSISTENCE, 6
      value :PRIVILEGE_ESCALATION, 8
      value :DEFENSE_EVASION, 7
      value :CREDENTIAL_ACCESS, 9
      value :DISCOVERY, 10
      value :LATERAL_MOVEMENT, 11
      value :COLLECTION, 12
      value :COMMAND_AND_CONTROL, 4
      value :EXFILTRATION, 13
      value :IMPACT, 14
    end
    add_enum "google.cloud.securitycenter.v1.MitreAttack.Technique" do
      value :TECHNIQUE_UNSPECIFIED, 0
      value :ACTIVE_SCANNING, 1
      value :SCANNING_IP_BLOCKS, 2
      value :INGRESS_TOOL_TRANSFER, 3
      value :NATIVE_API, 4
      value :SHARED_MODULES, 5
      value :COMMAND_AND_SCRIPTING_INTERPRETER, 6
      value :UNIX_SHELL, 7
      value :RESOURCE_HIJACKING, 8
      value :PROXY, 9
      value :EXTERNAL_PROXY, 10
      value :MULTI_HOP_PROXY, 11
      value :DYNAMIC_RESOLUTION, 12
      value :UNSECURED_CREDENTIALS, 13
      value :VALID_ACCOUNTS, 14
      value :LOCAL_ACCOUNTS, 15
      value :CLOUD_ACCOUNTS, 16
      value :NETWORK_DENIAL_OF_SERVICE, 17
      value :PERMISSION_GROUPS_DISCOVERY, 18
      value :CLOUD_GROUPS, 19
      value :EXFILTRATION_OVER_WEB_SERVICE, 20
      value :EXFILTRATION_TO_CLOUD_STORAGE, 21
      value :ACCOUNT_MANIPULATION, 22
      value :SSH_AUTHORIZED_KEYS, 23
      value :CREATE_OR_MODIFY_SYSTEM_PROCESS, 24
      value :STEAL_WEB_SESSION_COOKIE, 25
      value :MODIFY_CLOUD_COMPUTE_INFRASTRUCTURE, 26
      value :EXPLOIT_PUBLIC_FACING_APPLICATION, 27
      value :MODIFY_AUTHENTICATION_PROCESS, 28
      value :DATA_DESTRUCTION, 29
      value :DOMAIN_POLICY_MODIFICATION, 30
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        MitreAttack = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.MitreAttack").msgclass
        MitreAttack::Tactic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.MitreAttack.Tactic").enummodule
        MitreAttack::Technique = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.MitreAttack.Technique").enummodule
      end
    end
  end
end
