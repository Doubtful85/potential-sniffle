# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataproc/v1/jobs.proto for package 'google.cloud.dataproc.v1'
# Original file comments:
# Copyright 2020 Google LLC
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

require 'grpc'
require 'google/cloud/dataproc/v1/jobs_pb'

module Google
  module Cloud
    module Dataproc
      module V1
        module JobController
          # The JobController provides methods to manage jobs.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataproc.v1.JobController'

            # Submits a job to a cluster.
            rpc :SubmitJob, ::Google::Cloud::Dataproc::V1::SubmitJobRequest, ::Google::Cloud::Dataproc::V1::Job
            # Submits job to a cluster.
            rpc :SubmitJobAsOperation, ::Google::Cloud::Dataproc::V1::SubmitJobRequest, ::Google::Longrunning::Operation
            # Gets the resource representation for a job in a project.
            rpc :GetJob, ::Google::Cloud::Dataproc::V1::GetJobRequest, ::Google::Cloud::Dataproc::V1::Job
            # Lists regions/{region}/jobs in a project.
            rpc :ListJobs, ::Google::Cloud::Dataproc::V1::ListJobsRequest, ::Google::Cloud::Dataproc::V1::ListJobsResponse
            # Updates a job in a project.
            rpc :UpdateJob, ::Google::Cloud::Dataproc::V1::UpdateJobRequest, ::Google::Cloud::Dataproc::V1::Job
            # Starts a job cancellation request. To access the job resource
            # after cancellation, call
            # [regions/{region}/jobs.list](https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/list)
            # or
            # [regions/{region}/jobs.get](https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/get).
            rpc :CancelJob, ::Google::Cloud::Dataproc::V1::CancelJobRequest, ::Google::Cloud::Dataproc::V1::Job
            # Deletes the job from the project. If the job is active, the delete fails,
            # and the response returns `FAILED_PRECONDITION`.
            rpc :DeleteJob, ::Google::Cloud::Dataproc::V1::DeleteJobRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
