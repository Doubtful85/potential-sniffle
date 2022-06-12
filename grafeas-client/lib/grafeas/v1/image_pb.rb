# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/image.proto


require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "grafeas.v1.Layer" do
    optional :directive, :string, 1
    optional :arguments, :string, 2
  end
  add_message "grafeas.v1.Fingerprint" do
    optional :v1_name, :string, 1
    repeated :v2_blob, :string, 2
    optional :v2_name, :string, 3
  end
  add_message "grafeas.v1.ImageNote" do
    optional :resource_url, :string, 1
    optional :fingerprint, :message, 2, "grafeas.v1.Fingerprint"
  end
  add_message "grafeas.v1.ImageOccurrence" do
    optional :fingerprint, :message, 1, "grafeas.v1.Fingerprint"
    optional :distance, :int32, 2
    repeated :layer_info, :message, 3, "grafeas.v1.Layer"
    optional :base_resource_url, :string, 4
  end
end

module Grafeas
  module V1
    Layer = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Layer").msgclass
    Fingerprint = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Fingerprint").msgclass
    ImageNote = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ImageNote").msgclass
    ImageOccurrence = Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ImageOccurrence").msgclass
  end
end
