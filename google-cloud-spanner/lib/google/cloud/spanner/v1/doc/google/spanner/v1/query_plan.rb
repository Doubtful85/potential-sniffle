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


module Google
  module Spanner
    module V1
      # Node information for nodes appearing in a
      # {Google::Spanner::V1::QueryPlan#plan_nodes QueryPlan#plan_nodes}.
      # @!attribute [rw] index
      #   @return [Integer]
      #     The `PlanNode`'s index in [node
      #     list][google.spanner.v1.QueryPlan.plan_nodes].
      # @!attribute [rw] kind
      #   @return [Google::Spanner::V1::PlanNode::Kind]
      #     Used to determine the type of node. May be needed for visualizing
      #     different kinds of nodes differently. For example, If the node is a
      #     {Google::Spanner::V1::PlanNode::Kind::SCALAR SCALAR} node, it will have a
      #     condensed representation which can be used to directly embed a description
      #     of the node in its parent.
      # @!attribute [rw] display_name
      #   @return [String]
      #     The display name for the node.
      # @!attribute [rw] child_links
      #   @return [Array<Google::Spanner::V1::PlanNode::ChildLink>]
      #     List of child node `index`es and their relationship to this parent.
      # @!attribute [rw] short_representation
      #   @return [Google::Spanner::V1::PlanNode::ShortRepresentation]
      #     Condensed representation for
      #     {Google::Spanner::V1::PlanNode::Kind::SCALAR SCALAR} nodes.
      # @!attribute [rw] metadata
      #   @return [Google::Protobuf::Struct]
      #     Attributes relevant to the node contained in a group of key-value pairs.
      #     For example, a Parameter Reference node could have the following
      #     information in its metadata:
      #
      #         {
      #           "parameter_reference": "param1",
      #           "parameter_type": "array"
      #         }
      # @!attribute [rw] execution_stats
      #   @return [Google::Protobuf::Struct]
      #     The execution statistics associated with the node, contained in a group of
      #     key-value pairs. Only present if the plan was returned as a result of a
      #     profile query. For example, number of executions, number of rows/time per
      #     execution etc.
      class PlanNode
        # Metadata associated with a parent-child relationship appearing in a
        # {Google::Spanner::V1::PlanNode PlanNode}.
        # @!attribute [rw] child_index
        #   @return [Integer]
        #     The node to which the link points.
        # @!attribute [rw] type
        #   @return [String]
        #     The type of the link. For example, in Hash Joins this could be used to
        #     distinguish between the build child and the probe child, or in the case
        #     of the child being an output variable, to represent the tag associated
        #     with the output variable.
        # @!attribute [rw] variable
        #   @return [String]
        #     Only present if the child node is
        #     {Google::Spanner::V1::PlanNode::Kind::SCALAR SCALAR} and corresponds to an
        #     output variable of the parent node. The field carries the name of the
        #     output variable. For example, a `TableScan` operator that reads rows from
        #     a table will have child links to the `SCALAR` nodes representing the
        #     output variables created for each column that is read by the operator.
        #     The corresponding `variable` fields will be set to the variable names
        #     assigned to the columns.
        class ChildLink; end

        # Condensed representation of a node and its subtree. Only present for
        # `SCALAR` {Google::Spanner::V1::PlanNode PlanNode(s)}.
        # @!attribute [rw] description
        #   @return [String]
        #     A string representation of the expression subtree rooted at this node.
        # @!attribute [rw] subqueries
        #   @return [Hash{String => Integer}]
        #     A mapping of (subquery variable name) -> (subquery node id) for cases
        #     where the `description` string of this node references a `SCALAR`
        #     subquery contained in the expression subtree rooted at this node. The
        #     referenced `SCALAR` subquery may not necessarily be a direct child of
        #     this node.
        class ShortRepresentation; end

        # The kind of {Google::Spanner::V1::PlanNode PlanNode}. Distinguishes between
        # the two different kinds of nodes that can appear in a query plan.
        module Kind
          # Not specified.
          KIND_UNSPECIFIED = 0

          # Denotes a Relational operator node in the expression tree. Relational
          # operators represent iterative processing of rows during query execution.
          # For example, a `TableScan` operation that reads rows from a table.
          RELATIONAL = 1

          # Denotes a Scalar node in the expression tree. Scalar nodes represent
          # non-iterable entities in the query plan. For example, constants or
          # arithmetic operators appearing inside predicate expressions or references
          # to column names.
          SCALAR = 2
        end
      end

      # Contains an ordered list of nodes appearing in the query plan.
      # @!attribute [rw] plan_nodes
      #   @return [Array<Google::Spanner::V1::PlanNode>]
      #     The nodes in the query plan. Plan nodes are returned in pre-order starting
      #     with the plan root. Each {Google::Spanner::V1::PlanNode PlanNode}'s `id`
      #     corresponds to its index in `plan_nodes`.
      class QueryPlan; end
    end
  end
end