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
    module Dataproc
      module V1
        # The status of the operation.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataproc::V1::ClusterOperationStatus::State]
        #     Output only. A message containing the operation state.
        # @!attribute [r] inner_state
        #   @return [::String]
        #     Output only. A message containing the detailed operation state.
        # @!attribute [r] details
        #   @return [::String]
        #     Output only. A message containing any operation metadata details.
        # @!attribute [r] state_start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time this state was entered.
        class ClusterOperationStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The operation state.
          module State
            # Unused.
            UNKNOWN = 0

            # The operation has been created.
            PENDING = 1

            # The operation is running.
            RUNNING = 2

            # The operation is done; either cancelled or completed.
            DONE = 3
          end
        end

        # Metadata describing the operation.
        # @!attribute [r] cluster_name
        #   @return [::String]
        #     Output only. Name of the cluster for the operation.
        # @!attribute [r] cluster_uuid
        #   @return [::String]
        #     Output only. Cluster UUID for the operation.
        # @!attribute [r] status
        #   @return [::Google::Cloud::Dataproc::V1::ClusterOperationStatus]
        #     Output only. Current operation status.
        # @!attribute [r] status_history
        #   @return [::Array<::Google::Cloud::Dataproc::V1::ClusterOperationStatus>]
        #     Output only. The previous operation status.
        # @!attribute [r] operation_type
        #   @return [::String]
        #     Output only. The operation type.
        # @!attribute [r] description
        #   @return [::String]
        #     Output only. Short description of operation.
        # @!attribute [r] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. Labels associated with the operation
        # @!attribute [r] warnings
        #   @return [::Array<::String>]
        #     Output only. Errors encountered during operation execution.
        class ClusterOperationMetadata
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
