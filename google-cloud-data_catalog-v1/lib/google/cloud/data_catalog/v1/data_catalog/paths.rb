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
    module DataCatalog
      module V1
        module DataCatalog
          # Path helper methods for the DataCatalog API.
          module Paths
            ##
            # Create a fully-qualified Entry resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/entryGroups/{entry_group}/entries/{entry}`
            #
            # @param project [String]
            # @param location [String]
            # @param entry_group [String]
            # @param entry [String]
            #
            # @return [::String]
            def entry_path project:, location:, entry_group:, entry:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "entry_group cannot contain /" if entry_group.to_s.include? "/"

              "projects/#{project}/locations/#{location}/entryGroups/#{entry_group}/entries/#{entry}"
            end

            ##
            # Create a fully-qualified EntryGroup resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/entryGroups/{entry_group}`
            #
            # @param project [String]
            # @param location [String]
            # @param entry_group [String]
            #
            # @return [::String]
            def entry_group_path project:, location:, entry_group:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/entryGroups/#{entry_group}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Tag resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/entryGroups/{entry_group}/entries/{entry}/tags/{tag}`
            #
            # @param project [String]
            # @param location [String]
            # @param entry_group [String]
            # @param entry [String]
            # @param tag [String]
            #
            # @return [::String]
            def tag_path project:, location:, entry_group:, entry:, tag:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "entry_group cannot contain /" if entry_group.to_s.include? "/"
              raise ::ArgumentError, "entry cannot contain /" if entry.to_s.include? "/"

              "projects/#{project}/locations/#{location}/entryGroups/#{entry_group}/entries/#{entry}/tags/#{tag}"
            end

            ##
            # Create a fully-qualified TagTemplate resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/tagTemplates/{tag_template}`
            #
            # @param project [String]
            # @param location [String]
            # @param tag_template [String]
            #
            # @return [::String]
            def tag_template_path project:, location:, tag_template:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/tagTemplates/#{tag_template}"
            end

            ##
            # Create a fully-qualified TagTemplateField resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/tagTemplates/{tag_template}/fields/{field}`
            #
            # @param project [String]
            # @param location [String]
            # @param tag_template [String]
            # @param field [String]
            #
            # @return [::String]
            def tag_template_field_path project:, location:, tag_template:, field:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "tag_template cannot contain /" if tag_template.to_s.include? "/"

              "projects/#{project}/locations/#{location}/tagTemplates/#{tag_template}/fields/#{field}"
            end

            extend self
          end
        end
      end
    end
  end
end
