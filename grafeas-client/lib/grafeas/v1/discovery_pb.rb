# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/discovery.proto


require 'google/protobuf'

require 'google/rpc/status_pb'
require 'grafeas/v1/common_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "grafeas.v1.DiscoveryNote" do
    optional :analysis_kind, :enum, 1, "grafeas.v1.NoteKind"
  end
  add_message "grafeas.v1.DiscoveryOccurrence" do
    optional :continuous_analysis, :enum, 1, "grafeas.v1.DiscoveryOccurrence.ContinuousAnalysis"
    optional :analysis_status, :enum, 2, "grafeas.v1.DiscoveryOccurrence.AnalysisStatus"
    optional :analysis_status_error, :message, 3, "google.rpc.Status"
  end
  add_enum "grafeas.v1.DiscoveryOccurrence.ContinuousAnalysis" do
    value :CONTINUOUS_ANALYSIS_UNSPECIFIED, 0
    value :ACTIVE, 1
    value :INACTIVE, 2
  end
  add_enum "grafeas.v1.DiscoveryOccurrence.AnalysisStatus" do
    value :ANALYSIS_STATUS_UNSPECIFIED, 0
    value :PENDING, 1
    value :SCANNING, 2
    value :FINISHED_SUCCESS, 3
    value :FINISHED_FAILED, 4
    value :FINISHED_UNSUPPORTED, 5
  end
end

module Grafeas
  module V1
    DiscoveryNote = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DiscoveryNote").msgclass
    DiscoveryOccurrence = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DiscoveryOccurrence").msgclass
    DiscoveryOccurrence::ContinuousAnalysis = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DiscoveryOccurrence.ContinuousAnalysis").enummodule
    DiscoveryOccurrence::AnalysisStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DiscoveryOccurrence.AnalysisStatus").enummodule
  end
end
