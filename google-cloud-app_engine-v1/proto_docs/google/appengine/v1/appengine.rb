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
    module AppEngine
      module V1
        # Request message for `Applications.GetApplication`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the Application resource to get. Example: `apps/myapp`.
        class GetApplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Applications.CreateApplication`.
        # @!attribute [rw] application
        #   @return [::Google::Cloud::AppEngine::V1::Application]
        #     Application configuration.
        class CreateApplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Applications.UpdateApplication`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the Application resource to update. Example: `apps/myapp`.
        # @!attribute [rw] application
        #   @return [::Google::Cloud::AppEngine::V1::Application]
        #     An Application containing the updated resource.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Standard field mask for the set of fields to be updated.
        class UpdateApplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for 'Applications.RepairApplication'.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the application to repair. Example: `apps/myapp`
        class RepairApplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Services.ListServices`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent Application resource. Example: `apps/myapp`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum results to return per page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListServicesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `Services.ListServices`.
        # @!attribute [rw] services
        #   @return [::Array<::Google::Cloud::AppEngine::V1::Service>]
        #     The services belonging to the requested application.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListServicesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Services.GetService`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example: `apps/myapp/services/default`.
        class GetServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Services.UpdateService`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource to update. Example: `apps/myapp/services/default`.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::AppEngine::V1::Service]
        #     A Service resource containing the updated service. Only fields set in the
        #     field mask will be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Standard field mask for the set of fields to be updated.
        # @!attribute [rw] migrate_traffic
        #   @return [::Boolean]
        #     Set to `true` to gradually shift traffic to one or more versions that you
        #     specify. By default, traffic is shifted immediately.
        #     For gradual traffic migration, the target versions
        #     must be located within instances that are configured for both
        #     [warmup requests](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#InboundServiceType)
        #     and
        #     [automatic scaling](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#AutomaticScaling).
        #     You must specify the
        #     [`shardBy`](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services#ShardBy)
        #     field in the Service resource. Gradual traffic migration is not
        #     supported in the App Engine flexible environment. For examples, see
        #     [Migrating and Splitting Traffic](https://cloud.google.com/appengine/docs/admin-api/migrating-splitting-traffic).
        class UpdateServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Services.DeleteService`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example: `apps/myapp/services/default`.
        class DeleteServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Versions.ListVersions`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent Service resource. Example:
        #     `apps/myapp/services/default`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::AppEngine::V1::VersionView]
        #     Controls the set of fields returned in the `List` response.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum results to return per page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListVersionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `Versions.ListVersions`.
        # @!attribute [rw] versions
        #   @return [::Array<::Google::Cloud::AppEngine::V1::Version>]
        #     The versions belonging to the requested service.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListVersionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Versions.GetVersion`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example:
        #     `apps/myapp/services/default/versions/v1`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::AppEngine::V1::VersionView]
        #     Controls the set of fields returned in the `Get` response.
        class GetVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Versions.CreateVersion`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent resource to create this version under. Example:
        #     `apps/myapp/services/default`.
        # @!attribute [rw] version
        #   @return [::Google::Cloud::AppEngine::V1::Version]
        #     Application deployment configuration.
        class CreateVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Versions.UpdateVersion`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource to update. Example:
        #     `apps/myapp/services/default/versions/1`.
        # @!attribute [rw] version
        #   @return [::Google::Cloud::AppEngine::V1::Version]
        #     A Version containing the updated resource. Only fields set in the field
        #     mask will be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Standard field mask for the set of fields to be updated.
        class UpdateVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Versions.DeleteVersion`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example:
        #     `apps/myapp/services/default/versions/v1`.
        class DeleteVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Instances.ListInstances`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent Version resource. Example:
        #     `apps/myapp/services/default/versions/v1`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum results to return per page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListInstancesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `Instances.ListInstances`.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::AppEngine::V1::Instance>]
        #     The instances belonging to the requested version.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListInstancesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Instances.GetInstance`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example:
        #     `apps/myapp/services/default/versions/v1/instances/instance-1`.
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Instances.DeleteInstance`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example:
        #     `apps/myapp/services/default/versions/v1/instances/instance-1`.
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Instances.DebugInstance`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example:
        #     `apps/myapp/services/default/versions/v1/instances/instance-1`.
        # @!attribute [rw] ssh_key
        #   @return [::String]
        #     Public SSH key to add to the instance. Examples:
        #
        #     * `[USERNAME]:ssh-rsa [KEY_VALUE] [USERNAME]`
        #     * `[USERNAME]:ssh-rsa [KEY_VALUE] google-ssh {"userName":"[USERNAME]","expireOn":"[EXPIRE_TIME]"}`
        #
        #     For more information, see
        #     [Adding and Removing SSH Keys](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys).
        class DebugInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Firewall.ListIngressRules`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the Firewall collection to retrieve.
        #     Example: `apps/myapp/firewall/ingressRules`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum results to return per page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        # @!attribute [rw] matching_address
        #   @return [::String]
        #     A valid IP Address. If set, only rules matching this address will be
        #     returned. The first returned rule will be the rule that fires on requests
        #     from this IP.
        class ListIngressRulesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `Firewall.ListIngressRules`.
        # @!attribute [rw] ingress_rules
        #   @return [::Array<::Google::Cloud::AppEngine::V1::FirewallRule>]
        #     The ingress FirewallRules for this application.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListIngressRulesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Firewall.BatchUpdateIngressRules`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the Firewall collection to set.
        #     Example: `apps/myapp/firewall/ingressRules`.
        # @!attribute [rw] ingress_rules
        #   @return [::Array<::Google::Cloud::AppEngine::V1::FirewallRule>]
        #     A list of FirewallRules to replace the existing set.
        class BatchUpdateIngressRulesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `Firewall.UpdateAllIngressRules`.
        # @!attribute [rw] ingress_rules
        #   @return [::Array<::Google::Cloud::AppEngine::V1::FirewallRule>]
        #     The full list of ingress FirewallRules for this application.
        class BatchUpdateIngressRulesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Firewall.CreateIngressRule`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent Firewall collection in which to create a new rule.
        #     Example: `apps/myapp/firewall/ingressRules`.
        # @!attribute [rw] rule
        #   @return [::Google::Cloud::AppEngine::V1::FirewallRule]
        #     A FirewallRule containing the new resource.
        #
        #     The user may optionally provide a position at which the new rule will be
        #     placed. The positions define a sequential list starting at 1. If a rule
        #     already exists at the given position, rules greater than the provided
        #     position will be moved forward by one.
        #
        #     If no position is provided, the server will place the rule as the second to
        #     last rule in the sequence before the required default allow-all or deny-all
        #     rule.
        class CreateIngressRuleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Firewall.GetIngressRule`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the Firewall resource to retrieve.
        #     Example: `apps/myapp/firewall/ingressRules/100`.
        class GetIngressRuleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Firewall.UpdateIngressRule`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the Firewall resource to update.
        #     Example: `apps/myapp/firewall/ingressRules/100`.
        # @!attribute [rw] rule
        #   @return [::Google::Cloud::AppEngine::V1::FirewallRule]
        #     A FirewallRule containing the updated resource
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Standard field mask for the set of fields to be updated.
        class UpdateIngressRuleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Firewall.DeleteIngressRule`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the Firewall resource to delete.
        #     Example: `apps/myapp/firewall/ingressRules/100`.
        class DeleteIngressRuleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AuthorizedDomains.ListAuthorizedDomains`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent Application resource. Example: `apps/myapp`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum results to return per page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListAuthorizedDomainsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AuthorizedDomains.ListAuthorizedDomains`.
        # @!attribute [rw] domains
        #   @return [::Array<::Google::Cloud::AppEngine::V1::AuthorizedDomain>]
        #     The authorized domains belonging to the user.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListAuthorizedDomainsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AuthorizedCertificates.ListAuthorizedCertificates`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent `Application` resource. Example: `apps/myapp`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::AppEngine::V1::AuthorizedCertificateView]
        #     Controls the set of fields returned in the `LIST` response.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum results to return per page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListAuthorizedCertificatesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AuthorizedCertificates.ListAuthorizedCertificates`.
        # @!attribute [rw] certificates
        #   @return [::Array<::Google::Cloud::AppEngine::V1::AuthorizedCertificate>]
        #     The SSL certificates the user is authorized to administer.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListAuthorizedCertificatesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AuthorizedCertificates.GetAuthorizedCertificate`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example:
        #     `apps/myapp/authorizedCertificates/12345`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::AppEngine::V1::AuthorizedCertificateView]
        #     Controls the set of fields returned in the `GET` response.
        class GetAuthorizedCertificateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AuthorizedCertificates.CreateAuthorizedCertificate`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent `Application` resource. Example: `apps/myapp`.
        # @!attribute [rw] certificate
        #   @return [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
        #     SSL certificate data.
        class CreateAuthorizedCertificateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AuthorizedCertificates.UpdateAuthorizedCertificate`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource to update. Example:
        #     `apps/myapp/authorizedCertificates/12345`.
        # @!attribute [rw] certificate
        #   @return [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
        #     An `AuthorizedCertificate` containing the updated resource. Only fields set
        #     in the field mask will be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Standard field mask for the set of fields to be updated. Updates are only
        #     supported on the `certificate_raw_data` and `display_name` fields.
        class UpdateAuthorizedCertificateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AuthorizedCertificates.DeleteAuthorizedCertificate`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource to delete. Example:
        #     `apps/myapp/authorizedCertificates/12345`.
        class DeleteAuthorizedCertificateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `DomainMappings.ListDomainMappings`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent Application resource. Example: `apps/myapp`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum results to return per page.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListDomainMappingsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `DomainMappings.ListDomainMappings`.
        # @!attribute [rw] domain_mappings
        #   @return [::Array<::Google::Cloud::AppEngine::V1::DomainMapping>]
        #     The domain mappings for the application.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token for fetching the next page of results.
        class ListDomainMappingsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `DomainMappings.GetDomainMapping`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource requested. Example:
        #     `apps/myapp/domainMappings/example.com`.
        class GetDomainMappingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `DomainMappings.CreateDomainMapping`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Name of the parent Application resource. Example: `apps/myapp`.
        # @!attribute [rw] domain_mapping
        #   @return [::Google::Cloud::AppEngine::V1::DomainMapping]
        #     Domain mapping configuration.
        # @!attribute [rw] override_strategy
        #   @return [::Google::Cloud::AppEngine::V1::DomainOverrideStrategy]
        #     Whether the domain creation should override any existing mappings for this
        #     domain. By default, overrides are rejected.
        class CreateDomainMappingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `DomainMappings.UpdateDomainMapping`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource to update. Example:
        #     `apps/myapp/domainMappings/example.com`.
        # @!attribute [rw] domain_mapping
        #   @return [::Google::Cloud::AppEngine::V1::DomainMapping]
        #     A domain mapping containing the updated resource. Only fields set
        #     in the field mask will be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Standard field mask for the set of fields to be updated.
        class UpdateDomainMappingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `DomainMappings.DeleteDomainMapping`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the resource to delete. Example:
        #     `apps/myapp/domainMappings/example.com`.
        class DeleteDomainMappingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Fields that should be returned when {::Google::Cloud::AppEngine::V1::Version Version} resources
        # are retrieved.
        module VersionView
          # Basic version information including scaling and inbound services,
          # but not detailed deployment information.
          BASIC = 0

          # The information from `BASIC`, plus detailed information about the
          # deployment. This format is required when creating resources, but
          # is not returned in `Get` or `List` by default.
          FULL = 1
        end

        # Fields that should be returned when an AuthorizedCertificate resource is
        # retrieved.
        module AuthorizedCertificateView
          # Basic certificate information, including applicable domains and expiration
          # date.
          BASIC_CERTIFICATE = 0

          # The information from `BASIC_CERTIFICATE`, plus detailed information on the
          # domain mappings that have this certificate mapped.
          FULL_CERTIFICATE = 1
        end

        # Override strategy for mutating an existing mapping.
        module DomainOverrideStrategy
          # Strategy unspecified. Defaults to `STRICT`.
          UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY = 0

          # Overrides not allowed. If a mapping already exists for the
          # specified domain, the request will return an ALREADY_EXISTS (409).
          STRICT = 1

          # Overrides allowed. If a mapping already exists for the specified domain,
          # the request will overwrite it. Note that this might stop another
          # Google product from serving. For example, if the domain is
          # mapped to another App Engine application, that app will no
          # longer serve from that domain.
          OVERRIDE = 2
        end
      end
    end
  end
end
