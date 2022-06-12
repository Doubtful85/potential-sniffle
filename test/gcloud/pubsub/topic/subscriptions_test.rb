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

describe Gcloud::Pubsub::Topic, :subscriptions, :mock_pubsub do
  let(:topic_name) { "topic-name-goes-here" }
  let(:topic) { Gcloud::Pubsub::Topic.from_grpc Google::Pubsub::V1::Topic.decode_json(topic_json(topic_name)),
                                                pubsub.service }
  it "lists subscriptions" do
    list_req = Google::Pubsub::V1::ListTopicSubscriptionsRequest.new topic: "projects/#{project}/topics/#{topic_name}"
    list_res = Google::Pubsub::V1::ListTopicSubscriptionsResponse.decode_json topic_subscriptions_json(topic_name, 3)
    mock = Minitest::Mock.new
    mock.expect :list_topic_subscriptions, list_res, [list_req]
    topic.service.mocked_publisher = mock

    subs = topic.subscriptions

    mock.verify

    subs.count.must_equal 3
    subs.each do |sub|
      sub.must_be_kind_of Gcloud::Pubsub::Subscription
      sub.must_be :lazy?
    end
  end

  describe "lazy topic that exists" do
    describe "created with autocreate" do
      let(:topic) { Gcloud::Pubsub::Topic.new_lazy topic_name,
                                                   pubsub.service,
                                                   autocreate: true }

      it "lists subscriptions" do
        list_req = Google::Pubsub::V1::ListTopicSubscriptionsRequest.new topic: "projects/#{project}/topics/#{topic_name}"
        list_res = Google::Pubsub::V1::ListTopicSubscriptionsResponse.decode_json topic_subscriptions_json(topic_name, 3)
        mock = Minitest::Mock.new
        mock.expect :list_topic_subscriptions, list_res, [list_req]
        topic.service.mocked_publisher = mock

        subs = topic.subscriptions

        mock.verify

        subs.count.must_equal 3
        subs.each do |sub|
          sub.must_be_kind_of Gcloud::Pubsub::Subscription
          sub.must_be :lazy?
        end
      end
    end

    describe "created without autocomplete" do
      let(:topic) { Gcloud::Pubsub::Topic.new_lazy topic_name,
                                                   pubsub.service,
                                                   autocreate: false }

      it "lists subscriptions" do
        list_req = Google::Pubsub::V1::ListTopicSubscriptionsRequest.new topic: "projects/#{project}/topics/#{topic_name}"
        list_res = Google::Pubsub::V1::ListTopicSubscriptionsResponse.decode_json topic_subscriptions_json(topic_name, 3)
        mock = Minitest::Mock.new
        mock.expect :list_topic_subscriptions, list_res, [list_req]
        topic.service.mocked_publisher = mock

        subs = topic.subscriptions

        mock.verify

        subs.count.must_equal 3
        subs.each do |sub|
          sub.must_be_kind_of Gcloud::Pubsub::Subscription
          sub.must_be :lazy?
        end
      end
    end
  end

  describe "lazy topic that does not exist" do
    describe "created with autocreate" do
      let(:topic) { Gcloud::Pubsub::Topic.new_lazy topic_name,
                                                   pubsub.service,
                                                   autocreate: true }

      it "lists subscriptions" do
        stub = Object.new
        def stub.list_topic_subscriptions *args
          raise GRPC::BadStatus.new 5, "not found"
        end
        topic.service.mocked_publisher = stub

        expect do
          topic.subscriptions
        end.must_raise Gcloud::NotFoundError
      end
    end

    describe "created without autocomplete" do
      let(:topic) { Gcloud::Pubsub::Topic.new_lazy topic_name,
                                                   pubsub.service,
                                                   autocreate: false }

      it "lists subscriptions" do
        stub = Object.new
        def stub.list_topic_subscriptions *args
          raise GRPC::BadStatus.new 5, "not found"
        end
        topic.service.mocked_publisher = stub

        expect do
          topic.subscriptions
        end.must_raise Gcloud::NotFoundError
      end
    end
  end
end
