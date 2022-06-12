# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/secrets/v1beta1/service.proto for package 'Google.Cloud.SecretManager.V1beta1'
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
require 'google/cloud/secrets/v1beta1/service_pb'

module Google
  module Cloud
    module SecretManager
      module V1beta1
        module SecretManagerService
          # Secret Manager Service
          #
          # Manages secrets and operations using those secrets. Implements a REST
          # model with the following objects:
          #
          # * [Secret][google.cloud.secrets.v1beta1.Secret]
          # * [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion]
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.secrets.v1beta1.SecretManagerService'

            # Lists [Secrets][google.cloud.secrets.v1beta1.Secret].
            rpc :ListSecrets, ::Google::Cloud::SecretManager::V1beta1::ListSecretsRequest, ::Google::Cloud::SecretManager::V1beta1::ListSecretsResponse
            # Creates a new [Secret][google.cloud.secrets.v1beta1.Secret] containing no [SecretVersions][google.cloud.secrets.v1beta1.SecretVersion].
            rpc :CreateSecret, ::Google::Cloud::SecretManager::V1beta1::CreateSecretRequest, ::Google::Cloud::SecretManager::V1beta1::Secret
            # Creates a new [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] containing secret data and attaches
            # it to an existing [Secret][google.cloud.secrets.v1beta1.Secret].
            rpc :AddSecretVersion, ::Google::Cloud::SecretManager::V1beta1::AddSecretVersionRequest, ::Google::Cloud::SecretManager::V1beta1::SecretVersion
            # Gets metadata for a given [Secret][google.cloud.secrets.v1beta1.Secret].
            rpc :GetSecret, ::Google::Cloud::SecretManager::V1beta1::GetSecretRequest, ::Google::Cloud::SecretManager::V1beta1::Secret
            # Updates metadata of an existing [Secret][google.cloud.secrets.v1beta1.Secret].
            rpc :UpdateSecret, ::Google::Cloud::SecretManager::V1beta1::UpdateSecretRequest, ::Google::Cloud::SecretManager::V1beta1::Secret
            # Deletes a [Secret][google.cloud.secrets.v1beta1.Secret].
            rpc :DeleteSecret, ::Google::Cloud::SecretManager::V1beta1::DeleteSecretRequest, ::Google::Protobuf::Empty
            # Lists [SecretVersions][google.cloud.secrets.v1beta1.SecretVersion]. This call does not return secret
            # data.
            rpc :ListSecretVersions, ::Google::Cloud::SecretManager::V1beta1::ListSecretVersionsRequest, ::Google::Cloud::SecretManager::V1beta1::ListSecretVersionsResponse
            # Gets metadata for a [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
            #
            # `projects/*/secrets/*/versions/latest` is an alias to the `latest`
            # [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
            rpc :GetSecretVersion, ::Google::Cloud::SecretManager::V1beta1::GetSecretVersionRequest, ::Google::Cloud::SecretManager::V1beta1::SecretVersion
            # Accesses a [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion]. This call returns the secret data.
            #
            # `projects/*/secrets/*/versions/latest` is an alias to the `latest`
            # [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
            rpc :AccessSecretVersion, ::Google::Cloud::SecretManager::V1beta1::AccessSecretVersionRequest, ::Google::Cloud::SecretManager::V1beta1::AccessSecretVersionResponse
            # Disables a [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
            #
            # Sets the [state][google.cloud.secrets.v1beta1.SecretVersion.state] of the [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] to
            # [DISABLED][google.cloud.secrets.v1beta1.SecretVersion.State.DISABLED].
            rpc :DisableSecretVersion, ::Google::Cloud::SecretManager::V1beta1::DisableSecretVersionRequest, ::Google::Cloud::SecretManager::V1beta1::SecretVersion
            # Enables a [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
            #
            # Sets the [state][google.cloud.secrets.v1beta1.SecretVersion.state] of the [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] to
            # [ENABLED][google.cloud.secrets.v1beta1.SecretVersion.State.ENABLED].
            rpc :EnableSecretVersion, ::Google::Cloud::SecretManager::V1beta1::EnableSecretVersionRequest, ::Google::Cloud::SecretManager::V1beta1::SecretVersion
            # Destroys a [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
            #
            # Sets the [state][google.cloud.secrets.v1beta1.SecretVersion.state] of the [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] to
            # [DESTROYED][google.cloud.secrets.v1beta1.SecretVersion.State.DESTROYED] and irrevocably destroys the
            # secret data.
            rpc :DestroySecretVersion, ::Google::Cloud::SecretManager::V1beta1::DestroySecretVersionRequest, ::Google::Cloud::SecretManager::V1beta1::SecretVersion
            # Sets the access control policy on the specified secret. Replaces any
            # existing policy.
            #
            # Permissions on [SecretVersions][google.cloud.secrets.v1beta1.SecretVersion] are enforced according
            # to the policy set on the associated [Secret][google.cloud.secrets.v1beta1.Secret].
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Gets the access control policy for a secret.
            # Returns empty policy if the secret exists and does not have a policy set.
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Returns permissions that a caller has for the specified secret.
            # If the secret does not exist, this call returns an empty set of
            # permissions, not a NOT_FOUND error.
            #
            # Note: This operation is designed to be used for building permission-aware
            # UIs and command-line tools, not for authorization checking. This operation
            # may "fail open" without warning.
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
