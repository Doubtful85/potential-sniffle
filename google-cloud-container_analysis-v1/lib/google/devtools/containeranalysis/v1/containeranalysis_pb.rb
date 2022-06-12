# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/containeranalysis/v1/containeranalysis.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/timestamp_pb'
require 'grafeas/v1/vulnerability_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/containeranalysis/v1/containeranalysis.proto", :syntax => :proto3) do
    add_message "google.devtools.containeranalysis.v1.GetVulnerabilityOccurrencesSummaryRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
    end
    add_message "google.devtools.containeranalysis.v1.VulnerabilityOccurrencesSummary" do
      repeated :counts, :message, 1, "google.devtools.containeranalysis.v1.VulnerabilityOccurrencesSummary.FixableTotalByDigest"
    end
    add_message "google.devtools.containeranalysis.v1.VulnerabilityOccurrencesSummary.FixableTotalByDigest" do
      optional :resource_uri, :string, 1
      optional :severity, :enum, 2, "grafeas.v1.Severity"
      optional :fixable_count, :int64, 3
      optional :total_count, :int64, 4
    end
  end
end

module Google
  module Cloud
    module ContainerAnalysis
      module V1
        GetVulnerabilityOccurrencesSummaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.containeranalysis.v1.GetVulnerabilityOccurrencesSummaryRequest").msgclass
        VulnerabilityOccurrencesSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.containeranalysis.v1.VulnerabilityOccurrencesSummary").msgclass
        VulnerabilityOccurrencesSummary::FixableTotalByDigest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.containeranalysis.v1.VulnerabilityOccurrencesSummary.FixableTotalByDigest").msgclass
      end
    end
  end
end
