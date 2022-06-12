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
    module Datastore
      module Admin
        module V1
          # Metadata common to all Datastore Admin operations.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time that work began on the operation.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time the operation ended, either successfully or otherwise.
          # @!attribute [rw] operation_type
          #   @return [::Google::Cloud::Datastore::Admin::V1::OperationType]
          #     The type of the operation. Can be used as a filter in
          #     ListOperationsRequest.
          # @!attribute [rw] labels
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     The client-assigned labels which were provided when the operation was
          #     created. May also include additional labels.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Datastore::Admin::V1::CommonMetadata::State]
          #     The current state of the Operation.
          class CommonMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class LabelsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The various possible states for an ongoing Operation.
            module State
              # Unspecified.
              STATE_UNSPECIFIED = 0

              # Request is being prepared for processing.
              INITIALIZING = 1

              # Request is actively being processed.
              PROCESSING = 2

              # Request is in the process of being cancelled after user called
              # google.longrunning.Operations.CancelOperation on the operation.
              CANCELLING = 3

              # Request has been processed and is in its finalization stage.
              FINALIZING = 4

              # Request has completed successfully.
              SUCCESSFUL = 5

              # Request has finished being processed, but encountered an error.
              FAILED = 6

              # Request has finished being cancelled after user called
              # google.longrunning.Operations.CancelOperation.
              CANCELLED = 7
            end
          end

          # Measures the progress of a particular metric.
          # @!attribute [rw] work_completed
          #   @return [::Integer]
          #     The amount of work that has been completed. Note that this may be greater
          #     than work_estimated.
          # @!attribute [rw] work_estimated
          #   @return [::Integer]
          #     An estimate of how much work needs to be performed. May be zero if the
          #     work estimate is unavailable.
          class Progress
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#export_entities google.datastore.admin.v1.DatastoreAdmin.ExportEntities}.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     Required. Project ID against which to make the request.
          # @!attribute [rw] labels
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Client-assigned labels.
          # @!attribute [rw] entity_filter
          #   @return [::Google::Cloud::Datastore::Admin::V1::EntityFilter]
          #     Description of what data from the project is included in the export.
          # @!attribute [rw] output_url_prefix
          #   @return [::String]
          #     Required. Location for the export metadata and data files.
          #
          #     The full resource URL of the external storage location. Currently, only
          #     Google Cloud Storage is supported. So output_url_prefix should be of the
          #     form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the
          #     name of the Cloud Storage bucket and `NAMESPACE_PATH` is an optional Cloud
          #     Storage namespace path (this is not a Cloud Datastore namespace). For more
          #     information about Cloud Storage namespace paths, see
          #     [Object name
          #     considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
          #
          #     The resulting files will be nested deeper than the specified URL prefix.
          #     The final output URL will be provided in the
          #     {::Google::Cloud::Datastore::Admin::V1::ExportEntitiesResponse#output_url google.datastore.admin.v1.ExportEntitiesResponse.output_url} field. That
          #     value should be used for subsequent ImportEntities operations.
          #
          #     By nesting the data files deeper, the same Cloud Storage bucket can be used
          #     in multiple ExportEntities operations without conflict.
          class ExportEntitiesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class LabelsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The request for
          # {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#import_entities google.datastore.admin.v1.DatastoreAdmin.ImportEntities}.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     Required. Project ID against which to make the request.
          # @!attribute [rw] labels
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Client-assigned labels.
          # @!attribute [rw] input_url
          #   @return [::String]
          #     Required. The full resource URL of the external storage location. Currently, only
          #     Google Cloud Storage is supported. So input_url should be of the form:
          #     `gs://BUCKET_NAME[/NAMESPACE_PATH]/OVERALL_EXPORT_METADATA_FILE`, where
          #     `BUCKET_NAME` is the name of the Cloud Storage bucket, `NAMESPACE_PATH` is
          #     an optional Cloud Storage namespace path (this is not a Cloud Datastore
          #     namespace), and `OVERALL_EXPORT_METADATA_FILE` is the metadata file written
          #     by the ExportEntities operation. For more information about Cloud Storage
          #     namespace paths, see
          #     [Object name
          #     considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
          #
          #     For more information, see
          #     {::Google::Cloud::Datastore::Admin::V1::ExportEntitiesResponse#output_url google.datastore.admin.v1.ExportEntitiesResponse.output_url}.
          # @!attribute [rw] entity_filter
          #   @return [::Google::Cloud::Datastore::Admin::V1::EntityFilter]
          #     Optionally specify which kinds/namespaces are to be imported. If provided,
          #     the list must be a subset of the EntityFilter used in creating the export,
          #     otherwise a FAILED_PRECONDITION error will be returned. If no filter is
          #     specified then all entities from the export are imported.
          class ImportEntitiesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class LabelsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The response for
          # {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#export_entities google.datastore.admin.v1.DatastoreAdmin.ExportEntities}.
          # @!attribute [rw] output_url
          #   @return [::String]
          #     Location of the output metadata file. This can be used to begin an import
          #     into Cloud Datastore (this project or another project). See
          #     {::Google::Cloud::Datastore::Admin::V1::ImportEntitiesRequest#input_url google.datastore.admin.v1.ImportEntitiesRequest.input_url}.
          #     Only present if the operation completed successfully.
          class ExportEntitiesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for ExportEntities operations.
          # @!attribute [rw] common
          #   @return [::Google::Cloud::Datastore::Admin::V1::CommonMetadata]
          #     Metadata common to all Datastore Admin operations.
          # @!attribute [rw] progress_entities
          #   @return [::Google::Cloud::Datastore::Admin::V1::Progress]
          #     An estimate of the number of entities processed.
          # @!attribute [rw] progress_bytes
          #   @return [::Google::Cloud::Datastore::Admin::V1::Progress]
          #     An estimate of the number of bytes processed.
          # @!attribute [rw] entity_filter
          #   @return [::Google::Cloud::Datastore::Admin::V1::EntityFilter]
          #     Description of which entities are being exported.
          # @!attribute [rw] output_url_prefix
          #   @return [::String]
          #     Location for the export metadata and data files. This will be the same
          #     value as the
          #     {::Google::Cloud::Datastore::Admin::V1::ExportEntitiesRequest#output_url_prefix google.datastore.admin.v1.ExportEntitiesRequest.output_url_prefix}
          #     field. The final output location is provided in
          #     {::Google::Cloud::Datastore::Admin::V1::ExportEntitiesResponse#output_url google.datastore.admin.v1.ExportEntitiesResponse.output_url}.
          class ExportEntitiesMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for ImportEntities operations.
          # @!attribute [rw] common
          #   @return [::Google::Cloud::Datastore::Admin::V1::CommonMetadata]
          #     Metadata common to all Datastore Admin operations.
          # @!attribute [rw] progress_entities
          #   @return [::Google::Cloud::Datastore::Admin::V1::Progress]
          #     An estimate of the number of entities processed.
          # @!attribute [rw] progress_bytes
          #   @return [::Google::Cloud::Datastore::Admin::V1::Progress]
          #     An estimate of the number of bytes processed.
          # @!attribute [rw] entity_filter
          #   @return [::Google::Cloud::Datastore::Admin::V1::EntityFilter]
          #     Description of which entities are being imported.
          # @!attribute [rw] input_url
          #   @return [::String]
          #     The location of the import metadata file. This will be the same value as
          #     the {::Google::Cloud::Datastore::Admin::V1::ExportEntitiesResponse#output_url google.datastore.admin.v1.ExportEntitiesResponse.output_url} field.
          class ImportEntitiesMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Identifies a subset of entities in a project. This is specified as
          # combinations of kinds and namespaces (either or both of which may be all, as
          # described in the following examples).
          # Example usage:
          #
          # Entire project:
          #   kinds=[], namespace_ids=[]
          #
          # Kinds Foo and Bar in all namespaces:
          #   kinds=['Foo', 'Bar'], namespace_ids=[]
          #
          # Kinds Foo and Bar only in the default namespace:
          #   kinds=['Foo', 'Bar'], namespace_ids=['']
          #
          # Kinds Foo and Bar in both the default and Baz namespaces:
          #   kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz']
          #
          # The entire Baz namespace:
          #   kinds=[], namespace_ids=['Baz']
          # @!attribute [rw] kinds
          #   @return [::Array<::String>]
          #     If empty, then this represents all kinds.
          # @!attribute [rw] namespace_ids
          #   @return [::Array<::String>]
          #     An empty list represents all namespaces. This is the preferred
          #     usage for projects that don't use namespaces.
          #
          #     An empty string element represents the default namespace. This should be
          #     used if the project has data in non-default namespaces, but doesn't want to
          #     include them.
          #     Each namespace in this list must be unique.
          class EntityFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#create_index google.datastore.admin.v1.DatastoreAdmin.CreateIndex}.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     Project ID against which to make the request.
          # @!attribute [rw] index
          #   @return [::Google::Cloud::Datastore::Admin::V1::Index]
          #     The index to create. The name and state fields are output only and will be
          #     ignored. Single property indexes cannot be created or deleted.
          class CreateIndexRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#delete_index google.datastore.admin.v1.DatastoreAdmin.DeleteIndex}.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     Project ID against which to make the request.
          # @!attribute [rw] index_id
          #   @return [::String]
          #     The resource ID of the index to delete.
          class DeleteIndexRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#get_index google.datastore.admin.v1.DatastoreAdmin.GetIndex}.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     Project ID against which to make the request.
          # @!attribute [rw] index_id
          #   @return [::String]
          #     The resource ID of the index to get.
          class GetIndexRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#list_indexes google.datastore.admin.v1.DatastoreAdmin.ListIndexes}.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     Project ID against which to make the request.
          # @!attribute [rw] filter
          #   @return [::String]
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return.  If zero, then all results will be
          #     returned.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class ListIndexesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for
          # {::Google::Cloud::Datastore::Admin::V1::DatastoreAdmin::Client#list_indexes google.datastore.admin.v1.DatastoreAdmin.ListIndexes}.
          # @!attribute [rw] indexes
          #   @return [::Array<::Google::Cloud::Datastore::Admin::V1::Index>]
          #     The indexes.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The standard List next-page token.
          class ListIndexesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for Index operations.
          # @!attribute [rw] common
          #   @return [::Google::Cloud::Datastore::Admin::V1::CommonMetadata]
          #     Metadata common to all Datastore Admin operations.
          # @!attribute [rw] progress_entities
          #   @return [::Google::Cloud::Datastore::Admin::V1::Progress]
          #     An estimate of the number of entities processed.
          # @!attribute [rw] index_id
          #   @return [::String]
          #     The index resource ID that this operation is acting on.
          class IndexOperationMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for Datastore to Firestore migration operations.
          #
          # The DatastoreFirestoreMigration operation is not started by the end-user via
          # an explicit "creation" method. This is an intentional deviation from the LRO
          # design pattern.
          #
          # This singleton resource can be accessed at:
          # `projects/{project_id}/datastore-firestore-migration`
          # @!attribute [rw] migration_state
          #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationState]
          #     The current state of migration from Cloud Datastore to Cloud Firestore in
          #     Datastore mode.
          # @!attribute [rw] migration_step
          #   @return [::Google::Cloud::Datastore::Admin::V1::MigrationStep]
          #     The current step of migration from Cloud Datastore to Cloud Firestore in
          #     Datastore mode.
          class DatastoreFirestoreMigrationMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Operation types.
          module OperationType
            # Unspecified.
            OPERATION_TYPE_UNSPECIFIED = 0

            # ExportEntities.
            EXPORT_ENTITIES = 1

            # ImportEntities.
            IMPORT_ENTITIES = 2

            # CreateIndex.
            CREATE_INDEX = 3

            # DeleteIndex.
            DELETE_INDEX = 4
          end
        end
      end
    end
  end
end
