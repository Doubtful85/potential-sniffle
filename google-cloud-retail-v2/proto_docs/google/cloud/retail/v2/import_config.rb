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
    module Retail
      module V2
        # Google Cloud Storage location for input content.
        # format.
        # @!attribute [rw] input_uris
        #   @return [::Array<::String>]
        #     Required. Google Cloud Storage URIs to input files. URI can be up to
        #     2000 characters long. URIs can match the full object path (for example,
        #     `gs://bucket/directory/object.json`) or a pattern matching one or more
        #     files, such as `gs://bucket/directory/*.json`. A request can
        #     contain at most 100 files, and each file can be up to 2 GB. See
        #     [Importing product
        #     information](https://cloud.google.com/retail/recommendations-ai/docs/upload-catalog)
        #     for the expected file format and setup instructions.
        # @!attribute [rw] data_schema
        #   @return [::String]
        #     The schema to use when parsing the data from the source.
        #
        #     Supported values for product imports:
        #
        #     * `product` (default): One JSON {::Google::Cloud::Retail::V2::Product Product}
        #     per line. Each product must
        #       have a valid {::Google::Cloud::Retail::V2::Product#id Product.id}.
        #     * `product_merchant_center`: See [Importing catalog data from Merchant
        #       Center](https://cloud.google.com/retail/recommendations-ai/docs/upload-catalog#mc).
        #
        #     Supported values for user events imports:
        #
        #     * `user_event` (default): One JSON
        #     {::Google::Cloud::Retail::V2::UserEvent UserEvent} per line.
        #     * `user_event_ga360`: Using
        #       https://support.google.com/analytics/answer/3437719.
        class GcsSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # BigQuery source import data from.
        # @!attribute [rw] partition_date
        #   @return [::Google::Type::Date]
        #     BigQuery time partitioned table's _PARTITIONDATE in YYYY-MM-DD format.
        #
        #     Only supported when
        #     {::Google::Cloud::Retail::V2::ImportProductsRequest#reconciliation_mode ImportProductsRequest.reconciliation_mode}
        #     is set to `FULL`.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     The project ID (can be project # or ID) that the BigQuery source is in with
        #     a length limit of 128 characters. If not specified, inherits the project
        #     ID from the parent request.
        # @!attribute [rw] dataset_id
        #   @return [::String]
        #     Required. The BigQuery data set to copy the data from with a length limit
        #     of 1,024 characters.
        # @!attribute [rw] table_id
        #   @return [::String]
        #     Required. The BigQuery table to copy the data from with a length limit of
        #     1,024 characters.
        # @!attribute [rw] gcs_staging_dir
        #   @return [::String]
        #     Intermediate Cloud Storage directory used for the import with a length
        #     limit of 2,000 characters. Can be specified if one wants to have the
        #     BigQuery export to a specific Cloud Storage directory.
        # @!attribute [rw] data_schema
        #   @return [::String]
        #     The schema to use when parsing the data from the source.
        #
        #     Supported values for product imports:
        #
        #     * `product` (default): One JSON {::Google::Cloud::Retail::V2::Product Product}
        #     per line. Each product must
        #       have a valid {::Google::Cloud::Retail::V2::Product#id Product.id}.
        #     * `product_merchant_center`: See [Importing catalog data from Merchant
        #       Center](https://cloud.google.com/retail/recommendations-ai/docs/upload-catalog#mc).
        #
        #     Supported values for user events imports:
        #
        #     * `user_event` (default): One JSON
        #     {::Google::Cloud::Retail::V2::UserEvent UserEvent} per line.
        #     * `user_event_ga360`: Using
        #       https://support.google.com/analytics/answer/3437719.
        class BigQuerySource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The inline source for the input config for ImportProducts method.
        # @!attribute [rw] products
        #   @return [::Array<::Google::Cloud::Retail::V2::Product>]
        #     Required. A list of products to update/create. Each product must have a
        #     valid {::Google::Cloud::Retail::V2::Product#id Product.id}. Recommended max of
        #     100 items.
        class ProductInlineSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The inline source for the input config for ImportUserEvents method.
        # @!attribute [rw] user_events
        #   @return [::Array<::Google::Cloud::Retail::V2::UserEvent>]
        #     Required. A list of user events to import. Recommended max of 10k items.
        class UserEventInlineSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration of destination for Import related errors.
        # @!attribute [rw] gcs_prefix
        #   @return [::String]
        #     Google Cloud Storage path for import errors. This must be an empty,
        #     existing Cloud Storage bucket. Import errors will be written to a file in
        #     this bucket, one per line, as a JSON-encoded
        #     `google.rpc.Status` message.
        class ImportErrorsConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for Import methods.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required.
        #     `projects/1234/locations/global/catalogs/default_catalog/branches/default_branch`
        #
        #     If no updateMask is specified, requires products.create permission.
        #     If updateMask is specified, requires products.update permission.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Unique identifier provided by client, within the ancestor
        #     dataset scope. Ensures idempotency and used for request deduplication.
        #     Server-generated if unspecified. Up to 128 characters long and must match
        #     the pattern: `[a-zA-Z0-9_]+`. This is returned as [Operation.name][] in
        #     {::Google::Cloud::Retail::V2::ImportMetadata ImportMetadata}.
        #
        #     Only supported when
        #     {::Google::Cloud::Retail::V2::ImportProductsRequest#reconciliation_mode ImportProductsRequest.reconciliation_mode}
        #     is set to `FULL`.
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::Retail::V2::ProductInputConfig]
        #     Required. The desired input location of the data.
        # @!attribute [rw] errors_config
        #   @return [::Google::Cloud::Retail::V2::ImportErrorsConfig]
        #     The desired location of errors incurred during the Import.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Indicates which fields in the provided imported 'products' to update. If
        #     not set, will by default update all fields.
        # @!attribute [rw] reconciliation_mode
        #   @return [::Google::Cloud::Retail::V2::ImportProductsRequest::ReconciliationMode]
        #     The mode of reconciliation between existing products and the products to be
        #     imported. Defaults to
        #     {::Google::Cloud::Retail::V2::ImportProductsRequest::ReconciliationMode::INCREMENTAL ReconciliationMode.INCREMENTAL}.
        # @!attribute [rw] notification_pubsub_topic
        #   @return [::String]
        #     Pub/Sub topic for receiving notification. If this field is set,
        #     when the import is finished, a notification will be sent to
        #     specified Pub/Sub topic. The message data will be JSON string of a
        #     {::Google::Longrunning::Operation Operation}.
        #     Format of the Pub/Sub topic is `projects/{project}/topics/{topic}`.
        #
        #     Only supported when
        #     {::Google::Cloud::Retail::V2::ImportProductsRequest#reconciliation_mode ImportProductsRequest.reconciliation_mode}
        #     is set to `FULL`.
        class ImportProductsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Indicates how imported products are reconciled with the existing products
          # created or imported before.
          module ReconciliationMode
            # Defaults to INCREMENTAL.
            RECONCILIATION_MODE_UNSPECIFIED = 0

            # Inserts new products or updates existing products.
            INCREMENTAL = 1

            # Calculates diff and replaces the entire product dataset. Existing
            # products may be deleted if they are not present in the source location.
            #
            # Can only be while using
            # {::Google::Cloud::Retail::V2::BigQuerySource BigQuerySource}.
            #
            # Add the IAM permission "BigQuery Data Viewer" for
            # cloud-retail-customer-data-access@system.gserviceaccount.com before
            # using this feature otherwise an error is thrown.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Please submit a form [here](https://cloud.google.com/contact) to contact
            # cloud sales if you are interested in using Retail Search.
            FULL = 2
          end
        end

        # Request message for the ImportUserEvents request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. `projects/1234/locations/global/catalogs/default_catalog`
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::Retail::V2::UserEventInputConfig]
        #     Required. The desired input location of the data.
        # @!attribute [rw] errors_config
        #   @return [::Google::Cloud::Retail::V2::ImportErrorsConfig]
        #     The desired location of errors incurred during the Import. Cannot be set
        #     for inline user event imports.
        class ImportUserEventsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ImportCompletionData methods.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The catalog which the suggestions dataset belongs to.
        #
        #     Format: `projects/1234/locations/global/catalogs/default_catalog`.
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::Retail::V2::CompletionDataInputConfig]
        #     Required. The desired input location of the data.
        # @!attribute [rw] notification_pubsub_topic
        #   @return [::String]
        #     Pub/Sub topic for receiving notification. If this field is set,
        #     when the import is finished, a notification will be sent to
        #     specified Pub/Sub topic. The message data will be JSON string of a
        #     {::Google::Longrunning::Operation Operation}.
        #     Format of the Pub/Sub topic is `projects/{project}/topics/{topic}`.
        class ImportCompletionDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The input config source for products.
        # @!attribute [rw] product_inline_source
        #   @return [::Google::Cloud::Retail::V2::ProductInlineSource]
        #     The Inline source for the input content for products.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::Retail::V2::GcsSource]
        #     Google Cloud Storage location for the input content.
        # @!attribute [rw] big_query_source
        #   @return [::Google::Cloud::Retail::V2::BigQuerySource]
        #     BigQuery input source.
        class ProductInputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The input config source for user events.
        # @!attribute [rw] user_event_inline_source
        #   @return [::Google::Cloud::Retail::V2::UserEventInlineSource]
        #     Required. The Inline source for the input content for UserEvents.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::Retail::V2::GcsSource]
        #     Required. Google Cloud Storage location for the input content.
        # @!attribute [rw] big_query_source
        #   @return [::Google::Cloud::Retail::V2::BigQuerySource]
        #     Required. BigQuery input source.
        class UserEventInputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The input config source for completion data.
        # @!attribute [rw] big_query_source
        #   @return [::Google::Cloud::Retail::V2::BigQuerySource]
        #     Required. BigQuery input source.
        #
        #     Add the IAM permission "BigQuery Data Viewer" for
        #     cloud-retail-customer-data-access@system.gserviceaccount.com before
        #     using this feature otherwise an error is thrown.
        class CompletionDataInputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the Import operation. This will be
        # returned by the google.longrunning.Operation.metadata field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        # @!attribute [rw] success_count
        #   @return [::Integer]
        #     Count of entries that were processed successfully.
        # @!attribute [rw] failure_count
        #   @return [::Integer]
        #     Count of entries that encountered errors while processing.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Id of the request / operation. This is parroting back the requestId
        #     that was passed in the request.
        # @!attribute [rw] notification_pubsub_topic
        #   @return [::String]
        #     Pub/Sub topic for receiving notification. If this field is set,
        #     when the import is finished, a notification will be sent to
        #     specified Pub/Sub topic. The message data will be JSON string of a
        #     {::Google::Longrunning::Operation Operation}.
        #     Format of the Pub/Sub topic is `projects/{project}/topics/{topic}`.
        class ImportMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the
        # {::Google::Cloud::Retail::V2::ImportProductsRequest ImportProductsRequest}. If the
        # long running operation is done, then this message is returned by the
        # google.longrunning.Operations.response field if the operation was successful.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        # @!attribute [rw] errors_config
        #   @return [::Google::Cloud::Retail::V2::ImportErrorsConfig]
        #     Echoes the destination for the complete errors in the request if set.
        class ImportProductsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the ImportUserEventsRequest. If the long running
        # operation was successful, then this message is returned by the
        # google.longrunning.Operations.response field if the operation was successful.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        # @!attribute [rw] errors_config
        #   @return [::Google::Cloud::Retail::V2::ImportErrorsConfig]
        #     Echoes the destination for the complete errors if this field was set in
        #     the request.
        # @!attribute [rw] import_summary
        #   @return [::Google::Cloud::Retail::V2::UserEventImportSummary]
        #     Aggregated statistics of user event import status.
        class ImportUserEventsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A summary of import result. The UserEventImportSummary summarizes
        # the import status for user events.
        # @!attribute [rw] joined_events_count
        #   @return [::Integer]
        #     Count of user events imported with complete existing catalog information.
        # @!attribute [rw] unjoined_events_count
        #   @return [::Integer]
        #     Count of user events imported, but with catalog information not found
        #     in the imported catalog.
        class UserEventImportSummary
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the
        # {::Google::Cloud::Retail::V2::ImportCompletionDataRequest ImportCompletionDataRequest}.
        # If the long running operation is done, this message is returned by the
        # google.longrunning.Operations.response field if the operation is successful.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        class ImportCompletionDataResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
