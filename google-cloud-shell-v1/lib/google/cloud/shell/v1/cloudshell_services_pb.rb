# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/shell/v1/cloudshell.proto for package 'google.cloud.shell.v1'
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
require 'google/cloud/shell/v1/cloudshell_pb'

module Google
  module Cloud
    module Shell
      module V1
        module CloudShellService
          # API for interacting with Google Cloud Shell. Each user of Cloud Shell has at
          # least one environment, which has the ID "default". Environment consists of a
          # Docker image defining what is installed on the environment and a home
          # directory containing the user's data that will remain across sessions.
          # Clients use this API to start and fetch information about their environment,
          # which can then be used to connect to that environment via a separate SSH
          # client.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.shell.v1.CloudShellService'

            # Gets an environment. Returns NOT_FOUND if the environment does not exist.
            rpc :GetEnvironment, ::Google::Cloud::Shell::V1::GetEnvironmentRequest, ::Google::Cloud::Shell::V1::Environment
            # Starts an existing environment, allowing clients to connect to it. The
            # returned operation will contain an instance of StartEnvironmentMetadata in
            # its metadata field. Users can wait for the environment to start by polling
            # this operation via GetOperation. Once the environment has finished starting
            # and is ready to accept connections, the operation will contain a
            # StartEnvironmentResponse in its response field.
            rpc :StartEnvironment, ::Google::Cloud::Shell::V1::StartEnvironmentRequest, ::Google::Longrunning::Operation
            # Sends OAuth credentials to a running environment on behalf of a user. When
            # this completes, the environment will be authorized to run various Google
            # Cloud command line tools without requiring the user to manually
            # authenticate.
            rpc :AuthorizeEnvironment, ::Google::Cloud::Shell::V1::AuthorizeEnvironmentRequest, ::Google::Longrunning::Operation
            # Adds a public SSH key to an environment, allowing clients with the
            # corresponding private key to connect to that environment via SSH. If a key
            # with the same content already exists, this will error with ALREADY_EXISTS.
            rpc :AddPublicKey, ::Google::Cloud::Shell::V1::AddPublicKeyRequest, ::Google::Longrunning::Operation
            # Removes a public SSH key from an environment. Clients will no longer be
            # able to connect to the environment using the corresponding private key.
            # If a key with the same content is not present, this will error with
            # NOT_FOUND.
            rpc :RemovePublicKey, ::Google::Cloud::Shell::V1::RemovePublicKeyRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
