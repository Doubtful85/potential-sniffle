# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/apigeeconnect/v1/tether.proto for package 'Google.Cloud.ApigeeConnect.V1'
# Original file comments:
# Copyright 2021 Google LLC
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
require 'google/cloud/apigeeconnect/v1/tether_pb'

module Google
  module Cloud
    module ApigeeConnect
      module V1
        module Tether
          # Tether provides a way for the control plane to send HTTP API requests to
          # services in data planes that runs in a remote datacenter without
          # requiring customers to open firewalls on their runtime plane.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.apigeeconnect.v1.Tether'

            # Egress streams egress requests and responses. Logically, this is not
            # actually a streaming request, but uses streaming as a mechanism to flip
            # the client-server relationship of gRPC so that the server can act as a
            # client.
            # The listener, the RPC server, accepts connections from the dialer,
            # the RPC client.
            # The listener streams http requests and the dialer streams http responses.
            rpc :Egress, stream(::Google::Cloud::ApigeeConnect::V1::EgressResponse), stream(::Google::Cloud::ApigeeConnect::V1::EgressRequest)
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
