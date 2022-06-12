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
    module Speech
      module V1p1beta1
        # Message sent by the client for the `CreatePhraseSet` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource where this phrase set will be created.
        #     Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/phraseSets
        # @!attribute [rw] phrase_set_id
        #   @return [::String]
        #     Required. The ID to use for the phrase set, which will become the final
        #     component of the phrase set's resource name.
        #
        #     This value should be 4-63 characters, and valid characters
        #     are /[a-z][0-9]-/.
        # @!attribute [rw] phrase_set
        #   @return [::Google::Cloud::Speech::V1p1beta1::PhraseSet]
        #     Required. The phrase set to create.
        class CreatePhraseSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `UpdatePhraseSet` method.
        # @!attribute [rw] phrase_set
        #   @return [::Google::Cloud::Speech::V1p1beta1::PhraseSet]
        #     Required. The phrase set to update.
        #
        #     The phrase set's `name` field is used to identify the set to be
        #     updated. Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/phraseSets/\\{phrase_set}
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        class UpdatePhraseSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `GetPhraseSet` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the phrase set to retrieve.
        #     Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/phraseSets/\\{phrase_set}
        class GetPhraseSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `ListPhraseSet` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent, which owns this collection of phrase set.
        #     Format:
        #     projects/\\{project}/locations/\\{location}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of phrase sets to return. The service may return
        #     fewer than this value. If unspecified, at most 50 phrase sets will be
        #     returned. The maximum value is 1000; values above 1000 will be coerced to
        #     1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous `ListPhraseSet` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListPhraseSet` must
        #     match the call that provided the page token.
        class ListPhraseSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message returned to the client by the `ListPhraseSet` method.
        # @!attribute [rw] phrase_sets
        #   @return [::Array<::Google::Cloud::Speech::V1p1beta1::PhraseSet>]
        #     The phrase set.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListPhraseSetResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `DeletePhraseSet` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the phrase set to delete.
        #     Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/phraseSets/\\{phrase_set}
        class DeletePhraseSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `CreateCustomClass` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource where this custom class will be created.
        #     Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/customClasses
        # @!attribute [rw] custom_class_id
        #   @return [::String]
        #     Required. The ID to use for the custom class, which will become the final
        #     component of the custom class' resource name.
        #
        #     This value should be 4-63 characters, and valid characters
        #     are /[a-z][0-9]-/.
        # @!attribute [rw] custom_class
        #   @return [::Google::Cloud::Speech::V1p1beta1::CustomClass]
        #     Required. The custom class to create.
        class CreateCustomClassRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `UpdateCustomClass` method.
        # @!attribute [rw] custom_class
        #   @return [::Google::Cloud::Speech::V1p1beta1::CustomClass]
        #     Required. The custom class to update.
        #
        #     The custom class's `name` field is used to identify the custom class to be
        #     updated. Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/customClasses/\\{custom_class}
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        class UpdateCustomClassRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `GetCustomClass` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the custom class to retrieve.
        #     Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/customClasses/\\{custom_class}
        class GetCustomClassRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `ListCustomClasses` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent, which owns this collection of custom classes.
        #     Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/customClasses
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of custom classes to return. The service may return
        #     fewer than this value. If unspecified, at most 50 custom classes will be
        #     returned. The maximum value is 1000; values above 1000 will be coerced to
        #     1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous `ListCustomClass` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListCustomClass` must
        #     match the call that provided the page token.
        class ListCustomClassesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message returned to the client by the `ListCustomClasses` method.
        # @!attribute [rw] custom_classes
        #   @return [::Array<::Google::Cloud::Speech::V1p1beta1::CustomClass>]
        #     The custom classes.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListCustomClassesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message sent by the client for the `DeleteCustomClass` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the custom class to delete.
        #     Format:
        #     \\{api_version}/projects/\\{project}/locations/\\{location}/customClasses/\\{custom_class}
        class DeleteCustomClassRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
