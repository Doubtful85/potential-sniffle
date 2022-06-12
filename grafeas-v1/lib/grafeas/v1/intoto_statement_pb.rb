# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/intoto_statement.proto

require 'grafeas/v1/intoto_provenance_pb'
require 'grafeas/v1/slsa_provenance_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/intoto_statement.proto", :syntax => :proto3) do
    add_message "grafeas.v1.InTotoStatement" do
      optional :type, :string, 1, json_name: "_type"
      repeated :subject, :message, 2, "grafeas.v1.Subject"
      optional :predicate_type, :string, 3
      oneof :predicate do
        optional :provenance, :message, 4, "grafeas.v1.InTotoProvenance"
        optional :slsa_provenance, :message, 5, "grafeas.v1.SlsaProvenance"
      end
    end
    add_message "grafeas.v1.Subject" do
      optional :name, :string, 1
      map :digest, :string, :string, 2
    end
  end
end

module Grafeas
  module V1
    InTotoStatement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.InTotoStatement").msgclass
    Subject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Subject").msgclass
  end
end
