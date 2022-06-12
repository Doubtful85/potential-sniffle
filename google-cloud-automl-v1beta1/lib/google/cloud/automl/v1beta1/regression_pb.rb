# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/regression.proto

require 'google/protobuf'

require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1beta1/regression.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1beta1.RegressionEvaluationMetrics" do
      optional :root_mean_squared_error, :float, 1
      optional :mean_absolute_error, :float, 2
      optional :mean_absolute_percentage_error, :float, 3
      optional :r_squared, :float, 4
      optional :root_mean_squared_log_error, :float, 5
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        RegressionEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.RegressionEvaluationMetrics").msgclass
      end
    end
  end
end
