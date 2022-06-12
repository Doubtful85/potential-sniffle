# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/irm/v1alpha2/incidents_service.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/irm/v1alpha2/incidents_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.irm.v1alpha2.CreateIncidentRequest" do
    optional :incident, :message, 1, "google.cloud.irm.v1alpha2.Incident"
    optional :parent, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.GetIncidentRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.UpdateIncidentRequest" do
    optional :incident, :message, 1, "google.cloud.irm.v1alpha2.Incident"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.cloud.irm.v1alpha2.SearchSimilarIncidentsRequest" do
    optional :name, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.cloud.irm.v1alpha2.SearchSimilarIncidentsResponse" do
    repeated :results, :message, 1, "google.cloud.irm.v1alpha2.SearchSimilarIncidentsResponse.Result"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.SearchSimilarIncidentsResponse.Result" do
    optional :incident, :message, 1, "google.cloud.irm.v1alpha2.Incident"
  end
  add_message "google.cloud.irm.v1alpha2.CreateAnnotationRequest" do
    optional :parent, :string, 1
    optional :annotation, :message, 2, "google.cloud.irm.v1alpha2.Annotation"
  end
  add_message "google.cloud.irm.v1alpha2.ListAnnotationsRequest" do
    optional :parent, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.cloud.irm.v1alpha2.ListAnnotationsResponse" do
    repeated :annotations, :message, 1, "google.cloud.irm.v1alpha2.Annotation"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.CreateTagRequest" do
    optional :parent, :string, 1
    optional :tag, :message, 2, "google.cloud.irm.v1alpha2.Tag"
  end
  add_message "google.cloud.irm.v1alpha2.DeleteTagRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.ListTagsRequest" do
    optional :parent, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.cloud.irm.v1alpha2.ListTagsResponse" do
    repeated :tags, :message, 1, "google.cloud.irm.v1alpha2.Tag"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.CreateSignalRequest" do
    optional :parent, :string, 1
    optional :signal, :message, 2, "google.cloud.irm.v1alpha2.Signal"
  end
  add_message "google.cloud.irm.v1alpha2.SearchSignalsRequest" do
    optional :parent, :string, 1
    optional :query, :string, 2
    optional :page_size, :int32, 3
    optional :page_token, :string, 4
  end
  add_message "google.cloud.irm.v1alpha2.SearchSignalsResponse" do
    repeated :signals, :message, 1, "google.cloud.irm.v1alpha2.Signal"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.GetSignalRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.LookupSignalRequest" do
    oneof :alternate_id do
      optional :cscc_finding, :string, 2
      optional :stackdriver_notification_id, :string, 3
    end
  end
  add_message "google.cloud.irm.v1alpha2.UpdateSignalRequest" do
    optional :signal, :message, 1, "google.cloud.irm.v1alpha2.Signal"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.cloud.irm.v1alpha2.SearchIncidentsRequest" do
    optional :parent, :string, 1
    optional :query, :string, 2
    optional :page_size, :int32, 3
    optional :page_token, :string, 4
    optional :time_zone, :string, 5
  end
  add_message "google.cloud.irm.v1alpha2.SearchIncidentsResponse" do
    repeated :incidents, :message, 1, "google.cloud.irm.v1alpha2.Incident"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.EscalateIncidentRequest" do
    optional :incident, :message, 1, "google.cloud.irm.v1alpha2.Incident"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    repeated :subscriptions, :message, 3, "google.cloud.irm.v1alpha2.Subscription"
    repeated :tags, :message, 4, "google.cloud.irm.v1alpha2.Tag"
    repeated :roles, :message, 5, "google.cloud.irm.v1alpha2.IncidentRoleAssignment"
    repeated :artifacts, :message, 6, "google.cloud.irm.v1alpha2.Artifact"
  end
  add_message "google.cloud.irm.v1alpha2.EscalateIncidentResponse" do
    optional :incident, :message, 1, "google.cloud.irm.v1alpha2.Incident"
    repeated :subscriptions, :message, 2, "google.cloud.irm.v1alpha2.Subscription"
    repeated :tags, :message, 3, "google.cloud.irm.v1alpha2.Tag"
    repeated :roles, :message, 4, "google.cloud.irm.v1alpha2.IncidentRole"
    repeated :artifacts, :message, 5, "google.cloud.irm.v1alpha2.Artifact"
  end
  add_message "google.cloud.irm.v1alpha2.CreateArtifactRequest" do
    optional :parent, :string, 1
    optional :artifact, :message, 2, "google.cloud.irm.v1alpha2.Artifact"
  end
  add_message "google.cloud.irm.v1alpha2.ListArtifactsRequest" do
    optional :parent, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.cloud.irm.v1alpha2.ListArtifactsResponse" do
    repeated :artifacts, :message, 1, "google.cloud.irm.v1alpha2.Artifact"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.UpdateArtifactRequest" do
    optional :artifact, :message, 1, "google.cloud.irm.v1alpha2.Artifact"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.cloud.irm.v1alpha2.DeleteArtifactRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.SendShiftHandoffRequest" do
    optional :parent, :string, 1
    repeated :recipients, :string, 2
    repeated :cc, :string, 3
    optional :subject, :string, 4
    optional :notes_content_type, :string, 5
    optional :notes_content, :string, 6
    repeated :incidents, :message, 7, "google.cloud.irm.v1alpha2.SendShiftHandoffRequest.Incident"
    optional :preview_only, :bool, 8
  end
  add_message "google.cloud.irm.v1alpha2.SendShiftHandoffRequest.Incident" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.SendShiftHandoffResponse" do
    optional :content_type, :string, 1
    optional :content, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.CreateSubscriptionRequest" do
    optional :parent, :string, 1
    optional :subscription, :message, 2, "google.cloud.irm.v1alpha2.Subscription"
  end
  add_message "google.cloud.irm.v1alpha2.UpdateSubscriptionRequest" do
    optional :subscription, :message, 1, "google.cloud.irm.v1alpha2.Subscription"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.cloud.irm.v1alpha2.ListSubscriptionsRequest" do
    optional :parent, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.cloud.irm.v1alpha2.ListSubscriptionsResponse" do
    repeated :subscriptions, :message, 1, "google.cloud.irm.v1alpha2.Subscription"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.DeleteSubscriptionRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.CreateIncidentRoleAssignmentRequest" do
    optional :parent, :string, 1
    optional :incident_role_assignment, :message, 2, "google.cloud.irm.v1alpha2.IncidentRoleAssignment"
  end
  add_message "google.cloud.irm.v1alpha2.DeleteIncidentRoleAssignmentRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.ListIncidentRoleAssignmentsRequest" do
    optional :parent, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.cloud.irm.v1alpha2.ListIncidentRoleAssignmentsResponse" do
    repeated :incident_role_assignments, :message, 1, "google.cloud.irm.v1alpha2.IncidentRoleAssignment"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.irm.v1alpha2.RequestIncidentRoleHandoverRequest" do
    optional :name, :string, 1
    optional :new_assignee, :message, 2, "google.cloud.irm.v1alpha2.User"
  end
  add_message "google.cloud.irm.v1alpha2.ConfirmIncidentRoleHandoverRequest" do
    optional :name, :string, 1
    optional :new_assignee, :message, 2, "google.cloud.irm.v1alpha2.User"
  end
  add_message "google.cloud.irm.v1alpha2.ForceIncidentRoleHandoverRequest" do
    optional :name, :string, 1
    optional :new_assignee, :message, 2, "google.cloud.irm.v1alpha2.User"
  end
  add_message "google.cloud.irm.v1alpha2.CancelIncidentRoleHandoverRequest" do
    optional :name, :string, 1
    optional :new_assignee, :message, 2, "google.cloud.irm.v1alpha2.User"
  end
