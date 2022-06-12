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
    module PubSub
      module V1
        module SchemaService
          # Path helper methods for the SchemaService API.
          module Paths
            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            ##
            # Create a fully-qualified Schema resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/schemas/{schema}`
            #
            # @param project [String]
            # @param schema [String]
            #
            # @return [::String]
            def schema_path project:, schema:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/schemas/#{schema}"
            end

            extend self
          end
        end
      end
    end
  end
end
