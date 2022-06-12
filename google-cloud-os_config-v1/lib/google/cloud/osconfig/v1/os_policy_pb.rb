# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/osconfig/v1/os_policy.proto

require 'google/api/field_behavior_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/osconfig/v1/os_policy.proto", :syntax => :proto3) do
    add_message "google.cloud.osconfig.v1.OSPolicy" do
      optional :id, :string, 1
      optional :description, :string, 2
      optional :mode, :enum, 3, "google.cloud.osconfig.v1.OSPolicy.Mode"
      repeated :resource_groups, :message, 4, "google.cloud.osconfig.v1.OSPolicy.ResourceGroup"
      optional :allow_no_resource_group_match, :bool, 5
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.InventoryFilter" do
      optional :os_short_name, :string, 1
      optional :os_version, :string, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource" do
      optional :id, :string, 1
      oneof :resource_type do
        optional :pkg, :message, 2, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource"
        optional :repository, :message, 3, "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource"
        optional :exec, :message, 4, "google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource"
        optional :file, :message, 5, "google.cloud.osconfig.v1.OSPolicy.Resource.FileResource"
      end
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.File" do
      optional :allow_insecure, :bool, 4
      oneof :type do
        optional :remote, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.File.Remote"
        optional :gcs, :message, 2, "google.cloud.osconfig.v1.OSPolicy.Resource.File.Gcs"
        optional :local_path, :string, 3
      end
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.File.Remote" do
      optional :uri, :string, 1
      optional :sha256_checksum, :string, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.File.Gcs" do
      optional :bucket, :string, 1
      optional :object, :string, 2
      optional :generation, :int64, 3
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource" do
      optional :desired_state, :enum, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.DesiredState"
      oneof :system_package do
        optional :apt, :message, 2, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.APT"
        optional :deb, :message, 3, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.Deb"
        optional :yum, :message, 4, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.YUM"
        optional :zypper, :message, 5, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.Zypper"
        optional :rpm, :message, 6, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.RPM"
        optional :googet, :message, 7, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.GooGet"
        optional :msi, :message, 8, "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.MSI"
      end
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.Deb" do
      optional :source, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.File"
      optional :pull_deps, :bool, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.APT" do
      optional :name, :string, 1
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.RPM" do
      optional :source, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.File"
      optional :pull_deps, :bool, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.YUM" do
      optional :name, :string, 1
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.Zypper" do
      optional :name, :string, 1
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.GooGet" do
      optional :name, :string, 1
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.MSI" do
      optional :source, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.File"
      repeated :properties, :string, 2
    end
    add_enum "google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.DesiredState" do
      value :DESIRED_STATE_UNSPECIFIED, 0
      value :INSTALLED, 1
      value :REMOVED, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource" do
      oneof :repository do
        optional :apt, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.AptRepository"
        optional :yum, :message, 2, "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.YumRepository"
        optional :zypper, :message, 3, "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.ZypperRepository"
        optional :goo, :message, 4, "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.GooRepository"
      end
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.AptRepository" do
      optional :archive_type, :enum, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType"
      optional :uri, :string, 2
      optional :distribution, :string, 3
      repeated :components, :string, 4
      optional :gpg_key, :string, 5
    end
    add_enum "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType" do
      value :ARCHIVE_TYPE_UNSPECIFIED, 0
      value :DEB, 1
      value :DEB_SRC, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.YumRepository" do
      optional :id, :string, 1
      optional :display_name, :string, 2
      optional :base_url, :string, 3
      repeated :gpg_keys, :string, 4
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.ZypperRepository" do
      optional :id, :string, 1
      optional :display_name, :string, 2
      optional :base_url, :string, 3
      repeated :gpg_keys, :string, 4
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.GooRepository" do
      optional :name, :string, 1
      optional :url, :string, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource" do
      optional :validate, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource.Exec"
      optional :enforce, :message, 2, "google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource.Exec"
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource.Exec" do
      repeated :args, :string, 3
      optional :interpreter, :enum, 4, "google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource.Exec.Interpreter"
      optional :output_file_path, :string, 5
      oneof :source do
        optional :file, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.File"
        optional :script, :string, 2
      end
    end
    add_enum "google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource.Exec.Interpreter" do
      value :INTERPRETER_UNSPECIFIED, 0
      value :NONE, 1
      value :SHELL, 2
      value :POWERSHELL, 3
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.Resource.FileResource" do
      optional :path, :string, 3
      optional :state, :enum, 4, "google.cloud.osconfig.v1.OSPolicy.Resource.FileResource.DesiredState"
      optional :permissions, :string, 5
      oneof :source do
        optional :file, :message, 1, "google.cloud.osconfig.v1.OSPolicy.Resource.File"
        optional :content, :string, 2
      end
    end
    add_enum "google.cloud.osconfig.v1.OSPolicy.Resource.FileResource.DesiredState" do
      value :DESIRED_STATE_UNSPECIFIED, 0
      value :PRESENT, 1
      value :ABSENT, 2
      value :CONTENTS_MATCH, 3
    end
    add_message "google.cloud.osconfig.v1.OSPolicy.ResourceGroup" do
      repeated :inventory_filters, :message, 1, "google.cloud.osconfig.v1.OSPolicy.InventoryFilter"
      repeated :resources, :message, 2, "google.cloud.osconfig.v1.OSPolicy.Resource"
    end
    add_enum "google.cloud.osconfig.v1.OSPolicy.Mode" do
      value :MODE_UNSPECIFIED, 0
      value :VALIDATION, 1
      value :ENFORCEMENT, 2
    end
  end