end

module Google
  module Cloud
    module Irm
      module V1alpha2
        CreateIncidentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CreateIncidentRequest").msgclass
        GetIncidentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.GetIncidentRequest").msgclass
        UpdateIncidentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.UpdateIncidentRequest").msgclass
        SearchSimilarIncidentsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SearchSimilarIncidentsRequest").msgclass
        SearchSimilarIncidentsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SearchSimilarIncidentsResponse").msgclass
        SearchSimilarIncidentsResponse::Result = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SearchSimilarIncidentsResponse.Result").msgclass
        CreateAnnotationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CreateAnnotationRequest").msgclass
        ListAnnotationsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListAnnotationsRequest").msgclass
        ListAnnotationsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListAnnotationsResponse").msgclass
        CreateTagRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CreateTagRequest").msgclass
        DeleteTagRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.DeleteTagRequest").msgclass
        ListTagsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListTagsRequest").msgclass
        ListTagsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListTagsResponse").msgclass
        CreateSignalRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CreateSignalRequest").msgclass
        SearchSignalsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SearchSignalsRequest").msgclass
        SearchSignalsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SearchSignalsResponse").msgclass
        GetSignalRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.GetSignalRequest").msgclass
        LookupSignalRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.LookupSignalRequest").msgclass
        UpdateSignalRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.UpdateSignalRequest").msgclass
        SearchIncidentsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SearchIncidentsRequest").msgclass
        SearchIncidentsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SearchIncidentsResponse").msgclass
        EscalateIncidentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.EscalateIncidentRequest").msgclass
        EscalateIncidentResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.EscalateIncidentResponse").msgclass
        CreateArtifactRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CreateArtifactRequest").msgclass
        ListArtifactsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListArtifactsRequest").msgclass
        ListArtifactsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListArtifactsResponse").msgclass
        UpdateArtifactRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.UpdateArtifactRequest").msgclass
        DeleteArtifactRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.DeleteArtifactRequest").msgclass
        SendShiftHandoffRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SendShiftHandoffRequest").msgclass
        SendShiftHandoffRequest::Incident = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SendShiftHandoffRequest.Incident").msgclass
        SendShiftHandoffResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.SendShiftHandoffResponse").msgclass
        CreateSubscriptionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CreateSubscriptionRequest").msgclass
        UpdateSubscriptionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.UpdateSubscriptionRequest").msgclass
        ListSubscriptionsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListSubscriptionsRequest").msgclass
        ListSubscriptionsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListSubscriptionsResponse").msgclass
        DeleteSubscriptionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.DeleteSubscriptionRequest").msgclass
        CreateIncidentRoleAssignmentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CreateIncidentRoleAssignmentRequest").msgclass
        DeleteIncidentRoleAssignmentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.DeleteIncidentRoleAssignmentRequest").msgclass
        ListIncidentRoleAssignmentsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListIncidentRoleAssignmentsRequest").msgclass
        ListIncidentRoleAssignmentsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ListIncidentRoleAssignmentsResponse").msgclass
        RequestIncidentRoleHandoverRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.RequestIncidentRoleHandoverRequest").msgclass
        ConfirmIncidentRoleHandoverRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ConfirmIncidentRoleHandoverRequest").msgclass
        ForceIncidentRoleHandoverRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.ForceIncidentRoleHandoverRequest").msgclass
        CancelIncidentRoleHandoverRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CancelIncidentRoleHandoverRequest").msgclass
      end
    end
  end
end
