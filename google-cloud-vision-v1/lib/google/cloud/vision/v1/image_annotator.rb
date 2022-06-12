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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/vision/v1/version"

require "google/cloud/vision/v1/image_annotator/credentials"
require "google/cloud/vision/v1/image_annotator/paths"
require "google/cloud/vision/v1/image_annotator/operations"
require "google/cloud/vision/v1/image_annotator/client"

module Google
  module Cloud
    module Vision
      module V1
        ##
        # Service that performs Google Cloud Vision API detection tasks over client
        # images, such as face, landmark, logo, label, and text detection. The
        # ImageAnnotator service returns detected entities from the images.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/vision/v1/image_annotator"
        #     client = ::Google::Cloud::Vision::V1::ImageAnnotator::Client.new
        #
        module ImageAnnotator
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "image_annotator", "helpers.rb"
require "google/cloud/vision/v1/image_annotator/helpers" if ::File.file? helper_path
