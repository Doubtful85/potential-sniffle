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


require "gcloud/version"

##
# # Google Cloud
#
# The gcloud-ruby library is the official library for interacting with Google
# Cloud Platform. Google Cloud Platform is a set of modular cloud-based services
# that allow you to create anything from simple websites to complex
# applications.
#
# The goal of gcloud-ruby is to provide a API that is familiar and comfortable
# to Rubyists. Authentication is handled by providing project and credential
# information, or if you are running on Google Compute Engine this configuration
# is taken care of for you.
#
# You can learn more about various options for connection on the [Authentication
# Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
#
module Gcloud
  ##
  # Creates a new object for connecting to Google Cloud.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @param [String] project Project identifier for the Pub/Sub service you are
  #   connecting to.
  # @param [String, Hash] keyfile Keyfile downloaded from Google Cloud. If file
  #   path the file must be readable.
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   datastore = gcloud.datastore
  #   pubsub  = gcloud.pubsub
  #   storage = gcloud.storage
  #
  def self.new project = nil, keyfile = nil, retries: nil, timeout: nil
    gcloud = Object.new
    gcloud.instance_variable_set "@project", project
    gcloud.instance_variable_set "@keyfile", keyfile
    gcloud.instance_variable_set "@retries", retries
    gcloud.instance_variable_set "@timeout", timeout
    gcloud.extend Gcloud
    gcloud
  end

  ##
  # Creates a new object for connecting to the Datastore service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/datastore`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::Datastore::Dataset]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   datastore = gcloud.datastore
  #
  #   task = datastore.entity "Task" do |t|
  #     t["type"] = "Personal"
  #     t["done"] = false
  #     t["priority"] = 4
  #     t["description"] = "Learn Cloud Datastore"
  #   end
  #
  #   datastore.save task
  #
  # @example You shouldn't need to override the default scope, but you can:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   platform_scope = "https://www.googleapis.com/auth/cloud-platform"
  #   datastore = gcloud.datastore scope: platform_scope
  #
  def datastore scope: nil, retries: nil, timeout: nil
    require "gcloud/datastore"
    Gcloud.datastore @project, @keyfile, scope: scope,
                                         retries: (retries || @retries),
                                         timeout: (timeout || @timeout)
  end

  ##
  # Creates a new object for connecting to the Storage service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @see https://cloud.google.com/storage/docs/authentication#oauth Storage
  #   OAuth 2.0 Authentication
  #
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/devstorage.full_control`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::Storage::Project]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   storage = gcloud.storage
  #   bucket = storage.bucket "my-bucket"
  #   file = bucket.file "path/to/my-file.ext"
  #
  # @example The default scope can be overridden with the `scope` option:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   readonly_scope = "https://www.googleapis.com/auth/devstorage.read_only"
  #   readonly_storage = gcloud.storage scope: readonly_scope
  #
  def storage scope: nil, retries: nil, timeout: nil
    require "gcloud/storage"
    Gcloud.storage @project, @keyfile, scope: scope,
                                       retries: (retries || @retries),
                                       timeout: (timeout || @timeout)
  end

  ##
  # Creates a new object for connecting to the Pub/Sub service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
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
  #   require "gcloud"
  #
  #   gcloud = Gcloud.new
  #   pubsub = gcloud.pubsub
  #   topic = pubsub.topic "my-topic"
  #   topic.publish "task completed"
  #
  # @example The default scope can be overridden with the `scope` option:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   platform_scope = "https://www.googleapis.com/auth/cloud-platform"
  #   pubsub = gcloud.pubsub scope: platform_scope
  #
  def pubsub scope: nil, retries: nil, timeout: nil
    require "gcloud/pubsub"
    Gcloud.pubsub @project, @keyfile, scope: scope,
                                      retries: (retries || @retries),
                                      timeout: (timeout || @timeout)
  end

  ##
  # Creates a new object for connecting to the BigQuery service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/bigquery`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default request timeout in seconds. Optional.
  #
  # @return [Gcloud::Bigquery::Project]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud = Gcloud.new
  #   bigquery = gcloud.bigquery
  #   dataset = bigquery.dataset "my-dataset"
  #   table = dataset.table "my-table"
  #   table.data.each do |row|
  #     puts row
  #   end
  #
  # @example The default scope can be overridden with the `scope` option:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   platform_scope = "https://www.googleapis.com/auth/cloud-platform"
  #   bigquery = gcloud.bigquery scope: platform_scope
  #
  def bigquery scope: nil, retries: nil, timeout: nil
    require "gcloud/bigquery"
    Gcloud.bigquery @project, @keyfile, scope: scope,
                                        retries: (retries || @retries),
                                        timeout: (timeout || @timeout)
  end

  ##
  # Creates a new object for connecting to the DNS service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/ndev.clouddns.readwrite`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::Dns::Project]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud = Gcloud.new
  #   dns = gcloud.dns
  #   zone = dns.zone "example-zone"
  #   zone.records.each do |record|
  #     puts record.name
  #   end
  #
  # @example The default scope can be overridden with the `scope` option:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   readonly_scope = "https://www.googleapis.com/auth/ndev.clouddns.readonly"
  #   dns = gcloud.dns scope: readonly_scope
  #
  def dns scope: nil, retries: nil, timeout: nil
    require "gcloud/dns"
    Gcloud.dns @project, @keyfile, scope: scope,
                                   retries: (retries || @retries),
                                   timeout: (timeout || @timeout)
  end

  # rubocop:disable Metrics/LineLength
  # Disabled because the readonly scope in the example code is long and we can't
  # shorten it.

  ##
  # Creates a new object for connecting to the Resource Manager service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/cloud-platform`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::ResourceManager::Manager]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud = Gcloud.new
  #   resource_manager = gcloud.resource_manager
  #   resource_manager.projects.each do |project|
  #     puts projects.project_id
  #   end
  #
  # @example The default scope can be overridden with the `scope` option:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   readonly_scope = "https://www.googleapis.com/auth/cloudresourcemanager.readonly"
  #   resource_manager = gcloud.resource_manager scope: readonly_scope
  #
  def resource_manager scope: nil, retries: nil, timeout: nil
    require "gcloud/resource_manager"
    Gcloud.resource_manager @keyfile, scope: scope,
                                      retries: (retries || @retries),
                                      timeout: (timeout || @timeout)
  end

  # rubocop:enable Metrics/LineLength

  ##
  # Creates a new object for connecting to the Stackdriver Logging service.
  # Each call creates a new connection.
  #
  # For more information on connecting to Google Cloud see the [Authentication
  # Guide](https://googlecloudplatform.github.io/gcloud-ruby/#/docs/guides/authentication).
  #
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/logging.admin`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::Logging::Project]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud = Gcloud.new
  #   logging = gcloud.logging
  #   # ...
  #
  # @example The default scope can be overridden with the `scope` option:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   platform_scope = "https://www.googleapis.com/auth/cloud-platform"
  #   logging = gcloud.logging scope: platform_scope
  #
  def logging scope: nil, retries: nil, timeout: nil
    require "gcloud/logging"
    Gcloud.logging @project, @keyfile, scope: scope,
                                       retries: (retries || @retries),
                                       timeout: (timeout || @timeout)
  end

  ##
  # Creates a new object for connecting to the Translate service.
  # Each call creates a new connection.
  #
  # Unlike other Cloud Platform services, which authenticate using a project ID
  # and OAuth 2.0 credentials, Google Translate API requires a public API access
  # key. (This may change in future releases of Google Translate API.) Follow
  # the general instructions at [Identifying your application to
  # Google](https://cloud.google.com/translate/v2/using_rest#auth), and the
  # specific instructions for [Server
  # keys](https://cloud.google.com/translate/v2/using_rest#creating-server-api-keys).
  #
  # @param [String] key a public API access key (not an OAuth 2.0 token)
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::Translate::Api]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud = Gcloud.new
  #   translate = gcloud.translate "api-key-abc123XYZ789"
  #
  #   translation = translate.translate "Hello world!", to: "la"
  #   translation.text #=> "Salve mundi!"
  #
  # @example Using API Key from the environment variable.
  #   require "gcloud"
  #
  #   ENV["TRANSLATE_KEY"] = "api-key-abc123XYZ789"
  #
  #   gcloud = Gcloud.new
  #   translate = gcloud.translate
  #
  #   translation = translate.translate "Hello world!", to: "la"
  #   translation.text #=> "Salve mundi!"
  #
  def translate key = nil, retries: nil, timeout: nil
    require "gcloud/translate"
    Gcloud.translate key, retries: (retries || @retries),
                          timeout: (timeout || @timeout)
  end

  ##
  # Creates a new object for connecting to the Vision service.
  # Each call creates a new connection.
  #
  # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
  #   set of resources and operations that the connection can access. See [Using
  #   OAuth 2.0 to Access Google
  #   APIs](https://developers.google.com/identity/protocols/OAuth2).
  #
  #   The default scope is:
  #
  #   * `https://www.googleapis.com/auth/cloud-platform`
  # @param [Integer] retries Number of times to retry requests on server error.
  #   The default value is `3`. Optional.
  # @param [Integer] timeout Default timeout to use in requests. Optional.
  #
  # @return [Gcloud::Vision::Project]
  #
  # @example
  #   require "gcloud"
  #
  #   gcloud = Gcloud.new
  #   vision = gcloud.vision
  #
  #   image = vision.image "path/to/landmark.jpg"
  #
  #   landmark = image.landmark
  #   landmark.description #=> "Mount Rushmore"
  #
  # @example The default scope can be overridden with the `scope` option:
  #   require "gcloud"
  #
  #   gcloud  = Gcloud.new
  #   platform_scope = "https://www.googleapis.com/auth/cloud-platform"
  #   vision = gcloud.vision scope: platform_scope
  #
  def vision scope: nil, retries: nil, timeout: nil
    require "gcloud/vision"
    Gcloud.vision @project, @keyfile, scope: scope,
                                      retries: (retries || @retries),
                                      timeout: (timeout || @timeout)
  end
end
