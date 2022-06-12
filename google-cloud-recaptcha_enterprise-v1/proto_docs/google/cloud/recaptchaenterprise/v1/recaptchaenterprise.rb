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
    module RecaptchaEnterprise
      module V1
        # The create assessment request message.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project in which the assessment will be created,
        #     in the format "projects/\\{project}".
        # @!attribute [rw] assessment
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::Assessment]
        #     Required. The assessment details.
        class CreateAssessmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message to annotate an Assessment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Assessment, in the format
        #     "projects/\\{project}/assessments/\\{assessment}".
        # @!attribute [rw] annotation
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest::Annotation]
        #     Optional. The annotation that will be assigned to the Event. This field can be left
        #     empty to provide reasons that apply to an event without concluding whether
        #     the event is legitimate or fraudulent.
        # @!attribute [rw] reasons
        #   @return [::Array<::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest::Reason>]
        #     Optional. Optional reasons for the annotation that will be assigned to the Event.
        class AnnotateAssessmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum that represents the types of annotations.
          module Annotation
            # Default unspecified type.
            ANNOTATION_UNSPECIFIED = 0

            # Provides information that the event turned out to be legitimate.
            LEGITIMATE = 1

            # Provides information that the event turned out to be fraudulent.
            FRAUDULENT = 2

            # Provides information that the event was related to a login event in which
            # the user typed the correct password. Deprecated, prefer indicating
            # CORRECT_PASSWORD through the reasons field instead.
            PASSWORD_CORRECT = 3

            # Provides information that the event was related to a login event in which
            # the user typed the incorrect password. Deprecated, prefer indicating
            # INCORRECT_PASSWORD through the reasons field instead.
            PASSWORD_INCORRECT = 4
          end

          # Enum that represents potential reasons for annotating an assessment.
          module Reason
            # Default unspecified reason.
            REASON_UNSPECIFIED = 0

            # Indicates a chargeback for fraud was issued for the transaction
            # associated with the assessment.
            CHARGEBACK = 1

            # Indicates the transaction associated with the assessment is suspected of
            # being fraudulent based on the payment method, billing details, shipping
            # address or other transaction information.
            PAYMENT_HEURISTICS = 2

            # Indicates that the user was served a 2FA challenge. An old assessment
            # with `ENUM_VALUES.INITIATED_TWO_FACTOR` reason that has not been
            # overwritten with `PASSED_TWO_FACTOR` is treated as an abandoned 2FA flow.
            # This is equivalent to `FAILED_TWO_FACTOR`.
            INITIATED_TWO_FACTOR = 7

            # Indicates that the user passed a 2FA challenge.
            PASSED_TWO_FACTOR = 3

            # Indicates that the user failed a 2FA challenge.
            FAILED_TWO_FACTOR = 4

            # Indicates the user provided the correct password.
            CORRECT_PASSWORD = 5

            # Indicates the user provided an incorrect password.
            INCORRECT_PASSWORD = 6
          end
        end

        # Empty response for AnnotateAssessment.
        class AnnotateAssessmentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A recaptcha assessment resource.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name for the Assessment in the format
        #     "projects/\\{project}/assessments/\\{assessment}".
        # @!attribute [rw] event
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::Event]
        #     The event being assessed.
        # @!attribute [r] risk_analysis
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::RiskAnalysis]
        #     Output only. The risk analysis result for the event being assessed.
        # @!attribute [r] token_properties
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::TokenProperties]
        #     Output only. Properties of the provided event token.
        class Assessment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] token
        #   @return [::String]
        #     Optional. The user response token provided by the reCAPTCHA client-side integration
        #     on your site.
        # @!attribute [rw] site_key
        #   @return [::String]
        #     Optional. The site key that was used to invoke reCAPTCHA on your site and generate
        #     the token.
        # @!attribute [rw] user_agent
        #   @return [::String]
        #     Optional. The user agent present in the request from the user's device related to
        #     this event.
        # @!attribute [rw] user_ip_address
        #   @return [::String]
        #     Optional. The IP address in the request from the user's device related to this event.
        # @!attribute [rw] expected_action
        #   @return [::String]
        #     Optional. The expected action for this type of event. This should be the same action
        #     provided at token generation time on client-side platforms already
        #     integrated with recaptcha enterprise.
        class Event
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Risk analysis result for an event.
        # @!attribute [rw] score
        #   @return [::Float]
        #     Legitimate event score from 0.0 to 1.0.
        #     (1.0 means very likely legitimate traffic while 0.0 means very likely
        #     non-legitimate traffic).
        # @!attribute [rw] reasons
        #   @return [::Array<::Google::Cloud::RecaptchaEnterprise::V1::RiskAnalysis::ClassificationReason>]
        #     Reasons contributing to the risk analysis verdict.
        class RiskAnalysis
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Reasons contributing to the risk analysis verdict.
          module ClassificationReason
            # Default unspecified type.
            CLASSIFICATION_REASON_UNSPECIFIED = 0

            # Interactions matched the behavior of an automated agent.
            AUTOMATION = 1

            # The event originated from an illegitimate environment.
            UNEXPECTED_ENVIRONMENT = 2

            # Traffic volume from the event source is higher than normal.
            TOO_MUCH_TRAFFIC = 3

            # Interactions with the site were significantly different than expected
            # patterns.
            UNEXPECTED_USAGE_PATTERNS = 4

            # Too little traffic has been received from this site thus far to generate
            # quality risk analysis.
            LOW_CONFIDENCE_SCORE = 5
          end
        end

        # @!attribute [rw] valid
        #   @return [::Boolean]
        #     Whether the provided user response token is valid. When valid = false, the
        #     reason could be specified in invalid_reason or it could also be due to
        #     a user failing to solve a challenge or a sitekey mismatch (i.e the sitekey
        #     used to generate the token was different than the one specified in the
        #     assessment).
        # @!attribute [rw] invalid_reason
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::TokenProperties::InvalidReason]
        #     Reason associated with the response when valid = false.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp corresponding to the generation of the token.
        # @!attribute [rw] hostname
        #   @return [::String]
        #     The hostname of the page on which the token was generated.
        # @!attribute [rw] action
        #   @return [::String]
        #     Action name provided at token generation.
        class TokenProperties
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum that represents the types of invalid token reasons.
          module InvalidReason
            # Default unspecified type.
            INVALID_REASON_UNSPECIFIED = 0

            # If the failure reason was not accounted for.
            UNKNOWN_INVALID_REASON = 1

            # The provided user verification token was malformed.
            MALFORMED = 2

            # The user verification token had expired.
            EXPIRED = 3

            # The user verification had already been seen.
            DUPE = 4

            # The user verification token was not present.
            MISSING = 5

            # A retriable error (such as network failure) occurred on the browser.
            # Could easily be simulated by an attacker.
            BROWSER_ERROR = 6
          end
        end

        # The create key request message.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project in which the key will be created, in the
        #     format "projects/\\{project}".
        # @!attribute [rw] key
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::Key]
        #     Required. Information to create a reCAPTCHA Enterprise key.
        class CreateKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The list keys request message.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project that contains the keys that will be
        #     listed, in the format "projects/\\{project}".
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of keys to return. Default is 10. Max limit is
        #     1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous.
        #     ListKeysRequest, if any.
        class ListKeysRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response to request to list keys in a project.
        # @!attribute [rw] keys
        #   @return [::Array<::Google::Cloud::RecaptchaEnterprise::V1::Key>]
        #     Key details.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results. It is set to empty if no keys
        #     remain in results.
        class ListKeysResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The get key request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the requested key, in the format
        #     "projects/\\{project}/keys/\\{key}".
        class GetKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The update key request message.
        # @!attribute [rw] key
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::Key]
        #     Required. The key to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The mask to control which fields of the key get updated. If the mask is not
        #     present, all fields will be updated.
        class UpdateKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The delete key request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the key to be deleted, in the format
        #     "projects/\\{project}/keys/\\{key}".
        class DeleteKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The migrate key request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the key to be migrated, in the format
        #     "projects/\\{project}/keys/\\{key}".
        class MigrateKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The get metrics request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the requested metrics, in the format
        #     "projects/\\{project}/keys/\\{key}/metrics".
        class GetMetricsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metrics for a single Key.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The name of the metrics, in the format
        #     "projects/\\{project}/keys/\\{key}/metrics".
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Inclusive start time aligned to a day (UTC).
        # @!attribute [rw] score_metrics
        #   @return [::Array<::Google::Cloud::RecaptchaEnterprise::V1::ScoreMetrics>]
        #     Metrics will be continuous and in order by dates, and in the granularity
        #     of day. All Key types should have score-based data.
        # @!attribute [rw] challenge_metrics
        #   @return [::Array<::Google::Cloud::RecaptchaEnterprise::V1::ChallengeMetrics>]
        #     Metrics will be continuous and in order by dates, and in the granularity
        #     of day. Only challenge-based keys (CHECKBOX, INVISIBLE), will have
        #     challenge-based data.
        class Metrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A key used to identify and configure applications (web and/or mobile) that
        # use reCAPTCHA Enterprise.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name for the Key in the format
        #     "projects/\\{project}/keys/\\{key}".
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Human-readable display name of this key. Modifiable by user.
        # @!attribute [rw] web_settings
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::WebKeySettings]
        #     Settings for keys that can be used by websites.
        # @!attribute [rw] android_settings
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::AndroidKeySettings]
        #     Settings for keys that can be used by Android apps.
        # @!attribute [rw] ios_settings
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::IOSKeySettings]
        #     Settings for keys that can be used by iOS apps.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     See <a href="https://cloud.google.com/recaptcha-enterprise/docs/labels">
        #     Creating and managing labels</a>.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp corresponding to the creation of this Key.
        # @!attribute [rw] testing_options
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::TestingOptions]
        #     Options for user acceptance testing.
        class Key
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Options for user acceptance testing.
        # @!attribute [rw] testing_score
        #   @return [::Float]
        #     All assessments for this Key will return this score. Must be between 0
        #     (likely not legitimate) and 1 (likely legitimate) inclusive.
        # @!attribute [rw] testing_challenge
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::TestingOptions::TestingChallenge]
        #     For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests
        #     for this site will return nocaptcha if NOCAPTCHA, or an unsolvable
        #     challenge if CHALLENGE.
        class TestingOptions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum that represents the challenge option for challenge-based (CHECKBOX,
          # INVISIBLE) testing keys.
          module TestingChallenge
            # Perform the normal risk analysis and return either nocaptcha or a
            # challenge depending on risk and trust factors.
            TESTING_CHALLENGE_UNSPECIFIED = 0

            # Challenge requests for this key will always return a nocaptcha, which
            # does not require a solution.
            NOCAPTCHA = 1

            # Challenge requests for this key will always return an unsolvable
            # challenge.
            UNSOLVABLE_CHALLENGE = 2
          end
        end

        # Settings specific to keys that can be used by websites.
        # @!attribute [rw] allow_all_domains
        #   @return [::Boolean]
        #     If set to true, it means allowed_domains will not be enforced.
        # @!attribute [rw] allowed_domains
        #   @return [::Array<::String>]
        #     Domains or subdomains of websites allowed to use the key. All subdomains
        #     of an allowed domain are automatically allowed. A valid domain requires a
        #     host and must not include any path, port, query or fragment.
        #     Examples: 'example.com' or 'subdomain.example.com'
        # @!attribute [rw] allow_amp_traffic
        #   @return [::Boolean]
        #     Required. Whether this key can be used on AMP (Accelerated Mobile Pages) websites.
        #     This can only be set for the SCORE integration type.
        # @!attribute [rw] integration_type
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::WebKeySettings::IntegrationType]
        #     Required. Describes how this key is integrated with the website.
        # @!attribute [rw] challenge_security_preference
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::WebKeySettings::ChallengeSecurityPreference]
        #     Settings for the frequency and difficulty at which this key triggers
        #     captcha challenges. This should only be specified for IntegrationTypes
        #     CHECKBOX and INVISIBLE.
        class WebKeySettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum that represents the integration types for web keys.
          module IntegrationType
            # Default type that indicates this enum hasn't been specified. This is not
            # a valid IntegrationType, one of the other types must be specified
            # instead.
            INTEGRATION_TYPE_UNSPECIFIED = 0

            # Only used to produce scores. It doesn't display the "I'm not a robot"
            # checkbox and never shows captcha challenges.
            SCORE = 1

            # Displays the "I'm not a robot" checkbox and may show captcha challenges
            # after it is checked.
            CHECKBOX = 2

            # Doesn't display the "I'm not a robot" checkbox, but may show captcha
            # challenges after risk analysis.
            INVISIBLE = 3
          end

          # Enum that represents the possible challenge frequency and difficulty
          # configurations for a web key.
          module ChallengeSecurityPreference
            # Default type that indicates this enum hasn't been specified.
            CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED = 0

            # Key tends to show fewer and easier challenges.
            USABILITY = 1

            # Key tends to show balanced (in amount and difficulty) challenges.
            BALANCE = 2

            # Key tends to show more and harder challenges.
            SECURITY = 3
          end
        end

        # Settings specific to keys that can be used by Android apps.
        # @!attribute [rw] allow_all_package_names
        #   @return [::Boolean]
        #     If set to true, it means allowed_package_names will not be enforced.
        # @!attribute [rw] allowed_package_names
        #   @return [::Array<::String>]
        #     Android package names of apps allowed to use the key.
        #     Example: 'com.companyname.appname'
        class AndroidKeySettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Settings specific to keys that can be used by iOS apps.
        # @!attribute [rw] allow_all_bundle_ids
        #   @return [::Boolean]
        #     If set to true, it means allowed_bundle_ids will not be enforced.
        # @!attribute [rw] allowed_bundle_ids
        #   @return [::Array<::String>]
        #     iOS bundle ids of apps allowed to use the key.
        #     Example: 'com.companyname.productname.appname'
        class IOSKeySettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Score distribution.
        # @!attribute [rw] score_buckets
        #   @return [::Google::Protobuf::Map{::Integer => ::Integer}]
        #     Map key is score value multiplied by 100. The scores are discrete values
        #     between [0, 1]. The maximum number of buckets is on order of a few dozen,
        #     but typically much lower (ie. 10).
        class ScoreDistribution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::Integer]
          # @!attribute [rw] value
          #   @return [::Integer]
          class ScoreBucketsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Metrics related to scoring.
        # @!attribute [rw] overall_metrics
        #   @return [::Google::Cloud::RecaptchaEnterprise::V1::ScoreDistribution]
        #     Aggregated score metrics for all traffic.
        # @!attribute [rw] action_metrics
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::RecaptchaEnterprise::V1::ScoreDistribution}]
        #     Action-based metrics. The map key is the action name which specified by the
        #     site owners at time of the "execute" client-side call.
        #     Populated only for SCORE keys.
        class ScoreMetrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::RecaptchaEnterprise::V1::ScoreDistribution]
          class ActionMetricsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Metrics related to challenges.
        # @!attribute [rw] pageload_count
        #   @return [::Integer]
        #     Count of reCAPTCHA checkboxes or badges rendered. This is mostly equivalent
        #     to a count of pageloads for pages that include reCAPTCHA.
        # @!attribute [rw] nocaptcha_count
        #   @return [::Integer]
        #     Count of nocaptchas (successful verification without a challenge) issued.
        # @!attribute [rw] failed_count
        #   @return [::Integer]
        #     Count of submitted challenge solutions that were incorrect or otherwise
        #     deemed suspicious such that a subsequent challenge was triggered.
        # @!attribute [rw] passed_count
        #   @return [::Integer]
        #     Count of nocaptchas (successful verification without a challenge) plus
        #     submitted challenge solutions that were correct and resulted in
        #     verification.
        class ChallengeMetrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
