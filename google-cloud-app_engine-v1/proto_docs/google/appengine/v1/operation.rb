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
    module AppEngine
      module V1
        # Metadata for the given {::Google::Longrunning::Operation google.longrunning.Operation}.
        # @!attribute [rw] method
        #   @return [::String]
        #     API method that initiated this operation. Example:
        #     `google.appengine.v1.Versions.CreateVersion`.
        # @!attribute [rw] insert_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time that this operation was created.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time that this operation completed.
        # @!attribute [rw] user
        #   @return [::String]
        #     User who requested this operation.
        # @!attribute [rw] target
        #   @return [::String]
        #     Name of the resource that this operation is acting on. Example:
        #     `apps/myapp/services/default`.
        # @!attribute [rw] ephemeral_message
        #   @return [::String]
        #     Ephemeral message that may change every time the operation is polled.
        # @!attribute [rw] warning
        #   @return [::Array<::String>]
        #     Durable messages that persist on every operation poll.
        # @!attribute [rw] create_version_metadata
        #   @return [::Google::Cloud::AppEngine::V1::CreateVersionMetadataV1]
        class OperationMetadataV1
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for the given {::Google::Longrunning::Operation google.longrunning.Operation} during a
        # {::Google::Cloud::AppEngine::V1::CreateVersionRequest google.appengine.v1.CreateVersionRequest}.
        # @!attribute [rw] cloud_build_id
        #   @return [::String]
        #     The Cloud Build ID if one was created as part of the version create.
        class CreateVersionMetadataV1
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
