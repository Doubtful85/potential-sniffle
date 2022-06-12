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


require "gcloud"
require "gcloud/pubsub/project"

module Gcloud
  ##
  # Creates a new object for connecting to the Pub/Sub service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @param [String] project Project identifier for the Pub/Sub service you are
  #   connecting to.
  # @param [String, Hash] keyfile Keyfile downloaded from Google Cloud. If file
  #   path the file must be readable.
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/pubsub`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::Pubsub::Project]
  #
  # @example
  #   require "gcloud/pubsub"
  #
  #   pubsub = Gcloud.pubsub
  #
  #   topic = pubsub.topic "my-topic"
  #   topic.publish "task completed"
  #
  def self.pubsub project = nil, keyfile = nil, scope: nil, retries: nil,
                  timeout: nil
    project ||= Gcloud::Pubsub::Project.default_project
    if ENV["PUBSUB_EMULATOR_HOST"]
      ps = Gcloud::Pubsub::Project.new project, :this_channel_is_insecure
      ps.service.host = ENV["PUBSUB_EMULATOR_HOST"]
      return ps
    end
    if keyfile.nil?
      credentials = Gcloud::Pubsub::Credentials.default scope: scope
    else
      credentials = Gcloud::Pubsub::Credentials.new keyfile, scope: scope
    end
    Gcloud::Pubsub::Project.new(
      Gcloud::Pubsub::Service.new(
        project, credentials, retries: retries, timeout: timeout))
  end

  ##
  # # Google Cloud Pub/Sub
  #
  # Google Cloud Pub/Sub is designed to provide reliable, many-to-many,
  # asynchronous messaging between applications. Publisher applications can
  # send messages to a "topic" and other applications can subscribe to that
  # topic to receive the messages. By decoupling senders and receivers, Google
  # Cloud Pub/Sub allows developers to communicate between independently written
  # applications.
  #
  # The goal of gcloud-ruby is to provide a API that is comfortable to
  # Rubyists. Authentication is handled by {Gcloud#pubsub}. You can provide the
  # project and credential information to connect to the Pub/Sub service, or if
  # you are running on Google Compute Engine this configuration is taken care
  # of for you.
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # topic = pubsub.topic "my-topic"
  # topic.publish "task completed"
  # ```
  #
  # To learn more about Pub/Sub, read the [Google Cloud Pub/Sub Overview
  # ](https://cloud.google.com/pubsub/overview).
  #
  # ## Retrieving Topics
  #
  # A Topic is a named resource to which messages are sent by publishers.
  # A Topic is found by its name. (See {Gcloud::Pubsub::Project#topic})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  # topic = pubsub.topic "my-topic"
  # ```
  #
  # ## Creating a Topic
  #
  # A Topic is created from a Project. (See
  # {Gcloud::Pubsub::Project#create_topic})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  # topic = pubsub.create_topic "my-topic"
  # ```
  #
  # ## Retrieving Subscriptions
  #
  # A Subscription is a named resource representing the stream of messages from
  # a single, specific Topic, to be delivered to the subscribing application. A
  # Subscription is found by its name. (See
  # {Gcloud::Pubsub::Topic#subscription})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # topic = pubsub.topic "my-topic"
  # subscription = topic.subscription "my-topic-subscription"
  # puts subscription.name
  # ```
  #
  # ## Creating a Subscription
  #
  # A Subscription is created from a Topic. (See
  # {Gcloud::Pubsub::Topic#subscribe} and {Gcloud::Pubsub::Project#subscribe})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # topic = pubsub.topic "my-topic"
  # sub = topic.subscribe "my-topic-sub"
  # puts sub.name # => "my-topic-sub"
  # ```
  #
  # The subscription can be created that specifies the number of seconds to
  # wait to be acknowledged as well as an endpoint URL to push the messages to:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # topic = pubsub.topic "my-topic"
  # sub = topic.subscribe "my-topic-sub",
  #                       deadline: 120,
  #                       endpoint: "https://example.com/push"
  # ```
  #
  # ## Publishing Messages
  #
  # Messages are published to a topic. Any message published to a topic without
  # a subscription will be lost. Ensure the topic has a subscription before
  # publishing. (See {Gcloud::Pubsub::Topic#publish} and
  # {Gcloud::Pubsub::Project#publish})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # topic = pubsub.topic "my-topic"
  # msg = topic.publish "new-message"
  # ```
  #
  # Messages can also be published with attributes:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # topic = pubsub.topic "my-topic"
  # msg = topic.publish "new-message",
  #                     foo: :bar,
  #                     this: :that
  # ```
  #
  # Multiple messages can be published at the same time by passing a block:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # topic = pubsub.topic "my-topic"
  # msgs = topic.publish do |batch|
  #   batch.publish "new-message-1", foo: :bar
  #   batch.publish "new-message-2", foo: :baz
  #   batch.publish "new-message-3", foo: :bif
  # end
  # ```
  #
  # ## Pulling Messages
  #
  # Messages are pulled from a Subscription. (See
  # {Gcloud::Pubsub::Subscription#pull})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # msgs = sub.pull
  # ```
  #
  # A maximum number of messages returned can also be specified:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub", max: 10
  # msgs = sub.pull
  # ```
  #
  # The request for messages can also block until messages are available.
  # (See {Gcloud::Pubsub::Subscription#wait_for_messages})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # msgs = sub.wait_for_messages
  # ```
  #
  # ## Acknowledging a Message
  #
  # Messages that are received can be acknowledged in Pub/Sub, marking the
  # message to be removed so it cannot be pulled again.
  #
  # A Message that can be acknowledged is called a ReceivedMessage.
  # ReceivedMessages can be acknowledged one at a time:
  # (See {Gcloud::Pubsub::ReceivedMessage#acknowledge!})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # sub.pull.each { |msg| msg.acknowledge! }
  # ```
  #
  # Or, multiple messages can be acknowledged in a single API call:
  # (See {Gcloud::Pubsub::Subscription#acknowledge})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # received_messages = sub.pull
  # sub.acknowledge received_messages
  # ```
  #
  # ## Modifying a Deadline
  #
  # A message must be acknowledged after it is pulled, or Pub/Sub will mark the
  # message for redelivery. The message acknowledgement deadline can delayed if
  # more time is needed. This will allow more time to process the message before
  # the message is marked for redelivery. (See
  # {Gcloud::Pubsub::ReceivedMessage#delay!})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # received_message = sub.pull.first
  # if received_message
  #   puts received_message.message.data
  #   # Delay for 2 minutes
  #   received_message.delay! 120
  # end
  # ```
  #
  # The message can also be made available for immediate redelivery:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # received_message = sub.pull.first
  # if received_message
  #   puts received_message.message.data
  #   # Mark for redelivery by setting the deadline to now
  #   received_message.delay! 0
  # end
  # ```
  #
  # Multiple messages can be delayed or made available for immediate redelivery:
  # (See {Gcloud::Pubsub::Subscription#delay})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # received_messages = sub.pull
  # sub.delay 120, received_messages
  # ```
  #
  # ## Listening for Messages
  #
  # Long running workers are easy to create with `listen`, which runs an
  # infinitely blocking loop to process messages as they are received. (See
  # {Gcloud::Pubsub::Subscription#listen})
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # sub.listen do |msg|
  #   # process msg
  # end
  # ```
  #
  # Messages are retrieved in batches for efficiency. The number of messages
  # pulled per batch can be limited with the `max` option:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # sub.listen max: 20 do |msg|
  #   # process msg
  # end
  # ```
  #
  # When processing time and the acknowledgement deadline are a concern,
  # messages can be automatically acknowledged as they are pulled with the
  # `autoack` option:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub
  #
  # sub = pubsub.subscription "my-topic-sub"
  # sub.listen autoack: true do |msg|
  #   # process msg
  # end
  # ```
  #
  # ## Configuring retries and timeout
  #
  # You can configure how many times API requests may be automatically retried.
  # When an API request fails, the response will be inspected to see if the
  # request meets criteria indicating that it may succeed on retry, such as
  # `500` and `503` status codes or a specific internal error code such as
  # `rateLimitExceeded`. If it meets the criteria, the request will be retried
  # after a delay. If another error occurs, the delay will be increased before a
  # subsequent attempt, until the `retries` limit is reached.
  #
  # You can also set the request `timeout` value in seconds.
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new
  # pubsub = gcloud.pubsub retries: 10, timeout: 120
  # ```
  #
  # See the [Pub/Sub error codes](https://cloud.google.com/pubsub/error-codes)
  # for a list of error conditions.
  #
  # ## Working Across Projects
  #
  # All calls to the Pub/Sub service use the same project and credentials
  # provided to the {Gcloud#pubsub} method. However, it is common to reference
  # topics or subscriptions in other projects, which can be achieved by using
  # the `project` option. The main credentials must have permissions to the
  # topics and subscriptions in other projects.
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new # my-project-id
  # pubsub = gcloud.pubsub
  #
  # # Get a topic in the current project
  # my_topic = pubsub.topic "my-topic"
  # my_topic.name #=> "projects/my-project-id/topics/my-topic"
  # # Get a topic in another project
  # other_topic = pubsub.topic "other-topic", project: "other-project-id"
  # other_topic.name #=> "projects/other-project-id/topics/other-topic"
  # ```
  #
  # It is possible to create a subscription in the current project that pulls
  # from a topic in another project:
  #
  # ```ruby
  # require "gcloud"
  #
  # gcloud = Gcloud.new # my-project-id
  # pubsub = gcloud.pubsub
  #
  # # Get a topic in another project
  # topic = pubsub.topic "other-topic", project: "other-project-id"
  # # Create a subscription in the current project that pulls from
  # # the topic in another project
  # sub = topic.subscribe "my-sub"
  # sub.name #=> "projects/my-project-id/subscriptions/my-sub"
  # sub.topic.name #=> "projects/other-project-id/topics/other-topic"
  # ```
  #
  # ## Using the Google Cloud Pub/Sub Emulator
  #
  # To develop and test your application locally, you can use the [Google Cloud
  # Pub/Sub Emulator](https://cloud.google.com/pubsub/emulator), which provides
  # [local
  # emulation](https://cloud.google.com/sdk/gcloud/reference/beta/emulators/) of
  # the production Google Cloud Pub/Sub environment. You can start the Google
  # Cloud Pub/Sub emulator using the `gcloud` command-line tool.
  #
  # To configure your ruby code to use the emulator, set the
  # `PUBSUB_EMULATOR_HOST` environment variable to the host and port where the
  # emulator is running. The value can be set as an environment variable in the
  # shell running the ruby code, or can be set directly in the ruby code as
  # shown below.
  #
  # ```ruby
  # require "gcloud"
  #
  # # Make Pub/Sub use the emulator
  # ENV["PUBSUB_EMULATOR_HOST"] = "localhost:8918"
  #
  # gcloud = Gcloud.new "emulator-project-id"
  # pubsub = gcloud.pubsub
  #
  # # Get a topic in the current project
  # my_topic = pubsub.new_topic "my-topic"
  # my_topic.name #=> "projects/emulator-project-id/topics/my-topic"
  # ```
  #
  module Pubsub
  end
end
