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
    module Dialogflow
      module CX
        module V3
          module TransitionRouteGroups
            # Path helper methods for the TransitionRouteGroups API.
            module Paths
              ##
              # Create a fully-qualified Flow resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param flow [String]
              #
              # @return [::String]
              def flow_path project:, location:, agent:, flow:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}"
              end

              ##
              # Create a fully-qualified Intent resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/intents/{intent}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param intent [String]
              #
              # @return [::String]
              def intent_path project:, location:, agent:, intent:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/intents/#{intent}"
              end

              ##
              # Create a fully-qualified Page resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}/pages/{page}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param flow [String]
              # @param page [String]
              #
              # @return [::String]
              def page_path project:, location:, agent:, flow:, page:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                raise ::ArgumentError, "flow cannot contain /" if flow.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}/pages/#{page}"
              end

              ##
              # Create a fully-qualified TransitionRouteGroup resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}/transitionRouteGroups/{transition_route_group}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param flow [String]
              # @param transition_route_group [String]
              #
              # @return [::String]
              def transition_route_group_path project:, location:, agent:, flow:, transition_route_group:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                raise ::ArgumentError, "flow cannot contain /" if flow.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}/transitionRouteGroups/#{transition_route_group}"
              end

              ##
              # Create a fully-qualified Webhook resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/webhooks/{webhook}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param webhook [String]
              #
              # @return [::String]
              def webhook_path project:, location:, agent:, webhook:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/webhooks/#{webhook}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
