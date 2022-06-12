# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/data_items.proto

require 'google/cloud/automl/v1beta1/geometry_pb'
require 'google/cloud/automl/v1beta1/io_pb'
require 'google/cloud/automl/v1beta1/temporal_pb'
require 'google/cloud/automl/v1beta1/text_segment_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1beta1/data_items.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1beta1.Image" do
      optional :thumbnail_uri, :string, 4
      oneof :data do
        optional :image_bytes, :bytes, 1
        optional :input_config, :message, 6, "google.cloud.automl.v1beta1.InputConfig"
      end
    end
    add_message "google.cloud.automl.v1beta1.TextSnippet" do
      optional :content, :string, 1
      optional :mime_type, :string, 2
      optional :content_uri, :string, 4
    end
    add_message "google.cloud.automl.v1beta1.DocumentDimensions" do
      optional :unit, :enum, 1, "google.cloud.automl.v1beta1.DocumentDimensions.DocumentDimensionUnit"
      optional :width, :float, 2
      optional :height, :float, 3
    end
    add_enum "google.cloud.automl.v1beta1.DocumentDimensions.DocumentDimensionUnit" do
      value :DOCUMENT_DIMENSION_UNIT_UNSPECIFIED, 0
      value :INCH, 1
      value :CENTIMETER, 2
      value :POINT, 3
    end
    add_message "google.cloud.automl.v1beta1.Document" do
      optional :input_config, :message, 1, "google.cloud.automl.v1beta1.DocumentInputConfig"
      optional :document_text, :message, 2, "google.cloud.automl.v1beta1.TextSnippet"
      repeated :layout, :message, 3, "google.cloud.automl.v1beta1.Document.Layout"
      optional :document_dimensions, :message, 4, "google.cloud.automl.v1beta1.DocumentDimensions"
      optional :page_count, :int32, 5
    end
    add_message "google.cloud.automl.v1beta1.Document.Layout" do
      optional :text_segment, :message, 1, "google.cloud.automl.v1beta1.TextSegment"
      optional :page_number, :int32, 2
      optional :bounding_poly, :message, 3, "google.cloud.automl.v1beta1.BoundingPoly"
      optional :text_segment_type, :enum, 4, "google.cloud.automl.v1beta1.Document.Layout.TextSegmentType"
    end
    add_enum "google.cloud.automl.v1beta1.Document.Layout.TextSegmentType" do
      value :TEXT_SEGMENT_TYPE_UNSPECIFIED, 0
      value :TOKEN, 1
      value :PARAGRAPH, 2
      value :FORM_FIELD, 3
      value :FORM_FIELD_NAME, 4
      value :FORM_FIELD_CONTENTS, 5
      value :TABLE, 6
      value :TABLE_HEADER, 7
      value :TABLE_ROW, 8
      value :TABLE_CELL, 9
    end
    add_message "google.cloud.automl.v1beta1.Row" do
      repeated :column_spec_ids, :string, 2
      repeated :values, :message, 3, "google.protobuf.Value"
    end
    add_message "google.cloud.automl.v1beta1.ExamplePayload" do
      oneof :payload do
        optional :image, :message, 1, "google.cloud.automl.v1beta1.Image"
        optional :text_snippet, :message, 2, "google.cloud.automl.v1beta1.TextSnippet"
        optional :document, :message, 4, "google.cloud.automl.v1beta1.Document"
        optional :row, :message, 3, "google.cloud.automl.v1beta1.Row"
      end
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        Image = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Image").msgclass
        TextSnippet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.TextSnippet").msgclass
        DocumentDimensions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.DocumentDimensions").msgclass
        DocumentDimensions::DocumentDimensionUnit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.DocumentDimensions.DocumentDimensionUnit").enummodule
        Document = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Document").msgclass
        Document::Layout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Document.Layout").msgclass
        Document::Layout::TextSegmentType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Document.Layout.TextSegmentType").enummodule
        Row = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Row").msgclass
        ExamplePayload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ExamplePayload").msgclass
      end
    end
  end
end
