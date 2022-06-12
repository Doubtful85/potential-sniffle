# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4/job_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4/common_pb'
require 'google/cloud/talent/v4/filters_pb'
require 'google/cloud/talent/v4/histogram_pb'
require 'google/cloud/talent/v4/job_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/rpc/status_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4/job_service.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4.CreateJobRequest" do
      optional :parent, :string, 1
      optional :job, :message, 2, "google.cloud.talent.v4.Job"
    end
    add_message "google.cloud.talent.v4.GetJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.talent.v4.UpdateJobRequest" do
      optional :job, :message, 1, "google.cloud.talent.v4.Job"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.talent.v4.DeleteJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.talent.v4.ListJobsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_token, :string, 3
      optional :page_size, :int32, 4
      optional :job_view, :enum, 5, "google.cloud.talent.v4.JobView"
    end
    add_message "google.cloud.talent.v4.ListJobsResponse" do
      repeated :jobs, :message, 1, "google.cloud.talent.v4.Job"
      optional :next_page_token, :string, 2
      optional :metadata, :message, 3, "google.cloud.talent.v4.ResponseMetadata"
    end
    add_message "google.cloud.talent.v4.SearchJobsRequest" do
      optional :parent, :string, 1
      optional :search_mode, :enum, 2, "google.cloud.talent.v4.SearchJobsRequest.SearchMode"
      optional :request_metadata, :message, 3, "google.cloud.talent.v4.RequestMetadata"
      optional :job_query, :message, 4, "google.cloud.talent.v4.JobQuery"
      optional :enable_broadening, :bool, 5
      repeated :histogram_queries, :message, 7, "google.cloud.talent.v4.HistogramQuery"
      optional :job_view, :enum, 8, "google.cloud.talent.v4.JobView"
      optional :offset, :int32, 9
      optional :max_page_size, :int32, 10
      optional :page_token, :string, 11
      optional :order_by, :string, 12
      optional :diversification_level, :enum, 13, "google.cloud.talent.v4.SearchJobsRequest.DiversificationLevel"
      optional :custom_ranking_info, :message, 14, "google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo"
      optional :disable_keyword_match, :bool, 16
      optional :keyword_match_mode, :enum, 18, "google.cloud.talent.v4.SearchJobsRequest.KeywordMatchMode"
    end
    add_message "google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo" do
      optional :importance_level, :enum, 1, "google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel"
      optional :ranking_expression, :string, 2
    end
    add_enum "google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel" do
      value :IMPORTANCE_LEVEL_UNSPECIFIED, 0
      value :NONE, 1
      value :LOW, 2
      value :MILD, 3
      value :MEDIUM, 4
      value :HIGH, 5
      value :EXTREME, 6
    end
    add_enum "google.cloud.talent.v4.SearchJobsRequest.SearchMode" do
      value :SEARCH_MODE_UNSPECIFIED, 0
      value :JOB_SEARCH, 1
      value :FEATURED_JOB_SEARCH, 2
    end
    add_enum "google.cloud.talent.v4.SearchJobsRequest.DiversificationLevel" do
      value :DIVERSIFICATION_LEVEL_UNSPECIFIED, 0
      value :DISABLED, 1
      value :SIMPLE, 2
      value :ONE_PER_COMPANY, 3
      value :TWO_PER_COMPANY, 4
      value :DIVERSIFY_BY_LOOSER_SIMILARITY, 5
    end
    add_enum "google.cloud.talent.v4.SearchJobsRequest.KeywordMatchMode" do
      value :KEYWORD_MATCH_MODE_UNSPECIFIED, 0
      value :KEYWORD_MATCH_DISABLED, 1
      value :KEYWORD_MATCH_ALL, 2
      value :KEYWORD_MATCH_TITLE_ONLY, 3
    end
    add_message "google.cloud.talent.v4.SearchJobsResponse" do
      repeated :matching_jobs, :message, 1, "google.cloud.talent.v4.SearchJobsResponse.MatchingJob"
      repeated :histogram_query_results, :message, 2, "google.cloud.talent.v4.HistogramQueryResult"
      optional :next_page_token, :string, 3
      repeated :location_filters, :message, 4, "google.cloud.talent.v4.Location"
      optional :total_size, :int32, 6
      optional :metadata, :message, 7, "google.cloud.talent.v4.ResponseMetadata"
      optional :broadened_query_jobs_count, :int32, 8
      optional :spell_correction, :message, 9, "google.cloud.talent.v4.SpellingCorrection"
    end
    add_message "google.cloud.talent.v4.SearchJobsResponse.MatchingJob" do
      optional :job, :message, 1, "google.cloud.talent.v4.Job"
      optional :job_summary, :string, 2
      optional :job_title_snippet, :string, 3
      optional :search_text_snippet, :string, 4
      optional :commute_info, :message, 5, "google.cloud.talent.v4.SearchJobsResponse.CommuteInfo"
    end
    add_message "google.cloud.talent.v4.SearchJobsResponse.CommuteInfo" do
      optional :job_location, :message, 1, "google.cloud.talent.v4.Location"
      optional :travel_duration, :message, 2, "google.protobuf.Duration"
    end
    add_message "google.cloud.talent.v4.BatchCreateJobsRequest" do
      optional :parent, :string, 1
      repeated :jobs, :message, 2, "google.cloud.talent.v4.Job"
    end
    add_message "google.cloud.talent.v4.BatchUpdateJobsRequest" do
      optional :parent, :string, 1
      repeated :jobs, :message, 2, "google.cloud.talent.v4.Job"
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.talent.v4.BatchDeleteJobsRequest" do
      optional :parent, :string, 1
      repeated :names, :string, 2
    end
    add_message "google.cloud.talent.v4.JobResult" do
      optional :job, :message, 1, "google.cloud.talent.v4.Job"
      optional :status, :message, 2, "google.rpc.Status"
    end
    add_message "google.cloud.talent.v4.BatchCreateJobsResponse" do
      repeated :job_results, :message, 1, "google.cloud.talent.v4.JobResult"
    end
    add_message "google.cloud.talent.v4.BatchUpdateJobsResponse" do
      repeated :job_results, :message, 1, "google.cloud.talent.v4.JobResult"
    end
    add_message "google.cloud.talent.v4.BatchDeleteJobsResponse" do
      repeated :job_results, :message, 1, "google.cloud.talent.v4.JobResult"
    end
    add_enum "google.cloud.talent.v4.JobView" do
      value :JOB_VIEW_UNSPECIFIED, 0
      value :JOB_VIEW_ID_ONLY, 1
      value :JOB_VIEW_MINIMAL, 2
      value :JOB_VIEW_SMALL, 3
      value :JOB_VIEW_FULL, 4
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4
        CreateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CreateJobRequest").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.GetJobRequest").msgclass
        UpdateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.UpdateJobRequest").msgclass
        DeleteJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.DeleteJobRequest").msgclass
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.ListJobsRequest").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.ListJobsResponse").msgclass
        SearchJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest").msgclass
        SearchJobsRequest::CustomRankingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo").msgclass
        SearchJobsRequest::CustomRankingInfo::ImportanceLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel").enummodule
        SearchJobsRequest::SearchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.SearchMode").enummodule
        SearchJobsRequest::DiversificationLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.DiversificationLevel").enummodule
        SearchJobsRequest::KeywordMatchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.KeywordMatchMode").enummodule
        SearchJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsResponse").msgclass
        SearchJobsResponse::MatchingJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsResponse.MatchingJob").msgclass
        SearchJobsResponse::CommuteInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsResponse.CommuteInfo").msgclass
        BatchCreateJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchCreateJobsRequest").msgclass
        BatchUpdateJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchUpdateJobsRequest").msgclass
        BatchDeleteJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchDeleteJobsRequest").msgclass
        JobResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobResult").msgclass
        BatchCreateJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchCreateJobsResponse").msgclass
        BatchUpdateJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchUpdateJobsResponse").msgclass
        BatchDeleteJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchDeleteJobsResponse").msgclass
        JobView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobView").enummodule
      end
    end
  end
end
