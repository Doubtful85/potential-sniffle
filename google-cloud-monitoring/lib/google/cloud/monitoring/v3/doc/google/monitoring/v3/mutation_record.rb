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


module Google
  module Monitoring
    module V3
      # Describes a change made to a configuration.
      # @!attribute [rw] mutate_time
      #   @return [Google::Protobuf::Timestamp]
      #     When the change occurred.
      # @!attribute [rw] mutated_by
      #   @return [String]
      #     The email address of the user making the change.
      class MutationRecord; end
    end
  end
end