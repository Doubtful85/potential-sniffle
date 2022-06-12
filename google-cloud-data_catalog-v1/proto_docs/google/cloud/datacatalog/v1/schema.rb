# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DataCatalog
      module V1
        # Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
        # @!attribute [rw] columns
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::ColumnSchema>]
        #     The unified GoogleSQL-like schema of columns.
        #
        #     The overall maximum number of columns and nested columns is 10,000.
        #     The maximum nested depth is 15 levels.
        class Schema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A column within a schema. Columns can be nested inside
        # other columns.
        # @!attribute [rw] column
        #   @return [::String]
        #     Required. Name of the column.
        #
        #     Must be a UTF-8 string without dots (.).
        #     The maximum size is 64 bytes.
        # @!attribute [rw] type
        #   @return [::String]
        #     Required. Type of the column.
        #
        #     Must be a UTF-8 string with the maximum size of 128 bytes.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the column. Default value is an empty string.
        #
        #     The description must be a UTF-8 string with the maximum size of 2000
        #     bytes.
        # @!attribute [rw] mode
        #   @return [::String]
        #     Optional. A column's mode indicates whether values in this column are required,
        #     nullable, or repeated.
        #
        #     Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported.
        #     Default mode is `NULLABLE`.
        # @!attribute [rw] subcolumns
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::ColumnSchema>]
        #     Optional. Schema of sub-columns. A column can have zero or more sub-columns.
        class ColumnSchema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
