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
    module OsLogin
      module V1beta
        module OsLoginService
          # Path helper methods for the OsLoginService API.
          module Paths
            ##
            # Create a fully-qualified PosixAccount resource string.
            #
            # The resource will be in the following format:
            #
            # `users/{user}/projects/{project}`
            #
            # @param user [String]
            # @param project [String]
            #
            # @return [::String]
            def posix_account_path user:, project:
              raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"

              "users/#{user}/projects/#{project}"
            end

            ##
            # Create a fully-qualified SshPublicKey resource string.
            #
            # The resource will be in the following format:
            #
            # `users/{user}/sshPublicKeys/{fingerprint}`
            #
            # @param user [String]
            # @param fingerprint [String]
            #
            # @return [::String]
            def ssh_public_key_path user:, fingerprint:
              raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"

              "users/#{user}/sshPublicKeys/#{fingerprint}"
            end

            ##
            # Create a fully-qualified User resource string.
            #
            # The resource will be in the following format:
            #
            # `users/{user}`
            #
            # @param user [String]
            #
            # @return [::String]
            def user_path user:
              "users/#{user}"
            end

            extend self
          end
        end
      end
    end
  end
end
