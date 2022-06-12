# Copyright 2019 Google LLC
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


module Grafeas
  module V1
    # Layer holds metadata specific to a layer of a Docker image.
    # @!attribute [rw] directive
    #   @return [String]
    #     Required. The recovered Dockerfile directive used to construct this layer.
    #     See https://docs.docker.com/engine/reference/builder/ for more information.
    # @!attribute [rw] arguments
    #   @return [String]
    #     The recovered arguments to the Dockerfile directive.
    class Layer; end

    # A set of properties that uniquely identify a given Docker image.
    # @!attribute [rw] v1_name
    #   @return [String]
    #     Required. The layer ID of the final layer in the Docker image's v1
    #     representation.
    # @!attribute [rw] v2_blob
    #   @return [Array<String>]
    #     Required. The ordered list of v2 blobs that represent a given image.
    # @!attribute [rw] v2_name
    #   @return [String]
    #     Output only. The name of the image's v2 blobs computed via:
    #       [bottom] := v2_blob[bottom]
    #       [N] := sha256(v2_blob[N] + " " + v2_name[N+1])
    #     Only the name of the final blob is kept.
    class Fingerprint; end

    # Basis describes the base image portion (Note) of the DockerImage
    # relationship. Linked occurrences are derived from this or an equivalent image
    # via:
    #   FROM <Basis.resource_url>
    # Or an equivalent reference, e.g., a tag of the resource_url.
    # @!attribute [rw] resource_url
    #   @return [String]
    #     Required. Immutable. The resource_url for the resource representing the
    #     basis of associated occurrence images.
    # @!attribute [rw] fingerprint
    #   @return [Grafeas::V1::Fingerprint]
    #     Required. Immutable. The fingerprint of the base image.
    class ImageNote; end

    # Details of the derived image portion of the DockerImage relationship. This
    # image would be produced from a Dockerfile with FROM <DockerImage.Basis in
    # attached Note>.
    # @!attribute [rw] fingerprint
    #   @return [Grafeas::V1::Fingerprint]
    #     Required. The fingerprint of the derived image.
    # @!attribute [rw] distance
    #   @return [Integer]
    #     Output only. The number of layers by which this image differs from the
    #     associated image basis.
    # @!attribute [rw] layer_info
    #   @return [Array<Grafeas::V1::Layer>]
    #     This contains layer-specific metadata, if populated it has length
    #     "distance" and is ordered with [distance] being the layer immediately
    #     following the base image and [1] being the final layer.
    # @!attribute [rw] base_resource_url
    #   @return [String]
    #     Output only. This contains the base image URL for the derived image
    #     occurrence.
    class ImageOccurrence; end
  end
end