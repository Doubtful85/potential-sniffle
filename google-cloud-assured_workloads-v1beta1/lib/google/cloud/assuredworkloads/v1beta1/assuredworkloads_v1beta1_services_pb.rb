# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/assuredworkloads/v1beta1/assuredworkloads_v1beta1.proto for package 'Google.Cloud.AssuredWorkloads.V1beta1'
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
require 'google/cloud/assuredworkloads/v1beta1/assuredworkloads_v1beta1_pb'

module Google
  module Cloud
    module AssuredWorkloads
      module V1beta1
        module AssuredWorkloadsService
          # Service to manage AssuredWorkloads.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.assuredworkloads.v1beta1.AssuredWorkloadsService'

            # Creates Assured Workload.
            rpc :CreateWorkload, ::Google::Cloud::AssuredWorkloads::V1beta1::CreateWorkloadRequest, ::Google::Longrunning::Operation
            # Updates an existing workload.
            # Currently allows updating of workload display_name and labels.
            # For force updates don't set etag field in the Workload.
            # Only one update operation per workload can be in progress.
            rpc :UpdateWorkload, ::Google::Cloud::AssuredWorkloads::V1beta1::UpdateWorkloadRequest, ::Google::Cloud::AssuredWorkloads::V1beta1::Workload
            # Deletes the workload. Make sure that workload's direct children are already
            # in a deleted state, otherwise the request will fail with a
            # FAILED_PRECONDITION error.
            rpc :DeleteWorkload, ::Google::Cloud::AssuredWorkloads::V1beta1::DeleteWorkloadRequest, ::Google::Protobuf::Empty
            # Gets Assured Workload associated with a CRM Node
            rpc :GetWorkload, ::Google::Cloud::AssuredWorkloads::V1beta1::GetWorkloadRequest, ::Google::Cloud::AssuredWorkloads::V1beta1::Workload
            # Lists Assured Workloads under a CRM Node.
            rpc :ListWorkloads, ::Google::Cloud::AssuredWorkloads::V1beta1::ListWorkloadsRequest, ::Google::Cloud::AssuredWorkloads::V1beta1::ListWorkloadsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
