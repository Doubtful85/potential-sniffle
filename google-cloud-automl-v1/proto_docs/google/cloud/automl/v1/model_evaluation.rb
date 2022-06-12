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
    module AutoML
      module V1
        # Evaluation results of a model.
        # @!attribute [rw] classification_evaluation_metrics
        #   @return [::Google::Cloud::AutoML::V1::ClassificationEvaluationMetrics]
        #     Model evaluation metrics for image, text, video and tables
        #     classification.
        #     Tables problem is considered a classification when the target column
        #     is CATEGORY DataType.
        # @!attribute [rw] translation_evaluation_metrics
        #   @return [::Google::Cloud::AutoML::V1::TranslationEvaluationMetrics]
        #     Model evaluation metrics for translation.
        # @!attribute [rw] image_object_detection_evaluation_metrics
        #   @return [::Google::Cloud::AutoML::V1::ImageObjectDetectionEvaluationMetrics]
        #     Model evaluation metrics for image object detection.
        # @!attribute [rw] text_sentiment_evaluation_metrics
        #   @return [::Google::Cloud::AutoML::V1::TextSentimentEvaluationMetrics]
        #     Evaluation metrics for text sentiment models.
        # @!attribute [rw] text_extraction_evaluation_metrics
        #   @return [::Google::Cloud::AutoML::V1::TextExtractionEvaluationMetrics]
        #     Evaluation metrics for text extraction models.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. Resource name of the model evaluation.
        #     Format:
        #     `projects/{project_id}/locations/{location_id}/models/{model_id}/modelEvaluations/{model_evaluation_id}`
        # @!attribute [rw] annotation_spec_id
        #   @return [::String]
        #     Output only. The ID of the annotation spec that the model evaluation applies to. The
        #     The ID is empty for the overall model evaluation.
        #     For Tables annotation specs in the dataset do not exist and this ID is
        #     always not set, but for CLASSIFICATION
        #     [prediction_type-s][google.cloud.automl.v1.TablesModelMetadata.prediction_type]
        #     the
        #     {::Google::Cloud::AutoML::V1::ModelEvaluation#display_name display_name}
        #     field is used.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Output only. The value of
        #     {::Google::Cloud::AutoML::V1::AnnotationSpec#display_name display_name}
        #     at the moment when the model was trained. Because this field returns a
        #     value at model training time, for different models trained from the same
        #     dataset, the values may differ, since display names could had been changed
        #     between the two model's trainings. For Tables CLASSIFICATION
        #     [prediction_type-s][google.cloud.automl.v1.TablesModelMetadata.prediction_type]
        #     distinct values of the target column at the moment of the model evaluation
        #     are populated here.
        #     The display_name is empty for the overall model evaluation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this model evaluation was created.
        # @!attribute [rw] evaluated_example_count
        #   @return [::Integer]
        #     Output only. The number of examples used for model evaluation, i.e. for
        #     which ground truth from time of model creation is compared against the
        #     predicted annotations created by the model.
        #     For overall ModelEvaluation (i.e. with annotation_spec_id not set) this is
        #     the total number of all examples used for evaluation.
        #     Otherwise, this is the count of examples that according to the ground
        #     truth were annotated by the
        #     {::Google::Cloud::AutoML::V1::ModelEvaluation#annotation_spec_id annotation_spec_id}.
        class ModelEvaluation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
