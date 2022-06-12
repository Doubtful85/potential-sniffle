# frozen_string_literal: true

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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Billing
      module Budgets
        module V1beta1
          # A budget is a plan that describes what you expect to spend on Cloud
          # projects, plus the rules to execute as spend is tracked against that plan,
          # (for example, send an alert when 90% of the target spend is met).
          # The budget time period is configurable, with options such as month (default),
          # quarter, year, or custom time period.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. Resource name of the budget.
          #     The resource name implies the scope of a budget. Values are of the form
          #     `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     User data for display name in UI.
          #     Validation: <= 60 chars.
          # @!attribute [rw] budget_filter
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::Filter]
          #     Optional. Filters that define which resources are used to compute the
          #     actual spend against the budget amount, such as projects, services, and the
          #     budget's time period, as well as other filters.
          # @!attribute [rw] amount
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::BudgetAmount]
          #     Required. Budgeted amount.
          # @!attribute [rw] threshold_rules
          #   @return [::Array<::Google::Cloud::Billing::Budgets::V1beta1::ThresholdRule>]
          #     Optional. Rules that trigger alerts (notifications of thresholds
          #     being crossed) when spend exceeds the specified percentages of the budget.
          # @!attribute [rw] all_updates_rule
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::AllUpdatesRule]
          #     Optional. Rules to apply to notifications sent based on budget spend and
          #     thresholds.
          # @!attribute [rw] etag
          #   @return [::String]
          #     Optional. Etag to validate that the object is unchanged for a
          #     read-modify-write operation.
          #     An empty etag will cause an update to overwrite other changes.
          class Budget
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The budgeted amount for each usage period.
          # @!attribute [rw] specified_amount
          #   @return [::Google::Type::Money]
          #     A specified amount to use as the budget.
          #     `currency_code` is optional. If specified when creating a budget, it must
          #     match the currency of the billing account. If specified when updating a
          #     budget, it must match the currency_code of the existing budget.
          #     The `currency_code` is provided on output.
          # @!attribute [rw] last_period_amount
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::LastPeriodAmount]
          #     Use the last period's actual spend as the budget for the present period.
          #     LastPeriodAmount can only be set when the budget's time period is a
          #     {::Google::Cloud::Billing::Budgets::V1beta1::Filter#calendar_period Filter.calendar_period}.
          #     It cannot be set in combination with
          #     {::Google::Cloud::Billing::Budgets::V1beta1::Filter#custom_period Filter.custom_period}.
          class BudgetAmount
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes a budget amount targeted to the last
          # {::Google::Cloud::Billing::Budgets::V1beta1::Filter#calendar_period Filter.calendar_period}
          # spend. At this time, the amount is automatically 100% of the last calendar
          # period's spend; that is, there are no other options yet.
          # Future configuration options will be described here (for example, configuring
          # a percentage of last period's spend).
          # LastPeriodAmount cannot be set for a budget configured with
          # a
          # {::Google::Cloud::Billing::Budgets::V1beta1::Filter#custom_period Filter.custom_period}.
          class LastPeriodAmount
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # ThresholdRule contains a definition of a threshold which triggers
          # an alert (a notification of a threshold being crossed) to be sent when
          # spend goes above the specified amount.
          # Alerts are automatically e-mailed to users with the Billing Account
          # Administrator role or the Billing Account User role.
          # The thresholds here have no effect on notifications sent to anything
          # configured under `Budget.all_updates_rule`.
          # @!attribute [rw] threshold_percent
          #   @return [::Float]
          #     Required. Send an alert when this threshold is exceeded.
          #     This is a 1.0-based percentage, so 0.5 = 50%.
          #     Validation: non-negative number.
          # @!attribute [rw] spend_basis
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::ThresholdRule::Basis]
          #     Optional. The type of basis used to determine if spend has passed the
          #     threshold. Behavior defaults to CURRENT_SPEND if not set.
          class ThresholdRule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The type of basis used to determine if spend has passed the threshold.
            module Basis
              # Unspecified threshold basis.
              BASIS_UNSPECIFIED = 0

              # Use current spend as the basis for comparison against the threshold.
              CURRENT_SPEND = 1

              # Use forecasted spend for the period as the basis for comparison against
              # the threshold.
              # FORECASTED_SPEND can only be set when the budget's time period is a
              # {::Google::Cloud::Billing::Budgets::V1beta1::Filter#calendar_period Filter.calendar_period}.
              # It cannot be set in combination with
              # {::Google::Cloud::Billing::Budgets::V1beta1::Filter#custom_period Filter.custom_period}.
              FORECASTED_SPEND = 2
            end
          end

          # AllUpdatesRule defines notifications that are sent based on budget spend
          # and thresholds.
          # @!attribute [rw] pubsub_topic
          #   @return [::String]
          #     Optional. The name of the Pub/Sub topic where budget related messages will
          #     be published, in the form `projects/{project_id}/topics/{topic_id}`.
          #     Updates are sent at regular intervals to the topic. The topic needs to be
          #     created before the budget is created; see
          #     https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications
          #     for more details.
          #     Caller is expected to have
          #     `pubsub.topics.setIamPolicy` permission on the topic when it's set for a
          #     budget, otherwise, the API call will fail with PERMISSION_DENIED. See
          #     https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#permissions_required_for_this_task
          #     for more details on Pub/Sub roles and permissions.
          # @!attribute [rw] schema_version
          #   @return [::String]
          #     Optional. Required when
          #     {::Google::Cloud::Billing::Budgets::V1beta1::AllUpdatesRule#pubsub_topic AllUpdatesRule.pubsub_topic}
          #     is set. The schema version of the notification sent to
          #     {::Google::Cloud::Billing::Budgets::V1beta1::AllUpdatesRule#pubsub_topic AllUpdatesRule.pubsub_topic}.
          #     Only "1.0" is accepted. It represents the JSON schema as defined in
          #     https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format.
          # @!attribute [rw] monitoring_notification_channels
          #   @return [::Array<::String>]
          #     Optional. Targets to send notifications to when a threshold is exceeded.
          #     This is in addition to default recipients who have billing account IAM
          #     roles. The value is the full REST resource name of a monitoring
          #     notification channel with the form
          #     `projects/{project_id}/notificationChannels/{channel_id}`. A maximum of 5
          #     channels are allowed. See
          #     https://cloud.google.com/billing/docs/how-to/budgets-notification-recipients
          #     for more details.
          # @!attribute [rw] disable_default_iam_recipients
          #   @return [::Boolean]
          #     Optional. When set to true, disables default notifications sent when a
          #     threshold is exceeded. Default notifications are sent to those with Billing
          #     Account Administrator and Billing Account User IAM roles for the target
          #     account.
          class AllUpdatesRule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A filter for a budget, limiting the scope of the cost to calculate.
          # @!attribute [rw] projects
          #   @return [::Array<::String>]
          #     Optional. A set of projects of the form `projects/{project}`,
          #     specifying that usage from only this set of projects should be
          #     included in the budget. If omitted, the report will include all usage for
          #     the billing account, regardless of which project the usage occurred on.
          #     Only zero or one project can be specified currently.
          # @!attribute [rw] credit_types
          #   @return [::Array<::String>]
          #     Optional. If
          #     {::Google::Cloud::Billing::Budgets::V1beta1::Filter#credit_types_treatment Filter.credit_types_treatment}
          #     is INCLUDE_SPECIFIED_CREDITS, this is a list of credit types to be
          #     subtracted from gross cost to determine the spend for threshold
          #     calculations. See [a list of acceptable credit type
          #     values](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type).
          #
          #     If
          #     {::Google::Cloud::Billing::Budgets::V1beta1::Filter#credit_types_treatment Filter.credit_types_treatment}
          #     is **not** INCLUDE_SPECIFIED_CREDITS, this field must be empty.
          # @!attribute [rw] credit_types_treatment
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::Filter::CreditTypesTreatment]
          #     Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
          # @!attribute [rw] services
          #   @return [::Array<::String>]
          #     Optional. A set of services of the form `services/{service_id}`,
          #     specifying that usage from only this set of services should be
          #     included in the budget. If omitted, the report will include usage for
          #     all the services.
          #     The service names are available through the Catalog API:
          #     https://cloud.google.com/billing/v1/how-tos/catalog-api.
          # @!attribute [rw] subaccounts
          #   @return [::Array<::String>]
          #     Optional. A set of subaccounts of the form `billingAccounts/{account_id}`,
          #     specifying that usage from only this set of subaccounts should be included
          #     in the budget. If a subaccount is set to the name of the parent account,
          #     usage from the parent account will be included. If omitted, the
          #     report will include usage from the parent account and all
          #     subaccounts, if they exist.
          # @!attribute [rw] labels
          #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::ListValue}]
          #     Optional. A single label and value pair specifying that usage from only
          #     this set of labeled resources should be included in the budget. Currently,
          #     multiple entries or multiple values per entry are not allowed. If omitted,
          #     the report will include all labeled and unlabeled usage.
          # @!attribute [rw] calendar_period
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::CalendarPeriod]
          #     Optional. Specifies to track usage for recurring calendar period.
          #     For example, assume that CalendarPeriod.QUARTER is set. The budget will
          #     track usage from April 1 to June 30, when the current calendar month is
          #     April, May, June. After that, it will track usage from July 1 to
          #     September 30 when the current calendar month is July, August, September,
          #     so on.
          # @!attribute [rw] custom_period
          #   @return [::Google::Cloud::Billing::Budgets::V1beta1::CustomPeriod]
          #     Optional. Specifies to track usage from any start date (required) to any
          #     end date (optional). This time period is static, it does not recur.
          class Filter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Protobuf::ListValue]
            class LabelsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Specifies how credits are applied when determining the spend for
            # threshold calculations. Budgets track the total cost minus any applicable
            # selected credits.
            # [See the documentation for a list of credit
            # types](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type).
            module CreditTypesTreatment
              CREDIT_TYPES_TREATMENT_UNSPECIFIED = 0

              # All types of credit are subtracted from the gross cost to determine the
              # spend for threshold calculations.
              INCLUDE_ALL_CREDITS = 1

              # All types of credit are added to the net cost to determine the spend for
              # threshold calculations.
              EXCLUDE_ALL_CREDITS = 2

              # [Credit
              # types](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type)
              # specified in the credit_types field are subtracted from the
              # gross cost to determine the spend for threshold calculations.
              INCLUDE_SPECIFIED_CREDITS = 3
            end
          end

          # All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
          # @!attribute [rw] start_date
          #   @return [::Google::Type::Date]
          #     Required. The start date must be after January 1, 2017.
          # @!attribute [rw] end_date
          #   @return [::Google::Type::Date]
          #     Optional. The end date of the time period. Budgets with elapsed end date
          #     won't be processed. If unset, specifies to track all usage incurred since
          #     the start_date.
          class CustomPeriod
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A `CalendarPeriod` represents the abstract concept of a time period that
          # has a canonical start. Grammatically, "the start of the current
          # `CalendarPeriod`". All calendar times begin at 12 AM US and Canadian
          # Pacific Time (UTC-8).
          module CalendarPeriod
            CALENDAR_PERIOD_UNSPECIFIED = 0

            # A month. Month starts on the first day of each month, such as January 1,
            # February 1, March 1, and so on.
            MONTH = 1

            # A quarter. Quarters start on dates January 1, April 1, July 1, and October
            # 1 of each year.
            QUARTER = 2

            # A year. Year starts on January 1.
            YEAR = 3
          end
        end
      end
    end
  end
end
