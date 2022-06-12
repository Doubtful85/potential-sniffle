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
      module V2
        # A knowledge base represents a collection of knowledge documents that you
        # provide to Dialogflow. Your knowledge documents contain information that may
        # be useful during conversations with end-users. Some Dialogflow features use
        # knowledge bases when looking for a response to an end-user input.
        #
        # For more information, see the [knowledge base
        # guide](https://cloud.google.com/dialogflow/docs/how/knowledge-bases).
        #
        # Note: The `projects.agent.knowledgeBases` resource is deprecated;
        # only use `projects.knowledgeBases`.
        # @!attribute [rw] name
        #   @return [::String]
        #     The knowledge base resource name.
        #     The name must be empty when creating a knowledge base.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/knowledgeBases/<Knowledge Base ID>`.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the knowledge base. The name must be 1024
        #     bytes or less; otherwise, the creation request fails.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Language which represents the KnowledgeBase. When the KnowledgeBase is
        #     created/updated, expect this to be present for non en-us languages. When
        #     unspecified, the default language code en-us applies.
        class KnowledgeBase
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client#list_knowledge_bases KnowledgeBases.ListKnowledgeBases}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project to list of knowledge bases for.
        #     Format: `projects/<Project ID>/locations/<Location ID>`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return in a single page. By
        #     default 10 and at most 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous list request.
        class ListKnowledgeBasesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client#list_knowledge_bases KnowledgeBases.ListKnowledgeBases}.
        # @!attribute [rw] knowledge_bases
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::KnowledgeBase>]
        #     The list of knowledge bases.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListKnowledgeBasesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client#get_knowledge_base KnowledgeBases.GetKnowledgeBase}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the knowledge base to retrieve.
        #     Format `projects/<Project ID>/locations/<Location
        #     ID>/knowledgeBases/<Knowledge Base ID>`.
        class GetKnowledgeBaseRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client#create_knowledge_base KnowledgeBases.CreateKnowledgeBase}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project to create a knowledge base for.
        #     Format: `projects/<Project ID>/locations/<Location ID>`.
        # @!attribute [rw] knowledge_base
        #   @return [::Google::Cloud::Dialogflow::V2::KnowledgeBase]
        #     Required. The knowledge base to create.
        class CreateKnowledgeBaseRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client#delete_knowledge_base KnowledgeBases.DeleteKnowledgeBase}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the knowledge base to delete.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/knowledgeBases/<Knowledge Base ID>`.
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     Optional. Force deletes the knowledge base. When set to true, any documents
        #     in the knowledge base are also deleted.
        class DeleteKnowledgeBaseRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client#update_knowledge_base KnowledgeBases.UpdateKnowledgeBase}.
        # @!attribute [rw] knowledge_base
        #   @return [::Google::Cloud::Dialogflow::V2::KnowledgeBase]
        #     Required. The knowledge base to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Not specified means `update all`.
        #     Currently, only `display_name` can be updated, an InvalidArgument will be
        #     returned for attempting to update other fields.
        class UpdateKnowledgeBaseRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
