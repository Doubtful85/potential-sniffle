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
    module NetworkManagement
      module V1
        # Trace represents one simulated packet forwarding path.
        #
        #   * Each trace contains multiple ordered steps.
        #   * Each step is in a particular state with associated configuration.
        #   * State is categorized as final or non-final states.
        #   * Each final state has a reason associated.
        #   * Each trace must end with a final state (the last step).
        # ```
        #   |---------------------Trace----------------------|
        #   Step1(State) Step2(State) ---  StepN(State(final))
        # ```
        # @!attribute [rw] endpoint_info
        #   @return [::Google::Cloud::NetworkManagement::V1::EndpointInfo]
        #     Derived from the source and destination endpoints definition specified by
        #     user request, and validated by the data plane model.
        #     If there are multiple traces starting from different source locations, then
        #     the endpoint_info may be different between traces.
        # @!attribute [rw] steps
        #   @return [::Array<::Google::Cloud::NetworkManagement::V1::Step>]
        #     A trace of a test contains multiple steps from the initial state to the
        #     final state (delivered, dropped, forwarded, or aborted).
        #
        #     The steps are ordered by the processing sequence within the simulated
        #     network state machine. It is critical to preserve the order of the steps
        #     and avoid reordering or sorting them.
        class Trace
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A simulated forwarding path is composed of multiple steps.
        # Each step has a well-defined state and an associated configuration.
        # @!attribute [rw] description
        #   @return [::String]
        #     A description of the step. Usually this is a summary of the state.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::NetworkManagement::V1::Step::State]
        #     Each step is in one of the pre-defined states.
        # @!attribute [rw] causes_drop
        #   @return [::Boolean]
        #     This is a step that leads to the final state Drop.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     Project ID that contains the configuration this step is validating.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::NetworkManagement::V1::InstanceInfo]
        #     Display information of a Compute Engine instance.
        # @!attribute [rw] firewall
        #   @return [::Google::Cloud::NetworkManagement::V1::FirewallInfo]
        #     Display information of a Compute Engine firewall rule.
        # @!attribute [rw] route
        #   @return [::Google::Cloud::NetworkManagement::V1::RouteInfo]
        #     Display information of a Compute Engine route.
        # @!attribute [rw] endpoint
        #   @return [::Google::Cloud::NetworkManagement::V1::EndpointInfo]
        #     Display information of the source and destination under analysis.
        #     The endpoint information in an intermediate state may differ with the
        #     initial input, as it might be modified by state like NAT,
        #     or Connection Proxy.
        # @!attribute [rw] forwarding_rule
        #   @return [::Google::Cloud::NetworkManagement::V1::ForwardingRuleInfo]
        #     Display information of a Compute Engine forwarding rule.
        # @!attribute [rw] vpn_gateway
        #   @return [::Google::Cloud::NetworkManagement::V1::VpnGatewayInfo]
        #     Display information of a Compute Engine VPN gateway.
        # @!attribute [rw] vpn_tunnel
        #   @return [::Google::Cloud::NetworkManagement::V1::VpnTunnelInfo]
        #     Display information of a Compute Engine VPN tunnel.
        # @!attribute [rw] deliver
        #   @return [::Google::Cloud::NetworkManagement::V1::DeliverInfo]
        #     Display information of the final state "deliver" and reason.
        # @!attribute [rw] forward
        #   @return [::Google::Cloud::NetworkManagement::V1::ForwardInfo]
        #     Display information of the final state "forward" and reason.
        # @!attribute [rw] abort
        #   @return [::Google::Cloud::NetworkManagement::V1::AbortInfo]
        #     Display information of the final state "abort" and reason.
        # @!attribute [rw] drop
        #   @return [::Google::Cloud::NetworkManagement::V1::DropInfo]
        #     Display information of the final state "drop" and reason.
        # @!attribute [rw] load_balancer
        #   @return [::Google::Cloud::NetworkManagement::V1::LoadBalancerInfo]
        #     Display information of the load balancers.
        # @!attribute [rw] network
        #   @return [::Google::Cloud::NetworkManagement::V1::NetworkInfo]
        #     Display information of a Google Cloud network.
        # @!attribute [rw] gke_master
        #   @return [::Google::Cloud::NetworkManagement::V1::GKEMasterInfo]
        #     Display information of a Google Kubernetes Engine cluster master.
        # @!attribute [rw] cloud_sql_instance
        #   @return [::Google::Cloud::NetworkManagement::V1::CloudSQLInstanceInfo]
        #     Display information of a Cloud SQL instance.
        class Step
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Type of states that are defined in the network state machine.
          # Each step in the packet trace is in a specific state.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # Initial state: packet originating from a Compute Engine instance.
            # An InstanceInfo is populated with starting instance information.
            START_FROM_INSTANCE = 1

            # Initial state: packet originating from the internet.
            # The endpoint information is populated.
            START_FROM_INTERNET = 2

            # Initial state: packet originating from a VPC or on-premises network
            # with internal source IP.
            # If the source is a VPC network visible to the user, a NetworkInfo
            # is populated with details of the network.
            START_FROM_PRIVATE_NETWORK = 3

            # Initial state: packet originating from a Google Kubernetes Engine cluster
            # master. A GKEMasterInfo is populated with starting instance information.
            START_FROM_GKE_MASTER = 21

            # Initial state: packet originating from a Cloud SQL instance.
            # A CloudSQLInstanceInfo is populated with starting instance information.
            START_FROM_CLOUD_SQL_INSTANCE = 22

            # Config checking state: verify ingress firewall rule.
            APPLY_INGRESS_FIREWALL_RULE = 4

            # Config checking state: verify egress firewall rule.
            APPLY_EGRESS_FIREWALL_RULE = 5

            # Config checking state: verify route.
            APPLY_ROUTE = 6

            # Config checking state: match forwarding rule.
            APPLY_FORWARDING_RULE = 7

            # Config checking state: packet sent or received under foreign IP
            # address and allowed.
            SPOOFING_APPROVED = 8

            # Forwarding state: arriving at a Compute Engine instance.
            ARRIVE_AT_INSTANCE = 9

            # Forwarding state: arriving at a Compute Engine internal load balancer.
            ARRIVE_AT_INTERNAL_LOAD_BALANCER = 10

            # Forwarding state: arriving at a Compute Engine external load balancer.
            ARRIVE_AT_EXTERNAL_LOAD_BALANCER = 11

            # Forwarding state: arriving at a Cloud VPN gateway.
            ARRIVE_AT_VPN_GATEWAY = 12

            # Forwarding state: arriving at a Cloud VPN tunnel.
            ARRIVE_AT_VPN_TUNNEL = 13

            # Transition state: packet header translated.
            NAT = 14

            # Transition state: original connection is terminated and a new proxied
            # connection is initiated.
            PROXY_CONNECTION = 15

            # Final state: packet could be delivered.
            DELIVER = 16

            # Final state: packet could be dropped.
            DROP = 17

            # Final state: packet could be forwarded to a network with an unknown
            # configuration.
            FORWARD = 18

            # Final state: analysis is aborted.
            ABORT = 19

            # Special state: viewer of the test result does not have permission to
            # see the configuration in this step.
            VIEWER_PERMISSION_MISSING = 20
          end
        end

        # For display only. Metadata associated with a Compute Engine instance.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a Compute Engine instance.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a Compute Engine instance.
        # @!attribute [rw] interface
        #   @return [::String]
        #     Name of the network interface of a Compute Engine instance.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     URI of a Compute Engine network.
        # @!attribute [rw] internal_ip
        #   @return [::String]
        #     Internal IP address of the network interface.
        # @!attribute [rw] external_ip
        #   @return [::String]
        #     External IP address of the network interface.
        # @!attribute [rw] network_tags
        #   @return [::Array<::String>]
        #     Network tags configured on the instance.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Service account authorized for the instance.
        class InstanceInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # For display only. Metadata associated with a Compute Engine network.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a Compute Engine network.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a Compute Engine network.
        # @!attribute [rw] matched_ip_range
        #   @return [::String]
        #     The IP range that matches the test.
        class NetworkInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # For display only. Metadata associated with a VPC firewall rule, an implied
        # VPC firewall rule, or a hierarchical firewall policy rule.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the VPC firewall rule. This field is not applicable
        #     to hierarchical firewall policy rules.
        # @!attribute [rw] uri
        #   @return [::String]
        #     The URI of the VPC firewall rule. This field is not applicable to
        #     implied firewall rules or hierarchical firewall policy rules.
        # @!attribute [rw] direction
        #   @return [::String]
        #     Possible values: INGRESS, EGRESS
        # @!attribute [rw] action
        #   @return [::String]
        #     Possible values: ALLOW, DENY
        # @!attribute [rw] priority
        #   @return [::Integer]
        #     The priority of the firewall rule.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     The URI of the VPC network that the firewall rule is associated with.
        #     This field is not applicable to hierarchical firewall policy rules.
        # @!attribute [rw] target_tags
        #   @return [::Array<::String>]
        #     The target tags defined by the VPC firewall rule. This field is not
        #     applicable to hierarchical firewall policy rules.
        # @!attribute [rw] target_service_accounts
        #   @return [::Array<::String>]
        #     The target service accounts specified by the firewall rule.
        # @!attribute [rw] policy
        #   @return [::String]
        #     The hierarchical firewall policy that this rule is associated with.
        #     This field is not applicable to VPC firewall rules.
        # @!attribute [rw] firewall_rule_type
        #   @return [::Google::Cloud::NetworkManagement::V1::FirewallInfo::FirewallRuleType]
        #     The firewall rule's type.
        class FirewallInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The firewall rule's type.
          module FirewallRuleType
            # Unspecified type.
            FIREWALL_RULE_TYPE_UNSPECIFIED = 0

            # Hierarchical firewall policy rule. For details, see
            # [Hierarchical firewall policies
            # overview](https://cloud.google.com/vpc/docs/firewall-policies).
            HIERARCHICAL_FIREWALL_POLICY_RULE = 1

            # VPC firewall rule. For details, see
            # [VPC firewall rules
            # overview](https://cloud.google.com/vpc/docs/firewalls).
            VPC_FIREWALL_RULE = 2

            # Implied VPC firewall rule. For details, see
            # [Implied
            # rules](https://cloud.google.com/vpc/docs/firewalls#default_firewall_rules).
            IMPLIED_VPC_FIREWALL_RULE = 3
          end
        end

        # For display only. Metadata associated with a Compute Engine route.
        # @!attribute [rw] route_type
        #   @return [::Google::Cloud::NetworkManagement::V1::RouteInfo::RouteType]
        #     Type of route.
        # @!attribute [rw] next_hop_type
        #   @return [::Google::Cloud::NetworkManagement::V1::RouteInfo::NextHopType]
        #     Type of next hop.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a Compute Engine route.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a Compute Engine route.
        #     Dynamic route from cloud router does not have a URI.
        #     Advertised route from Google Cloud VPC to on-premises network also does
        #     not have a URI.
        # @!attribute [rw] dest_ip_range
        #   @return [::String]
        #     Destination IP range of the route.
        # @!attribute [rw] next_hop
        #   @return [::String]
        #     Next hop of the route.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     URI of a Compute Engine network.
        # @!attribute [rw] priority
        #   @return [::Integer]
        #     Priority of the route.
        # @!attribute [rw] instance_tags
        #   @return [::Array<::String>]
        #     Instance tags of the route.
        class RouteInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Type of route:
          module RouteType
            # Unspecified type. Default value.
            ROUTE_TYPE_UNSPECIFIED = 0

            # Route is a subnet route automatically created by the system.
            SUBNET = 1

            # Static route created by the user, including the default route to the
            # internet.
            STATIC = 2

            # Dynamic route exchanged between BGP peers.
            DYNAMIC = 3

            # A subnet route received from peering network.
            PEERING_SUBNET = 4

            # A static route received from peering network.
            PEERING_STATIC = 5

            # A dynamic route received from peering network.
            PEERING_DYNAMIC = 6
          end

          # Type of next hop:
          module NextHopType
            # Unspecified type. Default value.
            NEXT_HOP_TYPE_UNSPECIFIED = 0

            # Next hop is an IP address.
            NEXT_HOP_IP = 1

            # Next hop is a Compute Engine instance.
            NEXT_HOP_INSTANCE = 2

            # Next hop is a VPC network gateway.
            NEXT_HOP_NETWORK = 3

            # Next hop is a peering VPC.
            NEXT_HOP_PEERING = 4

            # Next hop is an interconnect.
            NEXT_HOP_INTERCONNECT = 5

            # Next hop is a VPN tunnel.
            NEXT_HOP_VPN_TUNNEL = 6

            # Next hop is a VPN gateway. This scenario only happens when tracing
            # connectivity from an on-premises network to Google Cloud through a VPN.
            # The analysis simulates a packet departing from the on-premises network
            # through a VPN tunnel and arriving at a Cloud VPN gateway.
            NEXT_HOP_VPN_GATEWAY = 7

            # Next hop is an internet gateway.
            NEXT_HOP_INTERNET_GATEWAY = 8

            # Next hop is blackhole; that is, the next hop either does not exist or is
            # not running.
            NEXT_HOP_BLACKHOLE = 9

            # Next hop is the forwarding rule of an Internal Load Balancer.
            NEXT_HOP_ILB = 10
          end
        end

        # For display only. Metadata associated with a Compute Engine forwarding rule.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a Compute Engine forwarding rule.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a Compute Engine forwarding rule.
        # @!attribute [rw] matched_protocol
        #   @return [::String]
        #     Protocol defined in the forwarding rule that matches the test.
        # @!attribute [rw] matched_port_range
        #   @return [::String]
        #     Port range defined in the forwarding rule that matches the test.
        # @!attribute [rw] vip
        #   @return [::String]
        #     VIP of the forwarding rule.
        # @!attribute [rw] target
        #   @return [::String]
        #     Target type of the forwarding rule.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     Network URI. Only valid for Internal Load Balancer.
        class ForwardingRuleInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # For display only. Metadata associated with a load balancer.
        # @!attribute [rw] load_balancer_type
        #   @return [::Google::Cloud::NetworkManagement::V1::LoadBalancerInfo::LoadBalancerType]
        #     Type of the load balancer.
        # @!attribute [rw] health_check_uri
        #   @return [::String]
        #     URI of the health check for the load balancer.
        # @!attribute [rw] backends
        #   @return [::Array<::Google::Cloud::NetworkManagement::V1::LoadBalancerBackend>]
        #     Information for the loadbalancer backends.
        # @!attribute [rw] backend_type
        #   @return [::Google::Cloud::NetworkManagement::V1::LoadBalancerInfo::BackendType]
        #     Type of load balancer's backend configuration.
        # @!attribute [rw] backend_uri
        #   @return [::String]
        #     Backend configuration URI.
        class LoadBalancerInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type definition for a load balancer:
          module LoadBalancerType
            # Type is unspecified.
            LOAD_BALANCER_TYPE_UNSPECIFIED = 0

            # Internal TCP/UDP load balancer.
            INTERNAL_TCP_UDP = 1

            # Network TCP/UDP load balancer.
            NETWORK_TCP_UDP = 2

            # HTTP(S) proxy load balancer.
            HTTP_PROXY = 3

            # TCP proxy load balancer.
            TCP_PROXY = 4

            # SSL proxy load balancer.
            SSL_PROXY = 5
          end

          # The type definition for a load balancer backend configuration:
          module BackendType
            # Type is unspecified.
            BACKEND_TYPE_UNSPECIFIED = 0

            # Backend Service as the load balancer's backend.
            BACKEND_SERVICE = 1

            # Target Pool as the load balancer's backend.
            TARGET_POOL = 2
          end
        end

        # For display only. Metadata associated with a specific load balancer backend.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a Compute Engine instance or network endpoint.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a Compute Engine instance or network endpoint.
        # @!attribute [rw] health_check_firewall_state
        #   @return [::Google::Cloud::NetworkManagement::V1::LoadBalancerBackend::HealthCheckFirewallState]
        #     State of the health check firewall configuration.
        # @!attribute [rw] health_check_allowing_firewall_rules
        #   @return [::Array<::String>]
        #     A list of firewall rule URIs allowing probes from health check IP ranges.
        # @!attribute [rw] health_check_blocking_firewall_rules
        #   @return [::Array<::String>]
        #     A list of firewall rule URIs blocking probes from health check IP ranges.
        class LoadBalancerBackend
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State of a health check firewall configuration:
          module HealthCheckFirewallState
            # State is unspecified. Default state if not populated.
            HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED = 0

            # There are configured firewall rules to allow health check probes to the
            # backend.
            CONFIGURED = 1

            # There are firewall rules configured to allow partial health check ranges
            # or block all health check ranges.
            # If a health check probe is sent from denied IP ranges,
            # the health check to the backend will fail. Then, the backend will be
            # marked unhealthy and will not receive traffic sent to the load balancer.
            MISCONFIGURED = 2
          end
        end

        # For display only. Metadata associated with a Compute Engine VPN gateway.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a VPN gateway.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a VPN gateway.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     URI of a Compute Engine network where the VPN gateway is configured.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     IP address of the VPN gateway.
        # @!attribute [rw] vpn_tunnel_uri
        #   @return [::String]
        #     A VPN tunnel that is associated with this VPN gateway.
        #     There may be multiple VPN tunnels configured on a VPN gateway, and only
        #     the one relevant to the test is displayed.
        # @!attribute [rw] region
        #   @return [::String]
        #     Name of a Google Cloud region where this VPN gateway is configured.
        class VpnGatewayInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # For display only. Metadata associated with a Compute Engine VPN tunnel.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a VPN tunnel.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a VPN tunnel.
        # @!attribute [rw] source_gateway
        #   @return [::String]
        #     URI of the VPN gateway at local end of the tunnel.
        # @!attribute [rw] remote_gateway
        #   @return [::String]
        #     URI of a VPN gateway at remote end of the tunnel.
        # @!attribute [rw] remote_gateway_ip
        #   @return [::String]
        #     Remote VPN gateway's IP address.
        # @!attribute [rw] source_gateway_ip
        #   @return [::String]
        #     Local VPN gateway's IP address.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     URI of a Compute Engine network where the VPN tunnel is configured.
        # @!attribute [rw] region
        #   @return [::String]
        #     Name of a Google Cloud region where this VPN tunnel is configured.
        # @!attribute [rw] routing_type
        #   @return [::Google::Cloud::NetworkManagement::V1::VpnTunnelInfo::RoutingType]
        #     Type of the routing policy.
        class VpnTunnelInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Types of VPN routing policy. For details, refer to [Networks and Tunnel
          # routing](https://cloud.google.com/network-connectivity/docs/vpn/concepts/choosing-networks-routing/).
          module RoutingType
            # Unspecified type. Default value.
            ROUTING_TYPE_UNSPECIFIED = 0

            # Route based VPN.
            ROUTE_BASED = 1

            # Policy based routing.
            POLICY_BASED = 2

            # Dynamic (BGP) routing.
            DYNAMIC = 3
          end
        end

        # For display only. The specification of the endpoints for the test.
        # EndpointInfo is derived from source and destination Endpoint and validated
        # by the backend data plane model.
        # @!attribute [rw] source_ip
        #   @return [::String]
        #     Source IP address.
        # @!attribute [rw] destination_ip
        #   @return [::String]
        #     Destination IP address.
        # @!attribute [rw] protocol
        #   @return [::String]
        #     IP protocol in string format, for example: "TCP", "UDP", "ICMP".
        # @!attribute [rw] source_port
        #   @return [::Integer]
        #     Source port. Only valid when protocol is TCP or UDP.
        # @!attribute [rw] destination_port
        #   @return [::Integer]
        #     Destination port. Only valid when protocol is TCP or UDP.
        # @!attribute [rw] source_network_uri
        #   @return [::String]
        #     URI of the network where this packet originates from.
        # @!attribute [rw] destination_network_uri
        #   @return [::String]
        #     URI of the network where this packet is sent to.
        class EndpointInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of the final state "deliver" and associated resource.
        # @!attribute [rw] target
        #   @return [::Google::Cloud::NetworkManagement::V1::DeliverInfo::Target]
        #     Target type where the packet is delivered to.
        # @!attribute [rw] resource_uri
        #   @return [::String]
        #     URI of the resource that the packet is delivered to.
        class DeliverInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Deliver target types:
          module Target
            # Target not specified.
            TARGET_UNSPECIFIED = 0

            # Target is a Compute Engine instance.
            INSTANCE = 1

            # Target is the internet.
            INTERNET = 2

            # Target is a Google API.
            GOOGLE_API = 3

            # Target is a Google Kubernetes Engine cluster master.
            GKE_MASTER = 4

            # Target is a Cloud SQL instance.
            CLOUD_SQL_INSTANCE = 5
          end
        end

        # Details of the final state "forward" and associated resource.
        # @!attribute [rw] target
        #   @return [::Google::Cloud::NetworkManagement::V1::ForwardInfo::Target]
        #     Target type where this packet is forwarded to.
        # @!attribute [rw] resource_uri
        #   @return [::String]
        #     URI of the resource that the packet is forwarded to.
        class ForwardInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Forward target types.
          module Target
            # Target not specified.
            TARGET_UNSPECIFIED = 0

            # Forwarded to a VPC peering network.
            PEERING_VPC = 1

            # Forwarded to a Cloud VPN gateway.
            VPN_GATEWAY = 2

            # Forwarded to a Cloud Interconnect connection.
            INTERCONNECT = 3

            # Forwarded to a Google Kubernetes Engine Container cluster master.
            GKE_MASTER = 4

            # Forwarded to the next hop of a custom route imported from a peering VPC.
            IMPORTED_CUSTOM_ROUTE_NEXT_HOP = 5

            # Forwarded to a Cloud SQL instance.
            CLOUD_SQL_INSTANCE = 6
          end
        end

        # Details of the final state "abort" and associated resource.
        # @!attribute [rw] cause
        #   @return [::Google::Cloud::NetworkManagement::V1::AbortInfo::Cause]
        #     Causes that the analysis is aborted.
        # @!attribute [rw] resource_uri
        #   @return [::String]
        #     URI of the resource that caused the abort.
        class AbortInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Abort cause types:
          module Cause
            # Cause is unspecified.
            CAUSE_UNSPECIFIED = 0

            # Aborted due to unknown network.
            # The reachability analysis cannot proceed because the user does not have
            # access to the host project's network configurations, including firewall
            # rules and routes. This happens when the project is a service project and
            # the endpoints being traced are in the host project's network.
            UNKNOWN_NETWORK = 1

            # Aborted because the IP address(es) are unknown.
            UNKNOWN_IP = 2

            # Aborted because no project information can be derived from the test
            # input.
            UNKNOWN_PROJECT = 3

            # Aborted because the user lacks the permission to access all or part of
            # the network configurations required to run the test.
            PERMISSION_DENIED = 4

            # Aborted because no valid source endpoint is derived from the input test
            # request.
            NO_SOURCE_LOCATION = 5

            # Aborted because the source and/or destination endpoint specified in
            # the test are invalid. The possible reasons that an endpoint is
            # invalid include: malformed IP address; nonexistent instance or
            # network URI; IP address not in the range of specified network URI; and
            # instance not owning the network interface in the specified network.
            INVALID_ARGUMENT = 6

            # Aborted because traffic is sent from a public IP to an instance without
            # an external IP.
            NO_EXTERNAL_IP = 7

            # Aborted because none of the traces matches destination information
            # specified in the input test request.
            UNINTENDED_DESTINATION = 8

            # Aborted because the number of steps in the trace exceeding a certain
            # limit which may be caused by routing loop.
            TRACE_TOO_LONG = 9

            # Aborted due to internal server error.
            INTERNAL_ERROR = 10

            # Aborted because the source endpoint could not be found.
            SOURCE_ENDPOINT_NOT_FOUND = 11

            # Aborted because the source network does not match the source endpoint.
            MISMATCHED_SOURCE_NETWORK = 12

            # Aborted because the destination endpoint could not be found.
            DESTINATION_ENDPOINT_NOT_FOUND = 13

            # Aborted because the destination network does not match the destination
            # endpoint.
            MISMATCHED_DESTINATION_NETWORK = 14
          end
        end

        # Details of the final state "drop" and associated resource.
        # @!attribute [rw] cause
        #   @return [::Google::Cloud::NetworkManagement::V1::DropInfo::Cause]
        #     Cause that the packet is dropped.
        # @!attribute [rw] resource_uri
        #   @return [::String]
        #     URI of the resource that caused the drop.
        class DropInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Drop cause types:
          module Cause
            # Cause is unspecified.
            CAUSE_UNSPECIFIED = 0

            # Destination external address cannot be resolved to a known target. If
            # the address is used in a Google Cloud project, provide the project ID
            # as test input.
            UNKNOWN_EXTERNAL_ADDRESS = 1

            # A Compute Engine instance can only send or receive a packet with a
            # foreign IP address if ip_forward is enabled.
            FOREIGN_IP_DISALLOWED = 2

            # Dropped due to a firewall rule, unless allowed due to connection
            # tracking.
            FIREWALL_RULE = 3

            # Dropped due to no routes.
            NO_ROUTE = 4

            # Dropped due to invalid route. Route's next hop is a blackhole.
            ROUTE_BLACKHOLE = 5

            # Packet is sent to a wrong (unintended) network. Example: you trace a
            # packet from VM1:Network1 to VM2:Network2, however, the route configured
            # in Network1 sends the packet destined for VM2's IP addresss to Network3.
            ROUTE_WRONG_NETWORK = 6

            # Packet with internal destination address sent to the internet gateway.
            PRIVATE_TRAFFIC_TO_INTERNET = 7

            # Instance with only an internal IP address tries to access Google API and
            # services, but private Google access is not enabled.
            PRIVATE_GOOGLE_ACCESS_DISALLOWED = 8

            # Instance with only an internal IP address tries to access external hosts,
            # but Cloud NAT is not enabled in the subnet, unless special configurations
            # on a VM allow this connection. For more details, see [Special
            # configurations for VM
            # instances](https://cloud.google.com/vpc/docs/special-configurations).
            NO_EXTERNAL_ADDRESS = 9

            # Destination internal address cannot be resolved to a known target. If
            # this is a shared VPC scenario, verify if the service project ID is
            # provided as test input. Otherwise, verify if the IP address is being
            # used in the project.
            UNKNOWN_INTERNAL_ADDRESS = 10

            # Forwarding rule's protocol and ports do not match the packet header.
            FORWARDING_RULE_MISMATCH = 11

            # Forwarding rule does not have backends configured.
            FORWARDING_RULE_NO_INSTANCES = 12

            # Firewalls block the health check probes to the backends and cause
            # the backends to be unavailable for traffic from the load balancer.
            # For more details, see [Health check firewall
            # rules](https://cloud.google.com/load-balancing/docs/health-checks#firewall_rules).
            FIREWALL_BLOCKING_LOAD_BALANCER_BACKEND_HEALTH_CHECK = 13

            # Packet is sent from or to a Compute Engine instance that is not in a
            # running state.
            INSTANCE_NOT_RUNNING = 14

            # The type of traffic is blocked and the user cannot configure a firewall
            # rule to enable it. See [Always blocked
            # traffic](https://cloud.google.com/vpc/docs/firewalls#blockedtraffic) for
            # more details.
            TRAFFIC_TYPE_BLOCKED = 15

            # Access to Google Kubernetes Engine cluster master's endpoint is not
            # authorized. See [Access to the cluster
            # endpoints](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters#access_to_the_cluster_endpoints)
            # for more details.
            GKE_MASTER_UNAUTHORIZED_ACCESS = 16

            # Access to the Cloud SQL instance endpoint is not authorized.
            # See [Authorizing with authorized
            # networks](https://cloud.google.com/sql/docs/mysql/authorize-networks) for
            # more details.
            CLOUD_SQL_INSTANCE_UNAUTHORIZED_ACCESS = 17

            # Packet was dropped inside Google Kubernetes Engine Service.
            DROPPED_INSIDE_GKE_SERVICE = 18

            # Packet was dropped inside Cloud SQL Service.
            DROPPED_INSIDE_CLOUD_SQL_SERVICE = 19

            # Packet was dropped because there is no peering between the originating
            # network and the Google Managed Services Network.
            GOOGLE_MANAGED_SERVICE_NO_PEERING = 20

            # Packet was dropped because the Cloud SQL instance has neither a private
            # nor a public IP address.
            CLOUD_SQL_INSTANCE_NO_IP_ADDRESS = 21
          end
        end

        # For display only. Metadata associated with a Google Kubernetes Engine (GKE)
        # cluster master.
        # @!attribute [rw] cluster_uri
        #   @return [::String]
        #     URI of a GKE cluster.
        # @!attribute [rw] cluster_network_uri
        #   @return [::String]
        #     URI of a GKE cluster network.
        # @!attribute [rw] internal_ip
        #   @return [::String]
        #     Internal IP address of a GKE cluster master.
        # @!attribute [rw] external_ip
        #   @return [::String]
        #     External IP address of a GKE cluster master.
        class GKEMasterInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # For display only. Metadata associated with a Cloud SQL instance.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Name of a Cloud SQL instance.
        # @!attribute [rw] uri
        #   @return [::String]
        #     URI of a Cloud SQL instance.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     URI of a Cloud SQL instance network or empty string if the instance does
        #     not have one.
        # @!attribute [rw] internal_ip
        #   @return [::String]
        #     Internal IP address of a Cloud SQL instance.
        # @!attribute [rw] external_ip
        #   @return [::String]
        #     External IP address of a Cloud SQL instance.
        # @!attribute [rw] region
        #   @return [::String]
        #     Region in which the Cloud SQL instance is running.
        class CloudSQLInstanceInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
