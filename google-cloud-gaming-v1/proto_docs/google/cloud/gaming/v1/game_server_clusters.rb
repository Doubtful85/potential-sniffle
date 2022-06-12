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
    module Gaming
      module V1
        # Request message for GameServerClustersService.ListGameServerClusters.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name. Uses the form:
        #     "projects/\\{project}/locations/\\{location}/realms/\\{realm}".
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return.  If unspecified, the server
        #     will pick an appropriate default. The server may return fewer items than
        #     requested. A caller should only rely on response's
        #     {::Google::Cloud::Gaming::V1::ListGameServerClustersResponse#next_page_token next_page_token} to
        #     determine if there are more GameServerClusters left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous List request, if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter to apply to list results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Specifies the ordering of results following syntax at
        #     https://cloud.google.com/apis/design/design_patterns#sorting_order.
        class ListGameServerClustersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for GameServerClustersService.ListGameServerClusters.
        # @!attribute [rw] game_server_clusters
        #   @return [::Array<::Google::Cloud::Gaming::V1::GameServerCluster>]
        #     The list of game server clusters.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     List of locations that could not be reached.
        class ListGameServerClustersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerClustersService.GetGameServerCluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the game server cluster to retrieve. Uses the form:
        #
        #     `projects/{project}/locations/{location}/realms/{realm-id}/gameServerClusters/{cluster}`.
        class GetGameServerClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerClustersService.CreateGameServerCluster.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name. Uses the form:
        #     `projects/{project}/locations/{location}/realms/{realm-id}`.
        # @!attribute [rw] game_server_cluster_id
        #   @return [::String]
        #     Required. The ID of the game server cluster resource to be created.
        # @!attribute [rw] game_server_cluster
        #   @return [::Google::Cloud::Gaming::V1::GameServerCluster]
        #     Required. The game server cluster resource to be created.
        class CreateGameServerClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerClustersService.PreviewCreateGameServerCluster.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name. Uses the form:
        #     `projects/{project}/locations/{location}/realms/{realm}`.
        # @!attribute [rw] game_server_cluster_id
        #   @return [::String]
        #     Required. The ID of the game server cluster resource to be created.
        # @!attribute [rw] game_server_cluster
        #   @return [::Google::Cloud::Gaming::V1::GameServerCluster]
        #     Required. The game server cluster resource to be created.
        # @!attribute [rw] preview_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The target timestamp to compute the preview.
        class PreviewCreateGameServerClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # GameServerClustersService.PreviewCreateGameServerCluster.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The ETag of the game server cluster.
        # @!attribute [rw] target_state
        #   @return [::Google::Cloud::Gaming::V1::TargetState]
        #     The target state.
        class PreviewCreateGameServerClusterResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerClustersService.DeleteGameServerCluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the game server cluster to delete. Uses the form:
        #     `projects/{project}/locations/{location}/gameServerClusters/{cluster}`.
        class DeleteGameServerClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerClustersService.PreviewDeleteGameServerCluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the game server cluster to delete. Uses the form:
        #     `projects/{project}/locations/{location}/gameServerClusters/{cluster}`.
        # @!attribute [rw] preview_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The target timestamp to compute the preview.
        class PreviewDeleteGameServerClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # GameServerClustersService.PreviewDeleteGameServerCluster.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The ETag of the game server cluster.
        # @!attribute [rw] target_state
        #   @return [::Google::Cloud::Gaming::V1::TargetState]
        #     The target state.
        class PreviewDeleteGameServerClusterResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerClustersService.UpdateGameServerCluster.
        # @!attribute [rw] game_server_cluster
        #   @return [::Google::Cloud::Gaming::V1::GameServerCluster]
        #     Required. The game server cluster to be updated.
        #     Only fields specified in update_mask are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. For the `FieldMask` definition, see
        #
        #     https:
        #     //developers.google.com/protocol-buffers
        #     // /docs/reference/google.protobuf#fieldmask
        class UpdateGameServerClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GameServerClustersService.UpdateGameServerCluster.
        # @!attribute [rw] game_server_cluster
        #   @return [::Google::Cloud::Gaming::V1::GameServerCluster]
        #     Required. The game server cluster to be updated.
        #     Only fields specified in update_mask are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. For the `FieldMask` definition, see
        #
        #     https:
        #     //developers.google.com/protocol-buffers
        #     // /docs/reference/google.protobuf#fieldmask
        # @!attribute [rw] preview_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The target timestamp to compute the preview.
        class PreviewUpdateGameServerClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for GameServerClustersService.PreviewUpdateGameServerCluster
        # @!attribute [rw] etag
        #   @return [::String]
        #     The ETag of the game server cluster.
        # @!attribute [rw] target_state
        #   @return [::Google::Cloud::Gaming::V1::TargetState]
        #     The target state.
        class PreviewUpdateGameServerClusterResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The game server cluster connection information.
        # @!attribute [rw] gke_cluster_reference
        #   @return [::Google::Cloud::Gaming::V1::GkeClusterReference]
        #     Reference to the GKE cluster where the game servers are installed.
        # @!attribute [rw] namespace
        #   @return [::String]
        #     Namespace designated on the game server cluster where the Agones game
        #     server instances will be created. Existence of the namespace will be
        #     validated during creation.
        class GameServerClusterConnectionInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A reference to a GKE cluster.
        # @!attribute [rw] cluster
        #   @return [::String]
        #     The full or partial name of a GKE cluster, using one of the following
        #     forms:
        #      * `projects/{project}/locations/{location}/clusters/{cluster}`
        #      * `locations/{location}/clusters/{cluster}`
        #      * `{cluster}`
        #     If project and location are not specified, the project and location of the
        #     GameServerCluster resource are used to generate the full name of the
        #     GKE cluster.
        class GkeClusterReference
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A game server cluster resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the game server cluster. Uses the form:
        #
        #     `projects/{project}/locations/{location}/realms/{realm}/gameServerClusters/{cluster}`.
        #     For example,
        #
        #     `projects/my-project/locations/{location}/realms/zanzibar/gameServerClusters/my-onprem-cluster`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels associated with this game server cluster. Each label is a
        #     key-value pair.
        # @!attribute [rw] connection_info
        #   @return [::Google::Cloud::Gaming::V1::GameServerClusterConnectionInfo]
        #     The game server cluster connection information. This information is used to
        #     manage game server clusters.
        # @!attribute [rw] etag
        #   @return [::String]
        #     ETag of the resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Human readable description of the cluster.
        class GameServerCluster
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
      end
    end
  end
end
