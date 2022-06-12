# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkconnectivity/v1/hub.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/networkconnectivity/v1/hub.proto", :syntax => :proto3) do
    add_message "google.cloud.networkconnectivity.v1.Hub" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :description, :string, 5
      optional :unique_id, :string, 8
      optional :state, :enum, 9, "google.cloud.networkconnectivity.v1.State"
      repeated :routing_vpcs, :message, 10, "google.cloud.networkconnectivity.v1.RoutingVPC"
    end
    add_message "google.cloud.networkconnectivity.v1.RoutingVPC" do
      optional :uri, :string, 1
    end
    add_message "google.cloud.networkconnectivity.v1.Spoke" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :description, :string, 5
      optional :hub, :string, 6
      optional :linked_vpn_tunnels, :message, 17, "google.cloud.networkconnectivity.v1.LinkedVpnTunnels"
      optional :linked_interconnect_attachments, :message, 18, "google.cloud.networkconnectivity.v1.LinkedInterconnectAttachments"
      optional :linked_router_appliance_instances, :message, 19, "google.cloud.networkconnectivity.v1.LinkedRouterApplianceInstances"
      optional :unique_id, :string, 11
      optional :state, :enum, 15, "google.cloud.networkconnectivity.v1.State"
    end
    add_message "google.cloud.networkconnectivity.v1.ListHubsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.networkconnectivity.v1.ListHubsResponse" do
      repeated :hubs, :message, 1, "google.cloud.networkconnectivity.v1.Hub"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.networkconnectivity.v1.GetHubRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.networkconnectivity.v1.CreateHubRequest" do
      optional :parent, :string, 1
      optional :hub_id, :string, 2
      optional :hub, :message, 3, "google.cloud.networkconnectivity.v1.Hub"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.networkconnectivity.v1.UpdateHubRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :hub, :message, 2, "google.cloud.networkconnectivity.v1.Hub"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.networkconnectivity.v1.DeleteHubRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.networkconnectivity.v1.ListSpokesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.networkconnectivity.v1.ListSpokesResponse" do
      repeated :spokes, :message, 1, "google.cloud.networkconnectivity.v1.Spoke"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.networkconnectivity.v1.GetSpokeRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.networkconnectivity.v1.CreateSpokeRequest" do
      optional :parent, :string, 1
      optional :spoke_id, :string, 2
      optional :spoke, :message, 3, "google.cloud.networkconnectivity.v1.Spoke"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.networkconnectivity.v1.UpdateSpokeRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :spoke, :message, 2, "google.cloud.networkconnectivity.v1.Spoke"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.networkconnectivity.v1.DeleteSpokeRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.networkconnectivity.v1.LinkedVpnTunnels" do
      repeated :uris, :string, 1
      optional :site_to_site_data_transfer, :bool, 2
    end
    add_message "google.cloud.networkconnectivity.v1.LinkedInterconnectAttachments" do
      repeated :uris, :string, 1
      optional :site_to_site_data_transfer, :bool, 2
    end
    add_message "google.cloud.networkconnectivity.v1.LinkedRouterApplianceInstances" do
      repeated :instances, :message, 1, "google.cloud.networkconnectivity.v1.RouterApplianceInstance"
      optional :site_to_site_data_transfer, :bool, 2
    end
    add_message "google.cloud.networkconnectivity.v1.RouterApplianceInstance" do
      optional :virtual_machine, :string, 1
      optional :ip_address, :string, 3
    end
    add_enum "google.cloud.networkconnectivity.v1.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :ACTIVE, 2
      value :DELETING, 3
    end
  end
end

module Google
  module Cloud
    module NetworkConnectivity
      module V1
        Hub = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.Hub").msgclass
        RoutingVPC = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.RoutingVPC").msgclass
        Spoke = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.Spoke").msgclass
        ListHubsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.ListHubsRequest").msgclass
        ListHubsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.ListHubsResponse").msgclass
        GetHubRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.GetHubRequest").msgclass
        CreateHubRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.CreateHubRequest").msgclass
        UpdateHubRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.UpdateHubRequest").msgclass
        DeleteHubRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.DeleteHubRequest").msgclass
        ListSpokesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.ListSpokesRequest").msgclass
        ListSpokesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.ListSpokesResponse").msgclass
        GetSpokeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.GetSpokeRequest").msgclass
        CreateSpokeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.CreateSpokeRequest").msgclass
        UpdateSpokeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.UpdateSpokeRequest").msgclass
        DeleteSpokeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.DeleteSpokeRequest").msgclass
        LinkedVpnTunnels = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.LinkedVpnTunnels").msgclass
        LinkedInterconnectAttachments = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.LinkedInterconnectAttachments").msgclass
        LinkedRouterApplianceInstances = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.LinkedRouterApplianceInstances").msgclass
        RouterApplianceInstance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.RouterApplianceInstance").msgclass
        State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.State").enummodule
      end
    end
  end
end
