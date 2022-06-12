# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/admin/v1alpha/analytics_admin.proto

require 'google/protobuf'

require 'google/analytics/admin/v1alpha/resources_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/analytics/admin/v1alpha/analytics_admin.proto", :syntax => :proto3) do
    add_message "google.analytics.admin.v1alpha.GetAccountRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListAccountsRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
      optional :show_deleted, :bool, 3
    end
    add_message "google.analytics.admin.v1alpha.ListAccountsResponse" do
      repeated :accounts, :message, 1, "google.analytics.admin.v1alpha.Account"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.DeleteAccountRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateAccountRequest" do
      optional :account, :message, 1, "google.analytics.admin.v1alpha.Account"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.ProvisionAccountTicketRequest" do
      optional :account, :message, 1, "google.analytics.admin.v1alpha.Account"
      optional :redirect_uri, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ProvisionAccountTicketResponse" do
      optional :account_ticket_id, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetPropertyRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListPropertiesRequest" do
      optional :filter, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :show_deleted, :bool, 4
    end
    add_message "google.analytics.admin.v1alpha.ListPropertiesResponse" do
      repeated :properties, :message, 1, "google.analytics.admin.v1alpha.Property"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.UpdatePropertyRequest" do
      optional :property, :message, 1, "google.analytics.admin.v1alpha.Property"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreatePropertyRequest" do
      optional :property, :message, 1, "google.analytics.admin.v1alpha.Property"
    end
    add_message "google.analytics.admin.v1alpha.DeletePropertyRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetUserLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.BatchGetUserLinksRequest" do
      optional :parent, :string, 1
      repeated :names, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.BatchGetUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.ListUserLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.AuditUserLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.AuditUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.AuditUserLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.CreateUserLinkRequest" do
      optional :parent, :string, 1
      optional :notify_new_user, :bool, 2
      optional :user_link, :message, 3, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.BatchCreateUserLinksRequest" do
      optional :parent, :string, 1
      optional :notify_new_users, :bool, 2
      repeated :requests, :message, 3, "google.analytics.admin.v1alpha.CreateUserLinkRequest"
    end
    add_message "google.analytics.admin.v1alpha.BatchCreateUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.UpdateUserLinkRequest" do
      optional :user_link, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.BatchUpdateUserLinksRequest" do
      optional :parent, :string, 1
      repeated :requests, :message, 2, "google.analytics.admin.v1alpha.UpdateUserLinkRequest"
    end
    add_message "google.analytics.admin.v1alpha.BatchUpdateUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.DeleteUserLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.BatchDeleteUserLinksRequest" do
      optional :parent, :string, 1
      repeated :requests, :message, 2, "google.analytics.admin.v1alpha.DeleteUserLinkRequest"
    end
    add_message "google.analytics.admin.v1alpha.GetWebDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.DeleteWebDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateWebDataStreamRequest" do
      optional :web_data_stream, :message, 1, "google.analytics.admin.v1alpha.WebDataStream"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreateWebDataStreamRequest" do
      optional :web_data_stream, :message, 1, "google.analytics.admin.v1alpha.WebDataStream"
      optional :parent, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ListWebDataStreamsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListWebDataStreamsResponse" do
      repeated :web_data_streams, :message, 1, "google.analytics.admin.v1alpha.WebDataStream"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetIosAppDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.DeleteIosAppDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateIosAppDataStreamRequest" do
      optional :ios_app_data_stream, :message, 1, "google.analytics.admin.v1alpha.IosAppDataStream"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreateIosAppDataStreamRequest" do
      optional :ios_app_data_stream, :message, 1, "google.analytics.admin.v1alpha.IosAppDataStream"
      optional :parent, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ListIosAppDataStreamsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListIosAppDataStreamsResponse" do
      repeated :ios_app_data_streams, :message, 1, "google.analytics.admin.v1alpha.IosAppDataStream"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetAndroidAppDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.DeleteAndroidAppDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateAndroidAppDataStreamRequest" do
      optional :android_app_data_stream, :message, 1, "google.analytics.admin.v1alpha.AndroidAppDataStream"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreateAndroidAppDataStreamRequest" do
      optional :android_app_data_stream, :message, 1, "google.analytics.admin.v1alpha.AndroidAppDataStream"
      optional :parent, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ListAndroidAppDataStreamsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListAndroidAppDataStreamsResponse" do
      repeated :android_app_data_streams, :message, 1, "google.analytics.admin.v1alpha.AndroidAppDataStream"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetEnhancedMeasurementSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateEnhancedMeasurementSettingsRequest" do
      optional :enhanced_measurement_settings, :message, 1, "google.analytics.admin.v1alpha.EnhancedMeasurementSettings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreateFirebaseLinkRequest" do
      optional :parent, :string, 1
      optional :firebase_link, :message, 2, "google.analytics.admin.v1alpha.FirebaseLink"
    end
    add_message "google.analytics.admin.v1alpha.UpdateFirebaseLinkRequest" do
      optional :firebase_link, :message, 1, "google.analytics.admin.v1alpha.FirebaseLink"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.DeleteFirebaseLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListFirebaseLinksRequest" do
      optional :parent, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListFirebaseLinksResponse" do
      repeated :firebase_links, :message, 1, "google.analytics.admin.v1alpha.FirebaseLink"
    end
    add_message "google.analytics.admin.v1alpha.GetGlobalSiteTagRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.CreateGoogleAdsLinkRequest" do
      optional :parent, :string, 1
      optional :google_ads_link, :message, 2, "google.analytics.admin.v1alpha.GoogleAdsLink"
    end
    add_message "google.analytics.admin.v1alpha.UpdateGoogleAdsLinkRequest" do
      optional :google_ads_link, :message, 1, "google.analytics.admin.v1alpha.GoogleAdsLink"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.DeleteGoogleAdsLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListGoogleAdsLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListGoogleAdsLinksResponse" do
      repeated :google_ads_links, :message, 1, "google.analytics.admin.v1alpha.GoogleAdsLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetDataSharingSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListAccountSummariesRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ListAccountSummariesResponse" do
      repeated :account_summaries, :message, 1, "google.analytics.admin.v1alpha.AccountSummary"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Analytics
    module Admin
      module V1alpha
        GetAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetAccountRequest").msgclass
        ListAccountsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountsRequest").msgclass
        ListAccountsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountsResponse").msgclass
        DeleteAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteAccountRequest").msgclass
        UpdateAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateAccountRequest").msgclass
        ProvisionAccountTicketRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ProvisionAccountTicketRequest").msgclass
        ProvisionAccountTicketResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ProvisionAccountTicketResponse").msgclass
        GetPropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetPropertyRequest").msgclass
        ListPropertiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListPropertiesRequest").msgclass
        ListPropertiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListPropertiesResponse").msgclass
        UpdatePropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdatePropertyRequest").msgclass
        CreatePropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreatePropertyRequest").msgclass
        DeletePropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeletePropertyRequest").msgclass
        GetUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetUserLinkRequest").msgclass
        BatchGetUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchGetUserLinksRequest").msgclass
        BatchGetUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchGetUserLinksResponse").msgclass
        ListUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListUserLinksRequest").msgclass
        ListUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListUserLinksResponse").msgclass
        AuditUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AuditUserLinksRequest").msgclass
        AuditUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AuditUserLinksResponse").msgclass
        CreateUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateUserLinkRequest").msgclass
        BatchCreateUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchCreateUserLinksRequest").msgclass
        BatchCreateUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchCreateUserLinksResponse").msgclass
        UpdateUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateUserLinkRequest").msgclass
        BatchUpdateUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchUpdateUserLinksRequest").msgclass
        BatchUpdateUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchUpdateUserLinksResponse").msgclass
        DeleteUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteUserLinkRequest").msgclass
        BatchDeleteUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchDeleteUserLinksRequest").msgclass
        GetWebDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetWebDataStreamRequest").msgclass
        DeleteWebDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteWebDataStreamRequest").msgclass
        UpdateWebDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateWebDataStreamRequest").msgclass
        CreateWebDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateWebDataStreamRequest").msgclass
        ListWebDataStreamsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListWebDataStreamsRequest").msgclass
        ListWebDataStreamsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListWebDataStreamsResponse").msgclass
        GetIosAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetIosAppDataStreamRequest").msgclass
        DeleteIosAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteIosAppDataStreamRequest").msgclass
        UpdateIosAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateIosAppDataStreamRequest").msgclass
        CreateIosAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateIosAppDataStreamRequest").msgclass
        ListIosAppDataStreamsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListIosAppDataStreamsRequest").msgclass
        ListIosAppDataStreamsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListIosAppDataStreamsResponse").msgclass
        GetAndroidAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetAndroidAppDataStreamRequest").msgclass
        DeleteAndroidAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteAndroidAppDataStreamRequest").msgclass
        UpdateAndroidAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateAndroidAppDataStreamRequest").msgclass
        CreateAndroidAppDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateAndroidAppDataStreamRequest").msgclass
        ListAndroidAppDataStreamsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAndroidAppDataStreamsRequest").msgclass
        ListAndroidAppDataStreamsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAndroidAppDataStreamsResponse").msgclass
        GetEnhancedMeasurementSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetEnhancedMeasurementSettingsRequest").msgclass
        UpdateEnhancedMeasurementSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateEnhancedMeasurementSettingsRequest").msgclass
        CreateFirebaseLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateFirebaseLinkRequest").msgclass
        UpdateFirebaseLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateFirebaseLinkRequest").msgclass
        DeleteFirebaseLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteFirebaseLinkRequest").msgclass
        ListFirebaseLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListFirebaseLinksRequest").msgclass
        ListFirebaseLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListFirebaseLinksResponse").msgclass
        GetGlobalSiteTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetGlobalSiteTagRequest").msgclass
        CreateGoogleAdsLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateGoogleAdsLinkRequest").msgclass
        UpdateGoogleAdsLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateGoogleAdsLinkRequest").msgclass
        DeleteGoogleAdsLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteGoogleAdsLinkRequest").msgclass
        ListGoogleAdsLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListGoogleAdsLinksRequest").msgclass
        ListGoogleAdsLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListGoogleAdsLinksResponse").msgclass
        GetDataSharingSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetDataSharingSettingsRequest").msgclass
        ListAccountSummariesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountSummariesRequest").msgclass
        ListAccountSummariesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountSummariesResponse").msgclass
      end
    end
  end
end
