# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/websecurityscanner/v1/finding.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/websecurityscanner/v1/finding_addon_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/websecurityscanner/v1/finding.proto", :syntax => :proto3) do
    add_message "google.cloud.websecurityscanner.v1.Finding" do
      optional :name, :string, 1
      optional :finding_type, :string, 2
      optional :severity, :enum, 17, "google.cloud.websecurityscanner.v1.Finding.Severity"
      optional :http_method, :string, 3
      optional :fuzzed_url, :string, 4
      optional :body, :string, 5
      optional :description, :string, 6
      optional :reproduction_url, :string, 7
      optional :frame_url, :string, 8
      optional :final_url, :string, 9
      optional :tracking_id, :string, 10
      optional :form, :message, 16, "google.cloud.websecurityscanner.v1.Form"
      optional :outdated_library, :message, 11, "google.cloud.websecurityscanner.v1.OutdatedLibrary"
      optional :violating_resource, :message, 12, "google.cloud.websecurityscanner.v1.ViolatingResource"
      optional :vulnerable_headers, :message, 15, "google.cloud.websecurityscanner.v1.VulnerableHeaders"
      optional :vulnerable_parameters, :message, 13, "google.cloud.websecurityscanner.v1.VulnerableParameters"
      optional :xss, :message, 14, "google.cloud.websecurityscanner.v1.Xss"
    end
    add_enum "google.cloud.websecurityscanner.v1.Finding.Severity" do
      value :SEVERITY_UNSPECIFIED, 0
      value :CRITICAL, 1
      value :HIGH, 2
      value :MEDIUM, 3
      value :LOW, 4
    end
  end
end

module Google
  module Cloud
    module WebSecurityScanner
      module V1
        Finding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.Finding").msgclass
        Finding::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.Finding.Severity").enummodule
      end
    end
  end
end
