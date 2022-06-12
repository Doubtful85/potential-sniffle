# Copyright 2020 Google LLC
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


require "helper"

describe Google::Cloud::Spanner::Instance, :backup, :mock_spanner do
  let(:instance_id) { "my-instance-id" }
  let(:database_id) { "my-database-id" }
  let(:instance_grpc) { Google::Spanner::Admin::Instance::V1::Instance.new instance_hash(name: instance_id) }
  let(:instance) { Google::Cloud::Spanner::Instance.from_grpc instance_grpc, spanner.service }

  it "gets a database backup" do
    backup_id = "found-backup"

    get_res = Google::Spanner::Admin::Database::V1::Backup.new \
      backup_hash(instance_id: instance_id, database_id: database_id, backup_id: backup_id)
    mock = Minitest::Mock.new
    mock.expect :get_backup, get_res, [backup_path(instance_id, backup_id)]
    instance.service.mocked_databases = mock

    backup = instance.backup backup_id

    mock.verify

    backup.project_id.must_equal project
    backup.instance_id.must_equal instance_id
    backup.database_id.must_equal database_id
    backup.backup_id.must_equal backup_id

    backup.path.must_equal backup_path(instance_id, backup_id)

    backup.state.must_equal :READY
    backup.must_be :ready?
    backup.wont_be :creating?
  end

  it "returns nil when getting a non-existent backup" do
    not_found_backup_id = "not-found-backup"

    stub = Object.new
    def stub.get_backup *args
      gax_error = Google::Gax::GaxError.new "not found"
      gax_error.instance_variable_set :@cause, GRPC::BadStatus.new(5, "not found")
      raise gax_error
    end
    instance.service.mocked_databases = stub

    backup = instance.backup not_found_backup_id
    backup.must_be :nil?
  end
end