end

module Google
  module Cloud
    module OsConfig
      module V1
        OSPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy").msgclass
        OSPolicy::InventoryFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.InventoryFilter").msgclass
        OSPolicy::Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource").msgclass
        OSPolicy::Resource::File = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.File").msgclass
        OSPolicy::Resource::File::Remote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.File.Remote").msgclass
        OSPolicy::Resource::File::Gcs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.File.Gcs").msgclass
        OSPolicy::Resource::PackageResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource").msgclass
        OSPolicy::Resource::PackageResource::Deb = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.Deb").msgclass
        OSPolicy::Resource::PackageResource::APT = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.APT").msgclass
        OSPolicy::Resource::PackageResource::RPM = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.RPM").msgclass
        OSPolicy::Resource::PackageResource::YUM = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.YUM").msgclass
        OSPolicy::Resource::PackageResource::Zypper = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.Zypper").msgclass
        OSPolicy::Resource::PackageResource::GooGet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.GooGet").msgclass
        OSPolicy::Resource::PackageResource::MSI = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.MSI").msgclass
        OSPolicy::Resource::PackageResource::DesiredState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.PackageResource.DesiredState").enummodule
        OSPolicy::Resource::RepositoryResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource").msgclass
        OSPolicy::Resource::RepositoryResource::AptRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.AptRepository").msgclass
        OSPolicy::Resource::RepositoryResource::AptRepository::ArchiveType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType").enummodule
        OSPolicy::Resource::RepositoryResource::YumRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.YumRepository").msgclass
        OSPolicy::Resource::RepositoryResource::ZypperRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.ZypperRepository").msgclass
        OSPolicy::Resource::RepositoryResource::GooRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.RepositoryResource.GooRepository").msgclass
        OSPolicy::Resource::ExecResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource").msgclass
        OSPolicy::Resource::ExecResource::Exec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource.Exec").msgclass
        OSPolicy::Resource::ExecResource::Exec::Interpreter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.ExecResource.Exec.Interpreter").enummodule
        OSPolicy::Resource::FileResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.FileResource").msgclass
        OSPolicy::Resource::FileResource::DesiredState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Resource.FileResource.DesiredState").enummodule
        OSPolicy::ResourceGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.ResourceGroup").msgclass
        OSPolicy::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicy.Mode").enummodule
      end
    end
  end
end
