# Copyright 2015 Google Inc. All rights reserved.
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

require "helper"

describe Gcloud::Pubsub::Subscription, :delete, :mock_pubsub do
  let(:topic_name) { "topic-name-goes-here" }
  let(:sub_name) { "subscription-name-goes-here" }
  let(:sub_json) { subscription_json topic_name, sub_name }
  let(:sub_hash) { JSON.parse sub_json }
  let(:sub_grpc) { Google::Pubsub::V1::Subscription.decode_json(sub_json) }
  let(:subscription) { Gcloud::Pubsub::Subscription.from_grpc sub_grpc, pubsub.service }

  it "can delete itself" do
    del_req = Google::Pubsub::V1::DeleteSubscriptionRequest.new subscription: "projects/#{project}/subscriptions/#{sub_name}"
    del_res = Google::Protobuf::Empty.new
    mock = Minitest::Mock.new
    mock.expect :delete_subscription, del_res, [del_req]
    pubsub.service.mocked_subscriber = mock

    subscription.delete

    mock.verify
  end

  describe "lazy subscription object of a subscription that does exist" do
    let :subscription do
      Gcloud::Pubsub::Subscription.new_lazy sub_name,
                                            pubsub.service
    end

    it "can delete itself" do
      del_req = Google::Pubsub::V1::DeleteSubscriptionRequest.new subscription: "projects/#{project}/subscriptions/#{sub_name}"
      del_res = Google::Protobuf::Empty.new
      mock = Minitest::Mock.new
      mock.expect :delete_subscription, del_res, [del_req]
      pubsub.service.mocked_subscriber = mock

      subscription.delete

      mock.verify
    end
  end

  describe "lazy subscription object of a subscription that does not exist" do
    let :subscription do
      Gcloud::Pubsub::Subscription.new_lazy sub_name,
                                            pubsub.service
    end

    it "raises NotFoundError when deleting itself" do
      stub = Object.new
      def stub.delete_subscription *args
        raise GRPC::BadStatus.new 5, "not found"
      end
      subscription.service.mocked_subscriber = stub

      expect do
        subscription.delete
      end.must_raise Gcloud::NotFoundError
    end
  end
end
