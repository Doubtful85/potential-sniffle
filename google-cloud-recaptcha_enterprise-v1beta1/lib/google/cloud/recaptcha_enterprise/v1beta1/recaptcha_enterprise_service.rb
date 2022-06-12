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

require "google/cloud/recaptcha_enterprise/v1beta1/version"

require "google/cloud/recaptcha_enterprise/v1beta1/recaptcha_enterprise_service/credentials"
require "google/cloud/recaptcha_enterprise/v1beta1/recaptcha_enterprise_service/paths"
require "google/cloud/recaptcha_enterprise/v1beta1/recaptcha_enterprise_service/client"

module Google
  module Cloud
    module RecaptchaEnterprise
      module V1beta1
        ##
        # Service to determine the likelihood an event is legitimate.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/recaptcha_enterprise/v1beta1/recaptcha_enterprise_service"
        #     client = ::Google::Cloud::RecaptchaEnterprise::V1beta1::RecaptchaEnterpriseService::Client.new
        #
        module RecaptchaEnterpriseService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "recaptcha_enterprise_service", "helpers.rb"
require "google/cloud/recaptcha_enterprise/v1beta1/recaptcha_enterprise_service/helpers" if ::File.file? helper_path
