# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4/filters.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/talent/v4/common_pb'
require 'google/protobuf/duration_pb'
require 'google/type/latlng_pb'
require 'google/type/timeofday_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4/filters.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4.JobQuery" do
      optional :query, :string, 1
      optional :query_language_code, :string, 14
      repeated :companies, :string, 2
      repeated :location_filters, :message, 3, "google.cloud.talent.v4.LocationFilter"
      repeated :job_categories, :enum, 4, "google.cloud.talent.v4.JobCategory"
      optional :commute_filter, :message, 5, "google.cloud.talent.v4.CommuteFilter"
      repeated :company_display_names, :string, 6
      optional :compensation_filter, :message, 7, "google.cloud.talent.v4.CompensationFilter"
      optional :custom_attribute_filter, :string, 8
      optional :disable_spell_check, :bool, 9
      repeated :employment_types, :enum, 10, "google.cloud.talent.v4.EmploymentType"
      repeated :language_codes, :string, 11
      optional :publish_time_range, :message, 12, "google.cloud.talent.v4.TimestampRange"
      repeated :excluded_jobs, :string, 13
    end
    add_message "google.cloud.talent.v4.LocationFilter" do
      optional :address, :string, 1
      optional :region_code, :string, 2
      optional :lat_lng, :message, 3, "google.type.LatLng"
      optional :distance_in_miles, :double, 4
      optional :telecommute_preference, :enum, 5, "google.cloud.talent.v4.LocationFilter.TelecommutePreference"
    end
    add_enum "google.cloud.talent.v4.LocationFilter.TelecommutePreference" do
      value :TELECOMMUTE_PREFERENCE_UNSPECIFIED, 0
      value :TELECOMMUTE_EXCLUDED, 1
      value :TELECOMMUTE_ALLOWED, 2
    end
    add_message "google.cloud.talent.v4.CompensationFilter" do
      optional :type, :enum, 1, "google.cloud.talent.v4.CompensationFilter.FilterType"
      repeated :units, :enum, 2, "google.cloud.talent.v4.CompensationInfo.CompensationUnit"
      optional :range, :message, 3, "google.cloud.talent.v4.CompensationInfo.CompensationRange"
      optional :include_jobs_with_unspecified_compensation_range, :bool, 4
    end
    add_enum "google.cloud.talent.v4.CompensationFilter.FilterType" do
      value :FILTER_TYPE_UNSPECIFIED, 0
      value :UNIT_ONLY, 1
      value :UNIT_AND_AMOUNT, 2
      value :ANNUALIZED_BASE_AMOUNT, 3
      value :ANNUALIZED_TOTAL_AMOUNT, 4
    end
    add_message "google.cloud.talent.v4.CommuteFilter" do
      optional :commute_method, :enum, 1, "google.cloud.talent.v4.CommuteMethod"
      optional :start_coordinates, :message, 2, "google.type.LatLng"
      optional :travel_duration, :message, 3, "google.protobuf.Duration"
      optional :allow_imprecise_addresses, :bool, 4
      oneof :traffic_option do
        optional :road_traffic, :enum, 5, "google.cloud.talent.v4.CommuteFilter.RoadTraffic"
        optional :departure_time, :message, 6, "google.type.TimeOfDay"
      end
    end
    add_enum "google.cloud.talent.v4.CommuteFilter.RoadTraffic" do
      value :ROAD_TRAFFIC_UNSPECIFIED, 0
      value :TRAFFIC_FREE, 1
      value :BUSY_HOUR, 2
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4
        JobQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobQuery").msgclass
        LocationFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.LocationFilter").msgclass
        LocationFilter::TelecommutePreference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.LocationFilter.TelecommutePreference").enummodule
        CompensationFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompensationFilter").msgclass
        CompensationFilter::FilterType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompensationFilter.FilterType").enummodule
        CommuteFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CommuteFilter").msgclass
        CommuteFilter::RoadTraffic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CommuteFilter.RoadTraffic").enummodule
      end
    end
  end
end
