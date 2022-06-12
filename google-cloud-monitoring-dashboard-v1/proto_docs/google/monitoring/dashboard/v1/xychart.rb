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
    module Monitoring
      module Dashboard
        module V1
          # A chart that displays data on a 2D (X and Y axes) plane.
          # @!attribute [rw] data_sets
          #   @return [::Array<::Google::Cloud::Monitoring::Dashboard::V1::XyChart::DataSet>]
          #     Required. The data displayed in this chart.
          # @!attribute [rw] timeshift_duration
          #   @return [::Google::Protobuf::Duration]
          #     The duration used to display a comparison chart. A comparison chart
          #     simultaneously shows values from two similar-length time periods
          #     (e.g., week-over-week metrics).
          #     The duration must be positive, and it can only be applied to charts with
          #     data sets of LINE plot type.
          # @!attribute [rw] thresholds
          #   @return [::Array<::Google::Cloud::Monitoring::Dashboard::V1::Threshold>]
          #     Threshold lines drawn horizontally across the chart.
          # @!attribute [rw] x_axis
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart::Axis]
          #     The properties applied to the X axis.
          # @!attribute [rw] y_axis
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart::Axis]
          #     The properties applied to the Y axis.
          # @!attribute [rw] y2_axis
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart::Axis]
          #     The properties applied to the Y2 axis.
          # @!attribute [rw] chart_options
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::ChartOptions]
          #     Display options for the chart.
          class XyChart
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Groups a time series query definition with charting options.
            # @!attribute [rw] time_series_query
            #   @return [::Google::Cloud::Monitoring::Dashboard::V1::TimeSeriesQuery]
            #     Required. Fields for querying time series data from the
            #     Stackdriver metrics API.
            # @!attribute [rw] plot_type
            #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart::DataSet::PlotType]
            #     How this data should be plotted on the chart.
            # @!attribute [rw] legend_template
            #   @return [::String]
            #     A template string for naming `TimeSeries` in the resulting data set.
            #     This should be a string with interpolations of the form `${label_name}`,
            #     which will resolve to the label's value.
            # @!attribute [rw] min_alignment_period
            #   @return [::Google::Protobuf::Duration]
            #     Optional. The lower bound on data point frequency for this data set, implemented by
            #     specifying the minimum alignment period to use in a time series query
            #     For example, if the data is published once every 10 minutes, the
            #     `min_alignment_period` should be at least 10 minutes. It would not
            #     make sense to fetch and align data at one minute intervals.
            # @!attribute [rw] target_axis
            #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart::DataSet::TargetAxis]
            #     Optional. The target axis to use for plotting the metric.
            class DataSet
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The types of plotting strategies for data sets.
              module PlotType
                # Plot type is unspecified. The view will default to `LINE`.
                PLOT_TYPE_UNSPECIFIED = 0

                # The data is plotted as a set of lines (one line per series).
                LINE = 1

                # The data is plotted as a set of filled areas (one area per series),
                # with the areas stacked vertically (the base of each area is the top of
                # its predecessor, and the base of the first area is the X axis). Since
                # the areas do not overlap, each is filled with a different opaque color.
                STACKED_AREA = 2

                # The data is plotted as a set of rectangular boxes (one box per series),
                # with the boxes stacked vertically (the base of each box is the top of
                # its predecessor, and the base of the first box is the X axis). Since
                # the boxes do not overlap, each is filled with a different opaque color.
                STACKED_BAR = 3

                # The data is plotted as a heatmap. The series being plotted must have a
                # `DISTRIBUTION` value type. The value of each bucket in the distribution
                # is displayed as a color. This type is not currently available in the
                # Stackdriver Monitoring application.
                HEATMAP = 4
              end

              # An axis identifier.
              module TargetAxis
                # The target axis was not specified. Defaults to Y1.
                TARGET_AXIS_UNSPECIFIED = 0

                # The y_axis (the right axis of chart).
                Y1 = 1

                # The y2_axis (the left axis of chart).
                Y2 = 2
              end
            end

            # A chart axis.
            # @!attribute [rw] label
            #   @return [::String]
            #     The label of the axis.
            # @!attribute [rw] scale
            #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart::Axis::Scale]
            #     The axis scale. By default, a linear scale is used.
            class Axis
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Types of scales used in axes.
              module Scale
                # Scale is unspecified. The view will default to `LINEAR`.
                SCALE_UNSPECIFIED = 0

                # Linear scale.
                LINEAR = 1

                # Logarithmic scale (base 10).
                LOG10 = 2
              end
            end
          end

          # Options to control visual rendering of a chart.
          # @!attribute [rw] mode
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::ChartOptions::Mode]
          #     The chart mode.
          class ChartOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Chart mode options.
            module Mode
              # Mode is unspecified. The view will default to `COLOR`.
              MODE_UNSPECIFIED = 0

              # The chart distinguishes data series using different color. Line
              # colors may get reused when there are many lines in the chart.
              COLOR = 1

              # The chart uses the Stackdriver x-ray mode, in which each
              # data set is plotted using the same semi-transparent color.
              X_RAY = 2

              # The chart displays statistics such as average, median, 95th percentile,
              # and more.
              STATS = 3
            end
          end
        end
      end
    end
  end
end
