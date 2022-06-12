# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/container/v1beta1/cluster_service.proto for package 'Google.Cloud.Container.V1beta1'
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
require 'google/container/v1beta1/cluster_service_pb'

module Google
  module Cloud
    module Container
      module V1beta1
        module ClusterManager
          # Google Kubernetes Engine Cluster Manager v1beta1
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.container.v1beta1.ClusterManager'

            # Lists all clusters owned by a project in either the specified zone or all
            # zones.
            rpc :ListClusters, ::Google::Cloud::Container::V1beta1::ListClustersRequest, ::Google::Cloud::Container::V1beta1::ListClustersResponse
            # Gets the details for a specific cluster.
            rpc :GetCluster, ::Google::Cloud::Container::V1beta1::GetClusterRequest, ::Google::Cloud::Container::V1beta1::Cluster
            # Creates a cluster, consisting of the specified number and type of Google
            # Compute Engine instances.
            #
            # By default, the cluster is created in the project's
            # [default
            # network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks).
            #
            # One firewall is added for the cluster. After cluster creation,
            # the Kubelet creates routes for each node to allow the containers
            # on that node to communicate with all other instances in the
            # cluster.
            #
            # Finally, an entry is added to the project's global metadata indicating
            # which CIDR range the cluster is using.
            rpc :CreateCluster, ::Google::Cloud::Container::V1beta1::CreateClusterRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Updates the settings for a specific cluster.
            rpc :UpdateCluster, ::Google::Cloud::Container::V1beta1::UpdateClusterRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Updates the version and/or image type of a specific node pool.
            rpc :UpdateNodePool, ::Google::Cloud::Container::V1beta1::UpdateNodePoolRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets the autoscaling settings of a specific node pool.
            rpc :SetNodePoolAutoscaling, ::Google::Cloud::Container::V1beta1::SetNodePoolAutoscalingRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets the logging service for a specific cluster.
            rpc :SetLoggingService, ::Google::Cloud::Container::V1beta1::SetLoggingServiceRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets the monitoring service for a specific cluster.
            rpc :SetMonitoringService, ::Google::Cloud::Container::V1beta1::SetMonitoringServiceRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets the addons for a specific cluster.
            rpc :SetAddonsConfig, ::Google::Cloud::Container::V1beta1::SetAddonsConfigRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets the locations for a specific cluster.
            # Deprecated. Use
            # [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters/update)
            # instead.
            rpc :SetLocations, ::Google::Cloud::Container::V1beta1::SetLocationsRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Updates the master for a specific cluster.
            rpc :UpdateMaster, ::Google::Cloud::Container::V1beta1::UpdateMasterRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets master auth materials. Currently supports changing the admin password
            # or a specific cluster, either via password generation or explicitly setting
            # the password.
            rpc :SetMasterAuth, ::Google::Cloud::Container::V1beta1::SetMasterAuthRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Deletes the cluster, including the Kubernetes endpoint and all worker
            # nodes.
            #
            # Firewalls and routes that were configured during cluster creation
            # are also deleted.
            #
            # Other Google Compute Engine resources that might be in use by the cluster,
            # such as load balancer resources, are not deleted if they weren't present
            # when the cluster was initially created.
            rpc :DeleteCluster, ::Google::Cloud::Container::V1beta1::DeleteClusterRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Lists all operations in a project in the specified zone or all zones.
            rpc :ListOperations, ::Google::Cloud::Container::V1beta1::ListOperationsRequest, ::Google::Cloud::Container::V1beta1::ListOperationsResponse
            # Gets the specified operation.
            rpc :GetOperation, ::Google::Cloud::Container::V1beta1::GetOperationRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Cancels the specified operation.
            rpc :CancelOperation, ::Google::Cloud::Container::V1beta1::CancelOperationRequest, ::Google::Protobuf::Empty
            # Returns configuration info about the Google Kubernetes Engine service.
            rpc :GetServerConfig, ::Google::Cloud::Container::V1beta1::GetServerConfigRequest, ::Google::Cloud::Container::V1beta1::ServerConfig
            # Lists the node pools for a cluster.
            rpc :ListNodePools, ::Google::Cloud::Container::V1beta1::ListNodePoolsRequest, ::Google::Cloud::Container::V1beta1::ListNodePoolsResponse
            # Gets the public component of the cluster signing keys in
            # JSON Web Key format.
            # This API is not yet intended for general use, and is not available for all
            # clusters.
            rpc :GetJSONWebKeys, ::Google::Cloud::Container::V1beta1::GetJSONWebKeysRequest, ::Google::Cloud::Container::V1beta1::GetJSONWebKeysResponse
            # Retrieves the requested node pool.
            rpc :GetNodePool, ::Google::Cloud::Container::V1beta1::GetNodePoolRequest, ::Google::Cloud::Container::V1beta1::NodePool
            # Creates a node pool for a cluster.
            rpc :CreateNodePool, ::Google::Cloud::Container::V1beta1::CreateNodePoolRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Deletes a node pool from a cluster.
            rpc :DeleteNodePool, ::Google::Cloud::Container::V1beta1::DeleteNodePoolRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Rolls back a previously Aborted or Failed NodePool upgrade.
            # This makes no changes if the last upgrade successfully completed.
            rpc :RollbackNodePoolUpgrade, ::Google::Cloud::Container::V1beta1::RollbackNodePoolUpgradeRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets the NodeManagement options for a node pool.
            rpc :SetNodePoolManagement, ::Google::Cloud::Container::V1beta1::SetNodePoolManagementRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets labels on a cluster.
            rpc :SetLabels, ::Google::Cloud::Container::V1beta1::SetLabelsRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Enables or disables the ABAC authorization mechanism on a cluster.
            rpc :SetLegacyAbac, ::Google::Cloud::Container::V1beta1::SetLegacyAbacRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Starts master IP rotation.
            rpc :StartIPRotation, ::Google::Cloud::Container::V1beta1::StartIPRotationRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Completes master IP rotation.
            rpc :CompleteIPRotation, ::Google::Cloud::Container::V1beta1::CompleteIPRotationRequest, ::Google::Cloud::Container::V1beta1::Operation
            # SetNodePoolSizeRequest sets the size of a node pool. The new size will be
            # used for all replicas, including future replicas created by modifying
            # [NodePool.locations][google.container.v1beta1.NodePool.locations].
            rpc :SetNodePoolSize, ::Google::Cloud::Container::V1beta1::SetNodePoolSizeRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Enables or disables Network Policy for a cluster.
            rpc :SetNetworkPolicy, ::Google::Cloud::Container::V1beta1::SetNetworkPolicyRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Sets the maintenance policy for a cluster.
            rpc :SetMaintenancePolicy, ::Google::Cloud::Container::V1beta1::SetMaintenancePolicyRequest, ::Google::Cloud::Container::V1beta1::Operation
            # Lists subnetworks that can be used for creating clusters in a project.
            rpc :ListUsableSubnetworks, ::Google::Cloud::Container::V1beta1::ListUsableSubnetworksRequest, ::Google::Cloud::Container::V1beta1::ListUsableSubnetworksResponse
            # Fetches locations that offer Google Kubernetes Engine.
            rpc :ListLocations, ::Google::Cloud::Container::V1beta1::ListLocationsRequest, ::Google::Cloud::Container::V1beta1::ListLocationsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
