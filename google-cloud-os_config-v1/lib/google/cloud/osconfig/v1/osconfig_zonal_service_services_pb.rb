# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/osconfig/v1/osconfig_zonal_service.proto for package 'Google.Cloud.OsConfig.V1'
# Original file comments:
# Copyright 2021 Google LLC
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
require 'google/cloud/osconfig/v1/osconfig_zonal_service_pb'

module Google
  module Cloud
    module OsConfig
      module V1
        module OsConfigZonalService
          # Zonal OS Config API
          #
          # The OS Config service is the server-side component that allows users to
          # manage package installations and patch jobs for Compute Engine VM instances.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.osconfig.v1.OsConfigZonalService'

            # Create an OS policy assignment.
            #
            # This method also creates the first revision of the OS policy assignment.
            #
            # This method returns a long running operation (LRO) that contains the
            # rollout details. The rollout can be cancelled by cancelling the LRO.
            #
            # For more information, see [Method:
            # projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
            rpc :CreateOSPolicyAssignment, ::Google::Cloud::OsConfig::V1::CreateOSPolicyAssignmentRequest, ::Google::Longrunning::Operation
            # Update an existing OS policy assignment.
            #
            # This method creates a new revision of the OS policy assignment.
            #
            # This method returns a long running operation (LRO) that contains the
            # rollout details. The rollout can be cancelled by cancelling the LRO.
            #
            # For more information, see [Method:
            # projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
            rpc :UpdateOSPolicyAssignment, ::Google::Cloud::OsConfig::V1::UpdateOSPolicyAssignmentRequest, ::Google::Longrunning::Operation
            # Retrieve an existing OS policy assignment.
            #
            # This method always returns the latest revision. In order to retrieve a
            # previous revision of the assignment, also provide the revision ID in the
            # `name` parameter.
            rpc :GetOSPolicyAssignment, ::Google::Cloud::OsConfig::V1::GetOSPolicyAssignmentRequest, ::Google::Cloud::OsConfig::V1::OSPolicyAssignment
            # List the OS policy assignments under the parent resource.
            #
            # For each OS policy assignment, the latest revision is returned.
            rpc :ListOSPolicyAssignments, ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentsRequest, ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentsResponse
            # List the OS policy assignment revisions for a given OS policy assignment.
            rpc :ListOSPolicyAssignmentRevisions, ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentRevisionsRequest, ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentRevisionsResponse
            # Delete the OS policy assignment.
            #
            # This method creates a new revision of the OS policy assignment.
            #
            # This method returns a long running operation (LRO) that contains the
            # rollout details. The rollout can be cancelled by cancelling the LRO.
            #
            # If the LRO completes and is not cancelled, all revisions associated with
            # the OS policy assignment are deleted.
            #
            # For more information, see [Method:
            # projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
            rpc :DeleteOSPolicyAssignment, ::Google::Cloud::OsConfig::V1::DeleteOSPolicyAssignmentRequest, ::Google::Longrunning::Operation
            # Get the OS policy asssignment report for the specified Compute Engine VM
            # instance.
            rpc :GetOSPolicyAssignmentReport, ::Google::Cloud::OsConfig::V1::GetOSPolicyAssignmentReportRequest, ::Google::Cloud::OsConfig::V1::OSPolicyAssignmentReport
            # List OS policy asssignment reports for all Compute Engine VM instances in
            # the specified zone.
            rpc :ListOSPolicyAssignmentReports, ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentReportsRequest, ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentReportsResponse
            # Get inventory data for the specified VM instance. If the VM has no
            # associated inventory, the message `NOT_FOUND` is returned.
            rpc :GetInventory, ::Google::Cloud::OsConfig::V1::GetInventoryRequest, ::Google::Cloud::OsConfig::V1::Inventory
            # List inventory data for all VM instances in the specified zone.
            rpc :ListInventories, ::Google::Cloud::OsConfig::V1::ListInventoriesRequest, ::Google::Cloud::OsConfig::V1::ListInventoriesResponse
            # Gets the vulnerability report for the specified VM instance. Only VMs with
            # inventory data have vulnerability reports associated with them.
            rpc :GetVulnerabilityReport, ::Google::Cloud::OsConfig::V1::GetVulnerabilityReportRequest, ::Google::Cloud::OsConfig::V1::VulnerabilityReport
            # List vulnerability reports for all VM instances in the specified zone.
            rpc :ListVulnerabilityReports, ::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsRequest, ::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
