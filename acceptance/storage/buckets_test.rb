# Copyright 2016 Google Inc. All rights reserved.
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

require "storage_helper"

describe "Storage", :buckets, :storage do
  let(:buckets) do
    bucket_names.map do |b|
      storage.bucket(b) ||
      storage.create_bucket(b)
    end
  end
  let(:bucket_names) { $bucket_names }

  before do
    buckets # always create the buckets
  end

  it "gets all buckets" do
    storage.buckets.all do |bucket|
      bucket.must_be_kind_of Gcloud::Storage::Bucket
    end
  end

  it "gets pages of buckets" do
    first_buckets = storage.buckets max: 2
    first_buckets.next?.must_equal true
    first_buckets.each { |b| b.must_be_kind_of Gcloud::Storage::Bucket }
    second_buckets = first_buckets.next
    second_buckets.each { |b| b.must_be_kind_of Gcloud::Storage::Bucket }
  end

  it "gets all buckets with request_limit" do
    storage.buckets(max: 2).all(request_limit: 1) do |bucket|
      bucket.must_be_kind_of Gcloud::Storage::Bucket
    end
  end
end
