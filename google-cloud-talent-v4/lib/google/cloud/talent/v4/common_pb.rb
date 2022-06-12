# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4/common.proto

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/latlng_pb'
require 'google/type/money_pb'
require 'google/type/postal_address_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4/common.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4.TimestampRange" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.talent.v4.Location" do
      optional :location_type, :enum, 1, "google.cloud.talent.v4.Location.LocationType"
      optional :postal_address, :message, 2, "google.type.PostalAddress"
      optional :lat_lng, :message, 3, "google.type.LatLng"
      optional :radius_miles, :double, 4
    end
    add_enum "google.cloud.talent.v4.Location.LocationType" do
      value :LOCATION_TYPE_UNSPECIFIED, 0
      value :COUNTRY, 1
      value :ADMINISTRATIVE_AREA, 2
      value :SUB_ADMINISTRATIVE_AREA, 3
      value :LOCALITY, 4
      value :POSTAL_CODE, 5
      value :SUB_LOCALITY, 6
      value :SUB_LOCALITY_1, 7
      value :SUB_LOCALITY_2, 8
      value :NEIGHBORHOOD, 9
      value :STREET_ADDRESS, 10
    end
    add_message "google.cloud.talent.v4.RequestMetadata" do
      optional :domain, :string, 1
      optional :session_id, :string, 2
      optional :user_id, :string, 3
      optional :allow_missing_ids, :bool, 4
      optional :device_info, :message, 5, "google.cloud.talent.v4.DeviceInfo"
    end
    add_message "google.cloud.talent.v4.ResponseMetadata" do
      optional :request_id, :string, 1
    end
    add_message "google.cloud.talent.v4.DeviceInfo" do
      optional :device_type, :enum, 1, "google.cloud.talent.v4.DeviceInfo.DeviceType"
      optional :id, :string, 2
    end
    add_enum "google.cloud.talent.v4.DeviceInfo.DeviceType" do
      value :DEVICE_TYPE_UNSPECIFIED, 0
      value :WEB, 1
      value :MOBILE_WEB, 2
      value :ANDROID, 3
      value :IOS, 4
      value :BOT, 5
      value :OTHER, 6
    end
    add_message "google.cloud.talent.v4.CustomAttribute" do
      repeated :string_values, :string, 1
      repeated :long_values, :int64, 2
      optional :filterable, :bool, 3
      optional :keyword_searchable, :bool, 4
    end
    add_message "google.cloud.talent.v4.SpellingCorrection" do
      optional :corrected, :bool, 1
      optional :corrected_text, :string, 2
      optional :corrected_html, :string, 3
    end
    add_message "google.cloud.talent.v4.CompensationInfo" do
      repeated :entries, :message, 1, "google.cloud.talent.v4.CompensationInfo.CompensationEntry"
      optional :annualized_base_compensation_range, :message, 2, "google.cloud.talent.v4.CompensationInfo.CompensationRange"
      optional :annualized_total_compensation_range, :message, 3, "google.cloud.talent.v4.CompensationInfo.CompensationRange"
    end
    add_message "google.cloud.talent.v4.CompensationInfo.CompensationEntry" do
      optional :type, :enum, 1, "google.cloud.talent.v4.CompensationInfo.CompensationType"
      optional :unit, :enum, 2, "google.cloud.talent.v4.CompensationInfo.CompensationUnit"
      optional :description, :string, 5
      optional :expected_units_per_year, :message, 6, "google.protobuf.DoubleValue"
      oneof :compensation_amount do
        optional :amount, :message, 3, "google.type.Money"
        optional :range, :message, 4, "google.cloud.talent.v4.CompensationInfo.CompensationRange"
      end
    end
    add_message "google.cloud.talent.v4.CompensationInfo.CompensationRange" do
      optional :max_compensation, :message, 2, "google.type.Money"
      optional :min_compensation, :message, 1, "google.type.Money"
    end
    add_enum "google.cloud.talent.v4.CompensationInfo.CompensationType" do
      value :COMPENSATION_TYPE_UNSPECIFIED, 0
      value :BASE, 1
      value :BONUS, 2
      value :SIGNING_BONUS, 3
      value :EQUITY, 4
      value :PROFIT_SHARING, 5
      value :COMMISSIONS, 6
      value :TIPS, 7
      value :OTHER_COMPENSATION_TYPE, 8
    end
    add_enum "google.cloud.talent.v4.CompensationInfo.CompensationUnit" do
      value :COMPENSATION_UNIT_UNSPECIFIED, 0
      value :HOURLY, 1
      value :DAILY, 2
      value :WEEKLY, 3
      value :MONTHLY, 4
      value :YEARLY, 5
      value :ONE_TIME, 6
      value :OTHER_COMPENSATION_UNIT, 7
    end
    add_message "google.cloud.talent.v4.BatchOperationMetadata" do
      optional :state, :enum, 1, "google.cloud.talent.v4.BatchOperationMetadata.State"
      optional :state_description, :string, 2
      optional :success_count, :int32, 3
      optional :failure_count, :int32, 4
      optional :total_count, :int32, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      optional :end_time, :message, 8, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.talent.v4.BatchOperationMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :INITIALIZING, 1
      value :PROCESSING, 2
      value :SUCCEEDED, 3
      value :FAILED, 4
      value :CANCELLING, 5
      value :CANCELLED, 6
    end
    add_enum "google.cloud.talent.v4.CompanySize" do
      value :COMPANY_SIZE_UNSPECIFIED, 0
      value :MINI, 1
      value :SMALL, 2
      value :SMEDIUM, 3
      value :MEDIUM, 4
      value :BIG, 5
      value :BIGGER, 6
      value :GIANT, 7
    end
    add_enum "google.cloud.talent.v4.JobBenefit" do
      value :JOB_BENEFIT_UNSPECIFIED, 0
      value :CHILD_CARE, 1
      value :DENTAL, 2
      value :DOMESTIC_PARTNER, 3
      value :FLEXIBLE_HOURS, 4
      value :MEDICAL, 5
      value :LIFE_INSURANCE, 6
      value :PARENTAL_LEAVE, 7
      value :RETIREMENT_PLAN, 8
      value :SICK_DAYS, 9
      value :VACATION, 10
      value :VISION, 11
    end
    add_enum "google.cloud.talent.v4.DegreeType" do
      value :DEGREE_TYPE_UNSPECIFIED, 0
      value :PRIMARY_EDUCATION, 1
      value :LOWER_SECONDARY_EDUCATION, 2
      value :UPPER_SECONDARY_EDUCATION, 3
      value :ADULT_REMEDIAL_EDUCATION, 4
      value :ASSOCIATES_OR_EQUIVALENT, 5
      value :BACHELORS_OR_EQUIVALENT, 6
      value :MASTERS_OR_EQUIVALENT, 7
      value :DOCTORAL_OR_EQUIVALENT, 8
    end
    add_enum "google.cloud.talent.v4.EmploymentType" do
      value :EMPLOYMENT_TYPE_UNSPECIFIED, 0
      value :FULL_TIME, 1
      value :PART_TIME, 2
      value :CONTRACTOR, 3
      value :CONTRACT_TO_HIRE, 4
      value :TEMPORARY, 5
      value :INTERN, 6
      value :VOLUNTEER, 7
      value :PER_DIEM, 8
      value :FLY_IN_FLY_OUT, 9
      value :OTHER_EMPLOYMENT_TYPE, 10
    end
    add_enum "google.cloud.talent.v4.JobLevel" do
      value :JOB_LEVEL_UNSPECIFIED, 0
      value :ENTRY_LEVEL, 1
      value :EXPERIENCED, 2
      value :MANAGER, 3
      value :DIRECTOR, 4
      value :EXECUTIVE, 5
    end
    add_enum "google.cloud.talent.v4.JobCategory" do
      value :JOB_CATEGORY_UNSPECIFIED, 0
      value :ACCOUNTING_AND_FINANCE, 1
      value :ADMINISTRATIVE_AND_OFFICE, 2
      value :ADVERTISING_AND_MARKETING, 3
      value :ANIMAL_CARE, 4
      value :ART_FASHION_AND_DESIGN, 5
      value :BUSINESS_OPERATIONS, 6
      value :CLEANING_AND_FACILITIES, 7
      value :COMPUTER_AND_IT, 8
      value :CONSTRUCTION, 9
      value :CUSTOMER_SERVICE, 10
      value :EDUCATION, 11
      value :ENTERTAINMENT_AND_TRAVEL, 12
      value :FARMING_AND_OUTDOORS, 13
      value :HEALTHCARE, 14
      value :HUMAN_RESOURCES, 15
      value :INSTALLATION_MAINTENANCE_AND_REPAIR, 16
      value :LEGAL, 17
      value :MANAGEMENT, 18
      value :MANUFACTURING_AND_WAREHOUSE, 19
      value :MEDIA_COMMUNICATIONS_AND_WRITING, 20
      value :OIL_GAS_AND_MINING, 21
      value :PERSONAL_CARE_AND_SERVICES, 22
      value :PROTECTIVE_SERVICES, 23
      value :REAL_ESTATE, 24
      value :RESTAURANT_AND_HOSPITALITY, 25
      value :SALES_AND_RETAIL, 26
      value :SCIENCE_AND_ENGINEERING, 27
      value :SOCIAL_SERVICES_AND_NON_PROFIT, 28
      value :SPORTS_FITNESS_AND_RECREATION, 29
      value :TRANSPORTATION_AND_LOGISTICS, 30
    end
    add_enum "google.cloud.talent.v4.PostingRegion" do
      value :POSTING_REGION_UNSPECIFIED, 0
      value :ADMINISTRATIVE_AREA, 1
      value :NATION, 2
      value :TELECOMMUTE, 3
    end
    add_enum "google.cloud.talent.v4.Visibility" do
      value :VISIBILITY_UNSPECIFIED, 0
      value :ACCOUNT_ONLY, 1
      value :SHARED_WITH_GOOGLE, 2
      value :SHARED_WITH_PUBLIC, 3
    end
    add_enum "google.cloud.talent.v4.HtmlSanitization" do
      value :HTML_SANITIZATION_UNSPECIFIED, 0
      value :HTML_SANITIZATION_DISABLED, 1
      value :SIMPLE_FORMATTING_ONLY, 2
    end
    add_enum "google.cloud.talent.v4.CommuteMethod" do
      value :COMMUTE_METHOD_UNSPECIFIED, 0
      value :DRIVING, 1
      value :TRANSIT, 2
      value :WALKING, 3
      value :CYCLING, 4
      value :TRANSIT_ACCESSIBLE, 5
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4
        TimestampRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.TimestampRange").msgclass
        Location = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.Location").msgclass
        Location::LocationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.Location.LocationType").enummodule
        RequestMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.RequestMetadata").msgclass
        ResponseMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.ResponseMetadata").msgclass
        DeviceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.DeviceInfo").msgclass
        DeviceInfo::DeviceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.DeviceInfo.DeviceType").enummodule
        CustomAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CustomAttribute").msgclass
        SpellingCorrection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SpellingCorrection").msgclass
        CompensationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompensationInfo").msgclass
        CompensationInfo::CompensationEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompensationInfo.CompensationEntry").msgclass
        CompensationInfo::CompensationRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompensationInfo.CompensationRange").msgclass
        CompensationInfo::CompensationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompensationInfo.CompensationType").enummodule
        CompensationInfo::CompensationUnit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompensationInfo.CompensationUnit").enummodule
        BatchOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchOperationMetadata").msgclass
        BatchOperationMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchOperationMetadata.State").enummodule
        CompanySize = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CompanySize").enummodule
        JobBenefit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobBenefit").enummodule
        DegreeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.DegreeType").enummodule
        EmploymentType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.EmploymentType").enummodule
        JobLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobLevel").enummodule
        JobCategory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobCategory").enummodule
        PostingRegion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.PostingRegion").enummodule
        Visibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.Visibility").enummodule
        HtmlSanitization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.HtmlSanitization").enummodule
        CommuteMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CommuteMethod").enummodule
      end
    end
  end
end
