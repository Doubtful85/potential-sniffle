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
    module AIPlatform
      module V1
        module Schema
          module TrainingJob
            module Definition
              # A TrainingJob that trains and uploads an AutoML Video ObjectTracking Model.
              # @!attribute [rw] inputs
              #   @return [::Google::Cloud::AIPlatform::V1::Schema::TrainingJob::Definition::AutoMlVideoObjectTrackingInputs]
              #     The input parameters of this TrainingJob.
              class AutoMlVideoObjectTracking
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # @!attribute [rw] model_type
              #   @return [::Google::Cloud::AIPlatform::V1::Schema::TrainingJob::Definition::AutoMlVideoObjectTrackingInputs::ModelType]
              class AutoMlVideoObjectTrackingInputs
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                module ModelType
                  # Should not be set.
                  MODEL_TYPE_UNSPECIFIED = 0

                  # A model best tailored to be used within Google Cloud, and which c annot
                  # be exported. Default.
                  CLOUD = 1

                  # A model that, in addition to being available within Google Cloud, can
                  # also be exported (see ModelService.ExportModel) as a TensorFlow or
                  # TensorFlow Lite model and used on a mobile or edge device afterwards.
                  MOBILE_VERSATILE_1 = 2

                  # A versatile model that is meant to be exported (see
                  # ModelService.ExportModel) and used on a Google Coral device.
                  MOBILE_CORAL_VERSATILE_1 = 3

                  # A model that trades off quality for low latency, to be exported (see
                  # ModelService.ExportModel) and used on a Google Coral device.
                  MOBILE_CORAL_LOW_LATENCY_1 = 4

                  # A versatile model that is meant to be exported (see
                  # ModelService.ExportModel) and used on an NVIDIA Jetson device.
                  MOBILE_JETSON_VERSATILE_1 = 5

                  # A model that trades off quality for low latency, to be exported (see
                  # ModelService.ExportModel) and used on an NVIDIA Jetson device.
                  MOBILE_JETSON_LOW_LATENCY_1 = 6
                end
              end
            end
          end
        end
      end
    end
  end
end
