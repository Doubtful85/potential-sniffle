# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/conversation_profile.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/audio_config_pb'
require 'google/cloud/dialogflow/v2/participant_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/v2/conversation_profile.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.v2.ConversationProfile" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :create_time, :message, 11, "google.protobuf.Timestamp"
      optional :update_time, :message, 12, "google.protobuf.Timestamp"
      optional :automated_agent_config, :message, 3, "google.cloud.dialogflow.v2.AutomatedAgentConfig"
      optional :human_agent_assistant_config, :message, 4, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig"
      optional :human_agent_handoff_config, :message, 5, "google.cloud.dialogflow.v2.HumanAgentHandoffConfig"
      optional :notification_config, :message, 6, "google.cloud.dialogflow.v2.NotificationConfig"
      optional :logging_config, :message, 7, "google.cloud.dialogflow.v2.LoggingConfig"
      optional :new_message_event_notification_config, :message, 8, "google.cloud.dialogflow.v2.NotificationConfig"
      optional :stt_config, :message, 9, "google.cloud.dialogflow.v2.SpeechToTextConfig"
      optional :language_code, :string, 10
    end
    add_message "google.cloud.dialogflow.v2.ListConversationProfilesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dialogflow.v2.ListConversationProfilesResponse" do
      repeated :conversation_profiles, :message, 1, "google.cloud.dialogflow.v2.ConversationProfile"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.v2.GetConversationProfileRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.CreateConversationProfileRequest" do
      optional :parent, :string, 1
      optional :conversation_profile, :message, 2, "google.cloud.dialogflow.v2.ConversationProfile"
    end
    add_message "google.cloud.dialogflow.v2.UpdateConversationProfileRequest" do
      optional :conversation_profile, :message, 1, "google.cloud.dialogflow.v2.ConversationProfile"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.dialogflow.v2.DeleteConversationProfileRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.AutomatedAgentConfig" do
      optional :agent, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig" do
      optional :notification_config, :message, 2, "google.cloud.dialogflow.v2.NotificationConfig"
      optional :human_agent_suggestion_config, :message, 3, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionConfig"
      optional :end_user_suggestion_config, :message, 4, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionConfig"
      optional :message_analysis_config, :message, 5, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.MessageAnalysisConfig"
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionTriggerSettings" do
      optional :no_smalltalk, :bool, 1
      optional :only_end_user, :bool, 2
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionFeatureConfig" do
      optional :suggestion_feature, :message, 5, "google.cloud.dialogflow.v2.SuggestionFeature"
      optional :enable_event_based_suggestion, :bool, 3
      optional :suggestion_trigger_settings, :message, 10, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionTriggerSettings"
      optional :query_config, :message, 6, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig"
      optional :conversation_model_config, :message, 7, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.ConversationModelConfig"
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionConfig" do
      repeated :feature_configs, :message, 2, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionFeatureConfig"
      optional :group_suggestion_responses, :bool, 3
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig" do
      optional :max_results, :int32, 4
      optional :confidence_threshold, :float, 5
      optional :context_filter_settings, :message, 7, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings"
      oneof :query_source do
        optional :knowledge_base_query_source, :message, 1, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource"
        optional :document_query_source, :message, 2, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource"
        optional :dialogflow_query_source, :message, 3, "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource"
      end
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource" do
      repeated :knowledge_bases, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource" do
      repeated :documents, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource" do
      optional :agent, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings" do
      optional :drop_handoff_messages, :bool, 1
      optional :drop_virtual_agent_messages, :bool, 2
      optional :drop_ivr_messages, :bool, 3
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.ConversationModelConfig" do
      optional :model, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentAssistantConfig.MessageAnalysisConfig" do
      optional :enable_entity_extraction, :bool, 2
      optional :enable_sentiment_analysis, :bool, 3
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentHandoffConfig" do
      oneof :agent_service do
        optional :live_person_config, :message, 1, "google.cloud.dialogflow.v2.HumanAgentHandoffConfig.LivePersonConfig"
        optional :salesforce_live_agent_config, :message, 2, "google.cloud.dialogflow.v2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig"
      end
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentHandoffConfig.LivePersonConfig" do
      optional :account_number, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig" do
      optional :organization_id, :string, 1
      optional :deployment_id, :string, 2
      optional :button_id, :string, 3
      optional :endpoint_domain, :string, 4
    end
    add_message "google.cloud.dialogflow.v2.NotificationConfig" do
      optional :topic, :string, 1
      optional :message_format, :enum, 2, "google.cloud.dialogflow.v2.NotificationConfig.MessageFormat"
    end
    add_enum "google.cloud.dialogflow.v2.NotificationConfig.MessageFormat" do
      value :MESSAGE_FORMAT_UNSPECIFIED, 0
      value :PROTO, 1
      value :JSON, 2
    end
    add_message "google.cloud.dialogflow.v2.LoggingConfig" do
      optional :enable_stackdriver_logging, :bool, 3
    end
    add_message "google.cloud.dialogflow.v2.SuggestionFeature" do
      optional :type, :enum, 1, "google.cloud.dialogflow.v2.SuggestionFeature.Type"
    end
    add_enum "google.cloud.dialogflow.v2.SuggestionFeature.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :ARTICLE_SUGGESTION, 1
      value :FAQ, 2
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        ConversationProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationProfile").msgclass
        ListConversationProfilesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationProfilesRequest").msgclass
        ListConversationProfilesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationProfilesResponse").msgclass
        GetConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetConversationProfileRequest").msgclass
        CreateConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateConversationProfileRequest").msgclass
        UpdateConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateConversationProfileRequest").msgclass
        DeleteConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteConversationProfileRequest").msgclass
        AutomatedAgentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AutomatedAgentConfig").msgclass
        HumanAgentAssistantConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig").msgclass
        HumanAgentAssistantConfig::SuggestionTriggerSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionTriggerSettings").msgclass
        HumanAgentAssistantConfig::SuggestionFeatureConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionFeatureConfig").msgclass
        HumanAgentAssistantConfig::SuggestionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionConfig").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::KnowledgeBaseQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::DocumentQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::DialogflowQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::ContextFilterSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings").msgclass
        HumanAgentAssistantConfig::ConversationModelConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.ConversationModelConfig").msgclass
        HumanAgentAssistantConfig::MessageAnalysisConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.MessageAnalysisConfig").msgclass
        HumanAgentHandoffConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentHandoffConfig").msgclass
        HumanAgentHandoffConfig::LivePersonConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentHandoffConfig.LivePersonConfig").msgclass
        HumanAgentHandoffConfig::SalesforceLiveAgentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig").msgclass
        NotificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.NotificationConfig").msgclass
        NotificationConfig::MessageFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.NotificationConfig.MessageFormat").enummodule
        LoggingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.LoggingConfig").msgclass
        SuggestionFeature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestionFeature").msgclass
        SuggestionFeature::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestionFeature.Type").enummodule
      end
    end
  end
end
