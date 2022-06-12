# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Retail
      module V2
        # Request message for [CreateProduct][] method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent catalog resource name, such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/default_branch`.
        # @!attribute [rw] product
        #   @return [::Google::Cloud::Retail::V2::Product]
        #     Required. The {::Google::Cloud::Retail::V2::Product Product} to create.
        # @!attribute [rw] product_id
        #   @return [::String]
        #     Required. The ID to use for the {::Google::Cloud::Retail::V2::Product Product},
        #     which will become the final component of the
        #     {::Google::Cloud::Retail::V2::Product#name Product.name}.
        #
        #     If the caller does not have permission to create the
        #     {::Google::Cloud::Retail::V2::Product Product}, regardless of whether or not it
        #     exists, a PERMISSION_DENIED error is returned.
        #
        #     This field must be unique among all
        #     {::Google::Cloud::Retail::V2::Product Product}s with the same
        #     {::Google::Cloud::Retail::V2::CreateProductRequest#parent parent}. Otherwise, an
        #     ALREADY_EXISTS error is returned.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        class CreateProductRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [GetProduct][] method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Full resource name of {::Google::Cloud::Retail::V2::Product Product},
        #     such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
        #
        #     If the caller does not have permission to access the
        #     {::Google::Cloud::Retail::V2::Product Product}, regardless of whether or not it
        #     exists, a PERMISSION_DENIED error is returned.
        #
        #     If the requested {::Google::Cloud::Retail::V2::Product Product} does not exist,
        #     a NOT_FOUND error is returned.
        class GetProductRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [UpdateProduct][] method.
        # @!attribute [rw] product
        #   @return [::Google::Cloud::Retail::V2::Product]
        #     Required. The product to update/create.
        #
        #     If the caller does not have permission to update the
        #     {::Google::Cloud::Retail::V2::Product Product}, regardless of whether or not it
        #     exists, a PERMISSION_DENIED error is returned.
        #
        #     If the {::Google::Cloud::Retail::V2::Product Product} to update does not exist
        #     and
        #     {::Google::Cloud::Retail::V2::UpdateProductRequest#allow_missing allow_missing}
        #     is not set, a NOT_FOUND error is returned.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Indicates which fields in the provided
        #     {::Google::Cloud::Retail::V2::Product Product} to update. The immutable and
        #     output only fields are NOT supported. If not set, all supported fields (the
        #     fields that are neither immutable nor output only) are updated.
        #
        #     If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
        #     is returned.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the {::Google::Cloud::Retail::V2::Product Product} is not
        #     found, a new {::Google::Cloud::Retail::V2::Product Product} will be created. In
        #     this situation, `update_mask` is ignored.
        class UpdateProductRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [DeleteProduct][] method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Full resource name of {::Google::Cloud::Retail::V2::Product Product},
        #     such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
        #
        #     If the caller does not have permission to delete the
        #     {::Google::Cloud::Retail::V2::Product Product}, regardless of whether or not it
        #     exists, a PERMISSION_DENIED error is returned.
        #
        #     If the {::Google::Cloud::Retail::V2::Product Product} to delete does not exist,
        #     a NOT_FOUND error is returned.
        #
        #     The {::Google::Cloud::Retail::V2::Product Product} to delete can neither be a
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Product.Type.COLLECTION}
        #     {::Google::Cloud::Retail::V2::Product Product} member nor a
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Product.Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product} with more than one
        #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT variants}. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     All inventory information for the named
        #     {::Google::Cloud::Retail::V2::Product Product} will be deleted.
        class DeleteProductRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Retail::V2::ProductService::Client#list_products ProductService.ListProducts}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent branch resource name, such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/0`. Use
        #     `default_branch` as the branch ID, to list products under the default
        #     branch.
        #
        #     If the caller does not have permission to list
        #     {::Google::Cloud::Retail::V2::Product Product}s under this branch, regardless of
        #     whether or not this branch exists, a PERMISSION_DENIED error is returned.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of {::Google::Cloud::Retail::V2::Product Product}s to return. If
        #     unspecified, defaults to 100. The maximum allowed value is 1000. Values
        #     above 1000 will be coerced to 1000.
        #
        #     If this field is negative, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token
        #     {::Google::Cloud::Retail::V2::ListProductsResponse#next_page_token ListProductsResponse.next_page_token},
        #     received from a previous
        #     {::Google::Cloud::Retail::V2::ProductService::Client#list_products ProductService.ListProducts}
        #     call. Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     {::Google::Cloud::Retail::V2::ProductService::Client#list_products ProductService.ListProducts}
        #     must match the call that provided the page token. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter to apply on the list results. Supported features:
        #
        #     * List all the products under the parent branch if
        #     {::Google::Cloud::Retail::V2::ListProductsRequest#filter filter} is unset.
        #     * List {::Google::Cloud::Retail::V2::Product::Type::VARIANT Product.Type.VARIANT}
        #     {::Google::Cloud::Retail::V2::Product Product}s sharing the same
        #       {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Product.Type.PRIMARY}
        #       {::Google::Cloud::Retail::V2::Product Product}. For example:
        #         `primary_product_id = "some_product_id"`
        #     * List {::Google::Cloud::Retail::V2::Product Product}s bundled in a
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Product.Type.COLLECTION}
        #     {::Google::Cloud::Retail::V2::Product Product}.
        #       For example:
        #         `collection_product_id = "some_product_id"`
        #     * List {::Google::Cloud::Retail::V2::Product Product}s with a partibular type.
        #     For example:
        #         `type = "PRIMARY"`
        #         `type = "VARIANT"`
        #         `type = "COLLECTION"`
        #
        #     If the field is unrecognizable, an INVALID_ARGUMENT error is returned.
        #
        #     If the specified
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Product.Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product} or
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Product.Type.COLLECTION}
        #     {::Google::Cloud::Retail::V2::Product Product} does not exist, a NOT_FOUND error
        #     is returned.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The fields of {::Google::Cloud::Retail::V2::Product Product} to return in the
        #     responses. If not set or empty, the following fields are returned:
        #
        #     * {::Google::Cloud::Retail::V2::Product#name Product.name}
        #     * {::Google::Cloud::Retail::V2::Product#id Product.id}
        #     * {::Google::Cloud::Retail::V2::Product#title Product.title}
        #     * {::Google::Cloud::Retail::V2::Product#uri Product.uri}
        #     * {::Google::Cloud::Retail::V2::Product#images Product.images}
        #     * {::Google::Cloud::Retail::V2::Product#price_info Product.price_info}
        #     * {::Google::Cloud::Retail::V2::Product#brands Product.brands}
        #
        #     If "*" is provided, all fields are returned.
        #     {::Google::Cloud::Retail::V2::Product#name Product.name} is always returned no
        #     matter what mask is set.
        #
        #     If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
        #     is returned.
        class ListProductsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Retail::V2::ProductService::Client#list_products ProductService.ListProducts}
        # method.
        # @!attribute [rw] products
        #   @return [::Array<::Google::Cloud::Retail::V2::Product>]
        #     The {::Google::Cloud::Retail::V2::Product Product}s.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as
        #     {::Google::Cloud::Retail::V2::ListProductsRequest#page_token ListProductsRequest.page_token}
        #     to retrieve the next page. If this field is omitted, there are no
        #     subsequent pages.
        class ListProductsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [SetInventory][] method.
        # @!attribute [rw] inventory
        #   @return [::Google::Cloud::Retail::V2::Product]
        #     Required. The inventory information to update. The allowable fields to
        #     update are:
        #     * {::Google::Cloud::Retail::V2::Product#price_info Product.price_info}
        #     * {::Google::Cloud::Retail::V2::Product#availability Product.availability}
        #     * {::Google::Cloud::Retail::V2::Product#available_quantity Product.available_quantity}
        #     * {::Google::Cloud::Retail::V2::Product#fulfillment_info Product.fulfillment_info}
        #     The updated inventory fields must be specified in
        #     {::Google::Cloud::Retail::V2::SetInventoryRequest#set_mask SetInventoryRequest.set_mask}.
        #
        #     If [SetInventoryRequest.inventory.name][] is empty or invalid, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     If the caller does not have permission to update the
        #     {::Google::Cloud::Retail::V2::Product Product} named in
        #     {::Google::Cloud::Retail::V2::Product#name Product.name}, regardless of whether
        #     or not it exists, a PERMISSION_DENIED error is returned.
        #
        #     If the {::Google::Cloud::Retail::V2::Product Product} to update does not have
        #     existing inventory information, the provided inventory information will be
        #     inserted.
        #
        #     If the {::Google::Cloud::Retail::V2::Product Product} to update has existing
        #     inventory information, the provided inventory information will be merged
        #     while respecting the last update time for each inventory field, using the
        #     provided or default value for
        #     {::Google::Cloud::Retail::V2::SetInventoryRequest#set_time SetInventoryRequest.set_time}.
        #
        #     The last update time is recorded for the following inventory fields:
        #     * {::Google::Cloud::Retail::V2::Product#price_info Product.price_info}
        #     * {::Google::Cloud::Retail::V2::Product#availability Product.availability}
        #     * {::Google::Cloud::Retail::V2::Product#available_quantity Product.available_quantity}
        #     * {::Google::Cloud::Retail::V2::Product#fulfillment_info Product.fulfillment_info}
        #
        #     If a full overwrite of inventory information while ignoring timestamps is
        #     needed, [UpdateProduct][] should be invoked instead.
        # @!attribute [rw] set_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Indicates which inventory fields in the provided
        #     {::Google::Cloud::Retail::V2::Product Product} to update. If not set or set with
        #     empty paths, all inventory fields will be updated.
        #
        #     If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
        #     is returned and the entire update will be ignored.
        # @!attribute [rw] set_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the request is issued, used to prevent
        #     out-of-order updates on inventory fields with the last update time
        #     recorded. If not provided, the internal system time will be used.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the {::Google::Cloud::Retail::V2::Product Product} with name
        #     {::Google::Cloud::Retail::V2::Product#name Product.name} is not found, the
        #     inventory update will still be processed and retained for at most 1 day
        #     until the {::Google::Cloud::Retail::V2::Product Product} is created. If set to
        #     false, a NOT_FOUND error is returned if the
        #     {::Google::Cloud::Retail::V2::Product Product} is not found.
        class SetInventoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the SetInventory operation.
        # Currently empty because there is no meaningful metadata populated from the
        # [SetInventory][] method.
        class SetInventoryMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the SetInventoryRequest.  Currently empty because
        # there is no meaningful response populated from the [SetInventory][]
        # method.
        class SetInventoryResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [AddFulfillmentPlaces][] method.
        # @!attribute [rw] product
        #   @return [::String]
        #     Required. Full resource name of {::Google::Cloud::Retail::V2::Product Product},
        #     such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
        #
        #     If the caller does not have permission to access the
        #     {::Google::Cloud::Retail::V2::Product Product}, regardless of whether or not it
        #     exists, a PERMISSION_DENIED error is returned.
        # @!attribute [rw] type
        #   @return [::String]
        #     Required. The fulfillment type, including commonly used types (such as
        #     pickup in store and same day delivery), and custom types.
        #
        #     Supported values:
        #
        #     * "pickup-in-store"
        #     * "ship-to-store"
        #     * "same-day-delivery"
        #     * "next-day-delivery"
        #     * "custom-type-1"
        #     * "custom-type-2"
        #     * "custom-type-3"
        #     * "custom-type-4"
        #     * "custom-type-5"
        #
        #     If this field is set to an invalid value other than these, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     This field directly corresponds to [Product.fulfillment_info.type][].
        # @!attribute [rw] place_ids
        #   @return [::Array<::String>]
        #     Required. The IDs for this
        #     {::Google::Cloud::Retail::V2::AddFulfillmentPlacesRequest#type type}, such as
        #     the store IDs for "pickup-in-store" or the region IDs for
        #     "same-day-delivery" to be added for this
        #     {::Google::Cloud::Retail::V2::AddFulfillmentPlacesRequest#type type}. Duplicate
        #     IDs will be automatically ignored.
        #
        #     At least 1 value is required, and a maximum of 2000 values are allowed.
        #     Each value must be a string with a length limit of 10 characters, matching
        #     the pattern `[a-zA-Z0-9_-]+`, such as "store1" or "REGION-2". Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     If the total number of place IDs exceeds 2000 for this
        #     {::Google::Cloud::Retail::V2::AddFulfillmentPlacesRequest#type type} after
        #     adding, then the update will be rejected.
        # @!attribute [rw] add_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the fulfillment updates are issued, used to prevent
        #     out-of-order updates on fulfillment information. If not provided, the
        #     internal system time will be used.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the {::Google::Cloud::Retail::V2::Product Product} is not
        #     found, the fulfillment information will still be processed and retained for
        #     at most 1 day and processed once the
        #     {::Google::Cloud::Retail::V2::Product Product} is created. If set to false, a
        #     NOT_FOUND error is returned if the
        #     {::Google::Cloud::Retail::V2::Product Product} is not found.
        class AddFulfillmentPlacesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the AddFulfillmentPlaces operation.
        # Currently empty because there is no meaningful metadata populated from the
        # [AddFulfillmentPlaces][] method.
        class AddFulfillmentPlacesMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the AddFulfillmentPlacesRequest.  Currently empty because
        # there is no meaningful response populated from the [AddFulfillmentPlaces][]
        # method.
        class AddFulfillmentPlacesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [RemoveFulfillmentPlaces][] method.
        # @!attribute [rw] product
        #   @return [::String]
        #     Required. Full resource name of {::Google::Cloud::Retail::V2::Product Product},
        #     such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
        #
        #     If the caller does not have permission to access the
        #     {::Google::Cloud::Retail::V2::Product Product}, regardless of whether or not it
        #     exists, a PERMISSION_DENIED error is returned.
        # @!attribute [rw] type
        #   @return [::String]
        #     Required. The fulfillment type, including commonly used types (such as
        #     pickup in store and same day delivery), and custom types.
        #
        #     Supported values:
        #
        #     * "pickup-in-store"
        #     * "ship-to-store"
        #     * "same-day-delivery"
        #     * "next-day-delivery"
        #     * "custom-type-1"
        #     * "custom-type-2"
        #     * "custom-type-3"
        #     * "custom-type-4"
        #     * "custom-type-5"
        #
        #     If this field is set to an invalid value other than these, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     This field directly corresponds to [Product.fulfillment_info.type][].
        # @!attribute [rw] place_ids
        #   @return [::Array<::String>]
        #     Required. The IDs for this
        #     {::Google::Cloud::Retail::V2::RemoveFulfillmentPlacesRequest#type type}, such as
        #     the store IDs for "pickup-in-store" or the region IDs for
        #     "same-day-delivery", to be removed for this
        #     {::Google::Cloud::Retail::V2::RemoveFulfillmentPlacesRequest#type type}.
        #
        #     At least 1 value is required, and a maximum of 2000 values are allowed.
        #     Each value must be a string with a length limit of 10 characters, matching
        #     the pattern `[a-zA-Z0-9_-]+`, such as "store1" or "REGION-2". Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        # @!attribute [rw] remove_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the fulfillment updates are issued, used to prevent
        #     out-of-order updates on fulfillment information. If not provided, the
        #     internal system time will be used.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the {::Google::Cloud::Retail::V2::Product Product} is not
        #     found, the fulfillment information will still be processed and retained for
        #     at most 1 day and processed once the
        #     {::Google::Cloud::Retail::V2::Product Product} is created. If set to false, a
        #     NOT_FOUND error is returned if the
        #     {::Google::Cloud::Retail::V2::Product Product} is not found.
        class RemoveFulfillmentPlacesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the RemoveFulfillmentPlaces operation.
        # Currently empty because there is no meaningful metadata populated from the
        # [RemoveFulfillmentPlaces][] method.
        class RemoveFulfillmentPlacesMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the RemoveFulfillmentPlacesRequest. Currently empty because there
        # is no meaningful response populated from the [RemoveFulfillmentPlaces][]
        # method.
        class RemoveFulfillmentPlacesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
