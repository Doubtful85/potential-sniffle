# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/bigquery/datatransfer/v1/datasource.proto for package 'google.cloud.bigquery.datatransfer.v1'
# Original file comments:
# Copyright 2019 Google LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#


require 'grpc'
require 'google/cloud/bigquery/datatransfer/v1/datasource_pb'

module Google
  module Cloud
    module Bigquery
      module Datatransfer
        module V1
          module DataSourceService
            # The Google BigQuery Data Transfer API allows BigQuery users to
            # configure transfer of their data from other Google Products into BigQuery.
            # This service exposes methods that should be used by data source backend.
            class Service

              include GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.bigquery.datatransfer.v1.DataSourceService'

              # Update a transfer run. If successful, resets
              # data_source.update_deadline_seconds timer.
              rpc :UpdateTransferRun, UpdateTransferRunRequest, TransferRun
              # Log messages for a transfer run. If successful (at least 1 message), resets
              # data_source.update_deadline_seconds timer.
              rpc :LogTransferRunMessages, LogTransferRunMessagesRequest, Google::Protobuf::Empty
              # Notify the Data Transfer Service that data is ready for loading.
              # The Data Transfer Service will start and monitor multiple BigQuery Load
              # jobs for a transfer run. Monitored jobs will be automatically retried
              # and produce log messages when starting and finishing a job.
              # Can be called multiple times for the same transfer run.
              rpc :StartBigQueryJobs, StartBigQueryJobsRequest, Google::Protobuf::Empty
              # Notify the Data Transfer Service that the data source is done processing
              # the run. No more status updates or requests to start/monitor jobs will be
              # accepted. The run will be finalized by the Data Transfer Service when all
              # monitored jobs are completed.
              # Does not need to be called if the run is set to FAILED.
              rpc :FinishRun, FinishRunRequest, Google::Protobuf::Empty
              # Creates a data source definition.  Calling this method will automatically
              # use your credentials to create the following Google Cloud resources in
              # YOUR Google Cloud project.
              # 1. OAuth client
              # 2. Pub/Sub Topics and Subscriptions in each supported_location_ids. e.g.,
              # projects/\\{project_id}/{topics|subscriptions}/bigquerydatatransfer.\\{data_source_id}.\\{location_id}.run
              # The field data_source.client_id should be left empty in the input request,
              # as the API will create a new OAuth client on behalf of the caller. On the
              # other hand data_source.scopes usually need to be set when there are OAuth
              # scopes that need to be granted by end users.
              # 3. We need a longer deadline due to the 60 seconds SLO from Pub/Sub admin
              # Operations. This also applies to update and delete data source definition.
              rpc :CreateDataSourceDefinition, CreateDataSourceDefinitionRequest, DataSourceDefinition
              # Updates an existing data source definition. If changing
              # supported_location_ids, triggers same effects as mentioned in "Create a
              # data source definition."
              rpc :UpdateDataSourceDefinition, UpdateDataSourceDefinitionRequest, DataSourceDefinition
              # Deletes a data source definition, all of the transfer configs associated
              # with this data source definition (if any) must be deleted first by the user
              # in ALL regions, in order to delete the data source definition.
              # This method is primarily meant for deleting data sources created during
              # testing stage.
              # If the data source is referenced by transfer configs in the region
              # specified in the request URL, the method will fail immediately. If in the
              # current region (e.g., US) it's not used by any transfer configs, but in
              # another region (e.g., EU) it is, then although the method will succeed in
              # region US, but it will fail when the deletion operation is replicated to
              # region EU. And eventually, the system will replicate the data source
              # definition back from EU to US, in order to bring all regions to
              # consistency. The final effect is that the data source appears to be
              # 'undeleted' in the US region.
              rpc :DeleteDataSourceDefinition, DeleteDataSourceDefinitionRequest, Google::Protobuf::Empty
              # Retrieves an existing data source definition.
              rpc :GetDataSourceDefinition, GetDataSourceDefinitionRequest, DataSourceDefinition
              # Lists supported data source definitions.
              rpc :ListDataSourceDefinitions, ListDataSourceDefinitionsRequest, ListDataSourceDefinitionsResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
