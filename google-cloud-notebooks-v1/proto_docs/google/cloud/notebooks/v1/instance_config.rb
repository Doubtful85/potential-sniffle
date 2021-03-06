# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module Notebooks
      module V1
        # Notebook instance configurations that can be updated.
        # @!attribute [rw] notebook_upgrade_schedule
        #   @return [::String]
        #     Cron expression in UTC timezone, used to schedule instance auto upgrade.
        #     Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
        # @!attribute [rw] enable_health_monitoring
        #   @return [::Boolean]
        #     Verifies core internal services are running.
        class InstanceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
