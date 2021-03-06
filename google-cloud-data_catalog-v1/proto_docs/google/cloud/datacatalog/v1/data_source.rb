# frozen_string_literal: true

# Copyright 2021 Google LLC
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
        # Physical location of an entry.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::DataCatalog::V1::DataSource::Service]
        #     Service that physically stores the data.
        # @!attribute [rw] resource
        #   @return [::String]
        #     Full name of a resource as defined by the service. For example:
        #
        #     `//bigquery.googleapis.com/projects/{PROJECT_ID}/locations/{LOCATION}/datasets/{DATASET_ID}/tables/{TABLE_ID}`
        # @!attribute [r] source_entry
        #   @return [::String]
        #     Output only. Data Catalog entry name, if applicable.
        # @!attribute [rw] storage_properties
        #   @return [::Google::Cloud::DataCatalog::V1::StorageProperties]
        #     Detailed properties of the underlying storage.
        class DataSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Name of a service that stores the data.
          module Service
            # Default unknown service.
            SERVICE_UNSPECIFIED = 0

            # Google Cloud Storage service.
            CLOUD_STORAGE = 1

            # BigQuery service.
            BIGQUERY = 2
          end
        end

        # Details the properties of the underlying storage.
        # @!attribute [rw] file_pattern
        #   @return [::Array<::String>]
        #     Patterns to identify a set of files for this fileset.
        #
        #     Examples of a valid `file_pattern`:
        #
        #      * `gs://bucket_name/dir/*`: matches all files in the `bucket_name/dir`
        #                                  directory
        #      * `gs://bucket_name/dir/**`: matches all files in the `bucket_name/dir`
        #                                   and all subdirectories recursively
        #      * `gs://bucket_name/file*`: matches files prefixed by `file` in
        #                                  `bucket_name`
        #      * `gs://bucket_name/??.txt`: matches files with two characters followed by
        #                                   `.txt` in `bucket_name`
        #      * `gs://bucket_name/[aeiou].txt`: matches files that contain a single
        #                                        vowel character followed by `.txt` in
        #                                        `bucket_name`
        #      * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ...
        #                                      or `m` followed by `.txt` in `bucket_name`
        #      * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match
        #                                  the `a/*/b` pattern, such as `a/c/b`, `a/d/b`
        #      * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
        # @!attribute [rw] file_type
        #   @return [::String]
        #     File type in MIME format, for example, `text/plain`.
        class StorageProperties
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
