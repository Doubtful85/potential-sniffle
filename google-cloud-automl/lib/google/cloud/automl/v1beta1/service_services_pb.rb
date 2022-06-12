# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/automl/v1beta1/service.proto for package 'Google::Cloud::AutoML::V1beta1'
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
require 'google/cloud/automl/v1beta1/service_pb'

module Google::Cloud::AutoML::V1beta1
  module AutoML
    # AutoML Server API.
    #
    # The resource names are assigned by the server.
    # The server never reuses names that it has created after the resources with
    # those names are deleted.
    #
    # An ID of a resource is the last element of the item's resource name. For
    # `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`, then
    # the id for the item is `{dataset_id}`.
    #
    # Currently the only supported `location_id` is "us-central1".
    #
    # On any input that is documented to expect a string parameter in
    # snake_case or kebab-case, either of those cases is accepted.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'google.cloud.automl.v1beta1.AutoMl'

      # Creates a dataset.
      rpc :CreateDataset, CreateDatasetRequest, Dataset
      # Gets a dataset.
      rpc :GetDataset, GetDatasetRequest, Dataset
      # Lists datasets in a project.
      rpc :ListDatasets, ListDatasetsRequest, ListDatasetsResponse
      # Updates a dataset.
      rpc :UpdateDataset, UpdateDatasetRequest, Dataset
      # Deletes a dataset and all of its contents.
      # Returns empty response in the
      # [response][google.longrunning.Operation.response] field when it completes,
      # and `delete_details` in the
      # [metadata][google.longrunning.Operation.metadata] field.
      rpc :DeleteDataset, DeleteDatasetRequest, Google::Longrunning::Operation
      # Imports data into a dataset.
      # For Tables this method can only be called on an empty Dataset.
      #
      # For Tables:
      # *   A
      # [schema_inference_version][google.cloud.automl.v1beta1.InputConfig.params]
      #     parameter must be explicitly set.
      # Returns an empty response in the
      # [response][google.longrunning.Operation.response] field when it completes.
      rpc :ImportData, ImportDataRequest, Google::Longrunning::Operation
      # Exports dataset's data to the provided output location.
      # Returns an empty response in the
      # [response][google.longrunning.Operation.response] field when it completes.
      rpc :ExportData, ExportDataRequest, Google::Longrunning::Operation
      # Gets an annotation spec.
      rpc :GetAnnotationSpec, GetAnnotationSpecRequest, AnnotationSpec
      # Gets a table spec.
      rpc :GetTableSpec, GetTableSpecRequest, TableSpec
      # Lists table specs in a dataset.
      rpc :ListTableSpecs, ListTableSpecsRequest, ListTableSpecsResponse
      # Updates a table spec.
      rpc :UpdateTableSpec, UpdateTableSpecRequest, TableSpec
      # Gets a column spec.
      rpc :GetColumnSpec, GetColumnSpecRequest, ColumnSpec
      # Lists column specs in a table spec.
      rpc :ListColumnSpecs, ListColumnSpecsRequest, ListColumnSpecsResponse
      # Updates a column spec.
      rpc :UpdateColumnSpec, UpdateColumnSpecRequest, ColumnSpec
      # Creates a model.
      # Returns a Model in the [response][google.longrunning.Operation.response]
      # field when it completes.
      # When you create a model, several model evaluations are created for it:
      # a global evaluation, and one evaluation for each annotation spec.
      rpc :CreateModel, CreateModelRequest, Google::Longrunning::Operation
      # Gets a model.
      rpc :GetModel, GetModelRequest, Model
      # Lists models.
      rpc :ListModels, ListModelsRequest, ListModelsResponse
      # Deletes a model.
      # Returns `google.protobuf.Empty` in the
      # [response][google.longrunning.Operation.response] field when it completes,
      # and `delete_details` in the
      # [metadata][google.longrunning.Operation.metadata] field.
      rpc :DeleteModel, DeleteModelRequest, Google::Longrunning::Operation
      # Deploys a model. If a model is already deployed, deploying it with the
      # same parameters has no effect. Deploying with different parametrs
      # (as e.g. changing
      #
      # [node_number][google.cloud.automl.v1beta1.ImageObjectDetectionModelDeploymentMetadata.node_number])
      #  will reset the deployment state without pausing the model's availability.
      #
      # Only applicable for Text Classification, Image Object Detection and Tables; all other domains manage deployment automatically.
      #
      # Returns an empty response in the
      # [response][google.longrunning.Operation.response] field when it completes.
      rpc :DeployModel, DeployModelRequest, Google::Longrunning::Operation
      # Undeploys a model. If the model is not deployed this method has no effect.
      #
      # Only applicable for Text Classification, Image Object Detection and Tables;
      # all other domains manage deployment automatically.
      #
      # Returns an empty response in the
      # [response][google.longrunning.Operation.response] field when it completes.
      rpc :UndeployModel, UndeployModelRequest, Google::Longrunning::Operation
      # Exports a trained, "export-able", model to a user specified Google Cloud
      # Storage location. A model is considered export-able if and only if it has
      # an export format defined for it in
      #
      # [ModelExportOutputConfig][google.cloud.automl.v1beta1.ModelExportOutputConfig].
      #
      # Returns an empty response in the
      # [response][google.longrunning.Operation.response] field when it completes.
      rpc :ExportModel, ExportModelRequest, Google::Longrunning::Operation
      # Exports examples on which the model was evaluated (i.e. which were in the
      # TEST set of the dataset the model was created from), together with their
      # ground truth annotations and the annotations created (predicted) by the
      # model.
      # The examples, ground truth and predictions are exported in the state
      # they were at the moment the model was evaluated.
      #
      # This export is available only for 30 days since the model evaluation is
      # created.
      #
      # Currently only available for Tables.
      #
      # Returns an empty response in the
      # [response][google.longrunning.Operation.response] field when it completes.
      rpc :ExportEvaluatedExamples, ExportEvaluatedExamplesRequest, Google::Longrunning::Operation
      # Gets a model evaluation.
      rpc :GetModelEvaluation, GetModelEvaluationRequest, ModelEvaluation
      # Lists model evaluations.
      rpc :ListModelEvaluations, ListModelEvaluationsRequest, ListModelEvaluationsResponse
    end

    Stub = Service.rpc_stub_class
  end
end
