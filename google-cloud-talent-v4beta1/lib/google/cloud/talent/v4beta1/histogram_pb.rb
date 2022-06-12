# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/histogram.proto

require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4beta1/histogram.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4beta1.HistogramQuery" do
      optional :histogram_query, :string, 1
    end
    add_message "google.cloud.talent.v4beta1.HistogramQueryResult" do
      optional :histogram_query, :string, 1
      map :histogram, :string, :int64, 2
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        HistogramQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.HistogramQuery").msgclass
        HistogramQueryResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.HistogramQueryResult").msgclass
      end
    end
  end
end
