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


module Google
  module Cloud
    module AutoML
      module V1beta1
        # A workspace for solving a single, particular machine learning (ML) problem.
        # A workspace contains examples that may be annotated.
        # @!attribute [rw] translation_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::TranslationDatasetMetadata]
        #     Metadata for a dataset used for translation.
        # @!attribute [rw] image_classification_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::ImageClassificationDatasetMetadata]
        #     Metadata for a dataset used for image classification.
        # @!attribute [rw] text_classification_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::TextClassificationDatasetMetadata]
        #     Metadata for a dataset used for text classification.
        # @!attribute [rw] image_object_detection_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::ImageObjectDetectionDatasetMetadata]
        #     Metadata for a dataset used for image object detection.
        # @!attribute [rw] video_classification_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::VideoClassificationDatasetMetadata]
        #     Metadata for a dataset used for video classification.
        # @!attribute [rw] video_object_tracking_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::VideoObjectTrackingDatasetMetadata]
        #     Metadata for a dataset used for video object tracking.
        # @!attribute [rw] text_extraction_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::TextExtractionDatasetMetadata]
        #     Metadata for a dataset used for text extraction.
        # @!attribute [rw] text_sentiment_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::TextSentimentDatasetMetadata]
        #     Metadata for a dataset used for text sentiment.
        # @!attribute [rw] tables_dataset_metadata
        #   @return [Google::Cloud::AutoML::V1beta1::TablesDatasetMetadata]
        #     Metadata for a dataset used for Tables.
        # @!attribute [rw] name
        #   @return [String]
        #     Output only. The resource name of the dataset.
        #     Form: `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`
        # @!attribute [rw] display_name
        #   @return [String]
        #     Required. The name of the dataset to show in the interface. The name can be
        #     up to 32 characters long and can consist only of ASCII Latin letters A-Z
        #     and a-z, underscores
        #     (_), and ASCII digits 0-9.
        # @!attribute [rw] description
        #   @return [String]
        #     User-provided description of the dataset. The description can be up to
        #     25000 characters long.
        # @!attribute [rw] example_count
        #   @return [Integer]
        #     Output only. The number of examples in the dataset.
        # @!attribute [rw] create_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this dataset was created.
        # @!attribute [rw] etag
        #   @return [String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        class Dataset; end
      end
    end
  end
end