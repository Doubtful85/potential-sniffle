# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/retail/v2/user_event_service.proto for package 'Google.Cloud.Retail.V2'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/retail/v2/user_event_service_pb'

module Google
  module Cloud
    module Retail
      module V2
        module UserEventService
          # Service for ingesting end user actions on the customer website.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.retail.v2.UserEventService'

            # Writes a single user event.
            rpc :WriteUserEvent, ::Google::Cloud::Retail::V2::WriteUserEventRequest, ::Google::Cloud::Retail::V2::UserEvent
            # Writes a single user event from the browser. This uses a GET request to
            # due to browser restriction of POST-ing to a 3rd party domain.
            #
            # This method is used only by the Retail API JavaScript pixel and Google Tag
            # Manager. Users should not call this method directly.
            rpc :CollectUserEvent, ::Google::Cloud::Retail::V2::CollectUserEventRequest, ::Google::Api::HttpBody
            # Deletes permanently all user events specified by the filter provided.
            # Depending on the number of events specified by the filter, this operation
            # could take hours or days to complete. To test a filter, use the list
            # command first.
            rpc :PurgeUserEvents, ::Google::Cloud::Retail::V2::PurgeUserEventsRequest, ::Google::Longrunning::Operation
            # Bulk import of User events. Request processing might be
            # synchronous. Events that already exist are skipped.
            # Use this method for backfilling historical user events.
            #
            # Operation.response is of type ImportResponse. Note that it is
            # possible for a subset of the items to be successfully inserted.
            # Operation.metadata is of type ImportMetadata.
            rpc :ImportUserEvents, ::Google::Cloud::Retail::V2::ImportUserEventsRequest, ::Google::Longrunning::Operation
            # Triggers a user event rejoin operation with latest product catalog. Events
            # will not be annotated with detailed product information if product is
            # missing from the catalog at the time the user event is ingested, and these
            # events are stored as unjoined events with a limited usage on training and
            # serving. This API can be used to trigger a 'join' operation on specified
            # events with latest version of product catalog. It can also be used to
            # correct events joined with wrong product catalog.
            rpc :RejoinUserEvents, ::Google::Cloud::Retail::V2::RejoinUserEventsRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
