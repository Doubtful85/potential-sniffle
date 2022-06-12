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
    module Shell
      module V1
        # A Cloud Shell environment, which is defined as the combination of a Docker
        # image specifying what is installed on the environment and a home directory
        # containing the user's data that will remain across sessions. Each user has
        # at least an environment with the ID "default".
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Full name of this resource, in the format
        #     `users/{owner_email}/environments/{environment_id}`. `{owner_email}` is the
        #     email address of the user to whom this environment belongs, and
        #     `{environment_id}` is the identifier of this environment. For example,
        #     `users/someone@example.com/environments/default`.
        # @!attribute [r] id
        #   @return [::String]
        #     Output only. The environment's identifier, unique among the user's
        #     environments.
        # @!attribute [rw] docker_image
        #   @return [::String]
        #     Required. Immutable. Full path to the Docker image used to run this environment, e.g.
        #     "gcr.io/dev-con/cloud-devshell:latest".
        # @!attribute [r] state
        #   @return [::Google::Cloud::Shell::V1::Environment::State]
        #     Output only. Current execution state of this environment.
        # @!attribute [r] web_host
        #   @return [::String]
        #     Output only. Host to which clients can connect to initiate HTTPS or WSS
        #     connections with the environment.
        # @!attribute [r] ssh_username
        #   @return [::String]
        #     Output only. Username that clients should use when initiating SSH sessions
        #     with the environment.
        # @!attribute [r] ssh_host
        #   @return [::String]
        #     Output only. Host to which clients can connect to initiate SSH sessions
        #     with the environment.
        # @!attribute [r] ssh_port
        #   @return [::Integer]
        #     Output only. Port to which clients can connect to initiate SSH sessions
        #     with the environment.
        # @!attribute [r] public_keys
        #   @return [::Array<::String>]
        #     Output only. Public keys associated with the environment. Clients can
        #     connect to this environment via SSH only if they possess a private key
        #     corresponding to at least one of these public keys. Keys can be added to or
        #     removed from the environment using the AddPublicKey and RemovePublicKey
        #     methods.
        class Environment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Possible execution states for an environment.
          module State
            # The environment's states is unknown.
            STATE_UNSPECIFIED = 0

            # The environment is not running and can't be connected to. Starting the
            # environment will transition it to the PENDING state.
            SUSPENDED = 1

            # The environment is being started but is not yet ready to accept
            # connections.
            PENDING = 2

            # The environment is running and ready to accept connections. It will
            # automatically transition back to DISABLED after a period of inactivity or
            # if another environment is started.
            RUNNING = 3

            # The environment is being deleted and can't be connected to.
            DELETING = 4
          end
        end

        # Request message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#get_environment GetEnvironment}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the requested resource, for example `users/me/environments/default`
        #     or `users/someone@example.com/environments/default`.
        class GetEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message included in the metadata field of operations returned from
        # [CreateEnvironment][google.cloud.shell.v1.CloudShellService.CreateEnvironment].
        class CreateEnvironmentMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message included in the metadata field of operations returned from
        # [DeleteEnvironment][google.cloud.shell.v1.CloudShellService.DeleteEnvironment].
        class DeleteEnvironmentMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#start_environment StartEnvironment}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource that should be started, for example
        #     `users/me/environments/default` or
        #     `users/someone@example.com/environments/default`.
        # @!attribute [rw] access_token
        #   @return [::String]
        #     The initial access token passed to the environment. If this is present and
        #     valid, the environment will be pre-authenticated with gcloud so that the
        #     user can run gcloud commands in Cloud Shell without having to log in. This
        #     code can be updated later by calling AuthorizeEnvironment.
        # @!attribute [rw] public_keys
        #   @return [::Array<::String>]
        #     Public keys that should be added to the environment before it is started.
        class StartEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#authorize_environment AuthorizeEnvironment}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource that should receive the credentials, for example
        #     `users/me/environments/default` or
        #     `users/someone@example.com/environments/default`.
        # @!attribute [rw] access_token
        #   @return [::String]
        #     The OAuth access token that should be sent to the environment.
        # @!attribute [rw] id_token
        #   @return [::String]
        #     The OAuth ID token that should be sent to the environment.
        # @!attribute [rw] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the credentials expire. If not set, defaults to one hour from
        #     when the server received the request.
        class AuthorizeEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#authorize_environment AuthorizeEnvironment}.
        class AuthorizeEnvironmentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message included in the metadata field of operations returned from
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#authorize_environment AuthorizeEnvironment}.
        class AuthorizeEnvironmentMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message included in the metadata field of operations returned from
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#start_environment StartEnvironment}.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Shell::V1::StartEnvironmentMetadata::State]
        #     Current state of the environment being started.
        class StartEnvironmentMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Possible states an environment might transition between during startup.
          # These states are not normally actionable by clients, but may be used to
          # show a progress message to the user. An environment won't necessarily go
          # through all of these states when starting. More states are likely to be
          # added in the future.
          module State
            # The environment's start state is unknown.
            STATE_UNSPECIFIED = 0

            # The environment is in the process of being started, but no additional
            # details are available.
            STARTING = 1

            # Startup is waiting for the user's disk to be unarchived. This can happen
            # when the user returns to Cloud Shell after not having used it for a
            # while, and suggests that startup will take longer than normal.
            UNARCHIVING_DISK = 2

            # Startup is waiting for compute resources to be assigned to the
            # environment. This should normally happen very quickly, but an environment
            # might stay in this state for an extended period of time if the system is
            # experiencing heavy load.
            AWAITING_COMPUTE_RESOURCES = 4

            # Startup has completed. If the start operation was successful, the user
            # should be able to establish an SSH connection to their environment.
            # Otherwise, the operation will contain details of the failure.
            FINISHED = 3
          end
        end

        # Message included in the response field of operations returned from
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#start_environment StartEnvironment}
        # once the operation is complete.
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Shell::V1::Environment]
        #     Environment that was started.
        class StartEnvironmentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#add_public_key AddPublicKey}.
        # @!attribute [rw] environment
        #   @return [::String]
        #     Environment this key should be added to, e.g.
        #     `users/me/environments/default`.
        # @!attribute [rw] key
        #   @return [::String]
        #     Key that should be added to the environment. Supported formats are
        #     `ssh-dss` (see RFC4253), `ssh-rsa` (see RFC4253), `ecdsa-sha2-nistp256`
        #     (see RFC5656), `ecdsa-sha2-nistp384` (see RFC5656) and
        #     `ecdsa-sha2-nistp521` (see RFC5656). It should be structured as
        #     &lt;format&gt; &lt;content&gt;, where &lt;content&gt; part is encoded with
        #     Base64.
        class AddPublicKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#add_public_key AddPublicKey}.
        # @!attribute [rw] key
        #   @return [::String]
        #     Key that was added to the environment.
        class AddPublicKeyResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message included in the metadata field of operations returned from
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#add_public_key AddPublicKey}.
        class AddPublicKeyMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#remove_public_key RemovePublicKey}.
        # @!attribute [rw] environment
        #   @return [::String]
        #     Environment this key should be removed from, e.g.
        #     `users/me/environments/default`.
        # @!attribute [rw] key
        #   @return [::String]
        #     Key that should be removed from the environment.
        class RemovePublicKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#remove_public_key RemovePublicKey}.
        class RemovePublicKeyResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message included in the metadata field of operations returned from
        # {::Google::Cloud::Shell::V1::CloudShellService::Client#remove_public_key RemovePublicKey}.
        class RemovePublicKeyMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cloud-shell specific information that will be included as details in failure
        # responses.
        # @!attribute [rw] code
        #   @return [::Google::Cloud::Shell::V1::CloudShellErrorDetails::CloudShellErrorCode]
        #     Code indicating the specific error the occurred.
        class CloudShellErrorDetails
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Set of possible errors returned from API calls.
          module CloudShellErrorCode
            # An unknown error occurred.
            CLOUD_SHELL_ERROR_CODE_UNSPECIFIED = 0

            # The image used by the Cloud Shell environment either does not exist or
            # the user does not have access to it.
            IMAGE_UNAVAILABLE = 1

            # Cloud Shell has been disabled by an administrator for the user making the
            # request.
            CLOUD_SHELL_DISABLED = 2

            # Cloud Shell has been permanently disabled due to a Terms of Service
            # violation by the user.
            TOS_VIOLATION = 4

            # The user has exhausted their weekly Cloud Shell quota, and Cloud Shell
            # will be disabled until the quota resets.
            QUOTA_EXCEEDED = 5
          end
        end
      end
    end
  end
end
