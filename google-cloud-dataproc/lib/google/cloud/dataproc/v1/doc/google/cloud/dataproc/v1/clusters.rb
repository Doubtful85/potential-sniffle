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
  module Cloud
    module Dataproc
      module V1
        # Describes the identifying information, config, and status of
        # a cluster of Compute Engine instances.
        # @!attribute [rw] project_id
        #   @return [String]
        #     Required. The Google Cloud Platform project ID that the cluster belongs to.
        # @!attribute [rw] cluster_name
        #   @return [String]
        #     Required. The cluster name. Cluster names within a project must be
        #     unique. Names of deleted clusters can be reused.
        # @!attribute [rw] config
        #   @return [Google::Cloud::Dataproc::V1::ClusterConfig]
        #     Required. The cluster config. Note that Cloud Dataproc may set
        #     default values, and values may change when clusters are updated.
        # @!attribute [rw] labels
        #   @return [Hash{String => String}]
        #     Optional. The labels to associate with this cluster.
        #     Label **keys** must contain 1 to 63 characters, and must conform to
        #     [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
        #     Label **values** may be empty, but, if present, must contain 1 to 63
        #     characters, and must conform to [RFC
        #     1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
        #     associated with a cluster.
        # @!attribute [rw] status
        #   @return [Google::Cloud::Dataproc::V1::ClusterStatus]
        #     Output only. Cluster status.
        # @!attribute [rw] status_history
        #   @return [Array<Google::Cloud::Dataproc::V1::ClusterStatus>]
        #     Output only. The previous cluster status.
        # @!attribute [rw] cluster_uuid
        #   @return [String]
        #     Output only. A cluster UUID (Unique Universal Identifier). Cloud Dataproc
        #     generates this value when it creates the cluster.
        # @!attribute [rw] metrics
        #   @return [Google::Cloud::Dataproc::V1::ClusterMetrics]
        #     Contains cluster daemon metrics such as HDFS and YARN stats.
        #
        #     **Beta Feature**: This report is available for testing purposes only. It
        #     may be changed before final release.
        class Cluster; end

        # The cluster config.
        # @!attribute [rw] config_bucket
        #   @return [String]
        #     Optional. A Google Cloud Storage bucket used to stage job
        #     dependencies, config files, and job driver console output.
        #     If you do not specify a staging bucket, Cloud
        #     Dataproc will determine a Cloud Storage location (US,
        #     ASIA, or EU) for your cluster's staging bucket according to the Google
        #     Compute Engine zone where your cluster is deployed, and then create
        #     and manage this project-level, per-location bucket (see
        #     [Cloud Dataproc staging
        #     bucket](/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
        # @!attribute [rw] gce_cluster_config
        #   @return [Google::Cloud::Dataproc::V1::GceClusterConfig]
        #     Optional. The shared Compute Engine config settings for
        #     all instances in a cluster.
        # @!attribute [rw] master_config
        #   @return [Google::Cloud::Dataproc::V1::InstanceGroupConfig]
        #     Optional. The Compute Engine config settings for
        #     the master instance in a cluster.
        # @!attribute [rw] worker_config
        #   @return [Google::Cloud::Dataproc::V1::InstanceGroupConfig]
        #     Optional. The Compute Engine config settings for
        #     worker instances in a cluster.
        # @!attribute [rw] secondary_worker_config
        #   @return [Google::Cloud::Dataproc::V1::InstanceGroupConfig]
        #     Optional. The Compute Engine config settings for
        #     additional worker instances in a cluster.
        # @!attribute [rw] software_config
        #   @return [Google::Cloud::Dataproc::V1::SoftwareConfig]
        #     Optional. The config settings for software inside the cluster.
        # @!attribute [rw] initialization_actions
        #   @return [Array<Google::Cloud::Dataproc::V1::NodeInitializationAction>]
        #     Optional. Commands to execute on each node after config is
        #     completed. By default, executables are run on master and all worker nodes.
        #     You can test a node's `role` metadata to run an executable on
        #     a master or worker node, as shown below using `curl` (you can also use
        #     `wget`):
        #
        #         ROLE=$(curl -H Metadata-Flavor:Google
        #         http://metadata/computeMetadata/v1/instance/attributes/dataproc-role)
        #         if [[ "${ROLE}" == 'Master' ]]; then
        #           ... master specific actions ...
        #         else
        #           ... worker specific actions ...
        #         fi
        # @!attribute [rw] encryption_config
        #   @return [Google::Cloud::Dataproc::V1::EncryptionConfig]
        #     Optional. Encryption settings for the cluster.
        class ClusterConfig; end

        # Encryption settings for the cluster.
        # @!attribute [rw] gce_pd_kms_key_name
        #   @return [String]
        #     Optional. The Cloud KMS key name to use for PD disk encryption for all
        #     instances in the cluster.
        class EncryptionConfig; end

        # Common config settings for resources of Compute Engine cluster
        # instances, applicable to all instances in the cluster.
        # @!attribute [rw] zone_uri
        #   @return [String]
        #     Optional. The zone where the Compute Engine cluster will be located.
        #     On a create request, it is required in the "global" region. If omitted
        #     in a non-global Cloud Dataproc region, the service will pick a zone in the
        #     corresponding Compute Engine region. On a get request, zone will
        #     always be present.
        #
        #     A full URL, partial URI, or short name are valid. Examples:
        #
        #     * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]`
        #     * `projects/[project_id]/zones/[zone]`
        #     * `us-central1-f`
        # @!attribute [rw] network_uri
        #   @return [String]
        #     Optional. The Compute Engine network to be used for machine
        #     communications. Cannot be specified with subnetwork_uri. If neither
        #     `network_uri` nor `subnetwork_uri` is specified, the "default" network of
        #     the project is used, if it exists. Cannot be a "Custom Subnet Network" (see
        #     [Using Subnetworks](https://cloud.google.com/compute/docs/subnetworks) for more information).
        #
        #     A full URL, partial URI, or short name are valid. Examples:
        #
        #     * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default`
        #     * `projects/[project_id]/regions/global/default`
        #     * `default`
        # @!attribute [rw] subnetwork_uri
        #   @return [String]
        #     Optional. The Compute Engine subnetwork to be used for machine
        #     communications. Cannot be specified with network_uri.
        #
        #     A full URL, partial URI, or short name are valid. Examples:
        #
        #     * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0`
        #     * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
        #     * `sub0`
        # @!attribute [rw] internal_ip_only
        #   @return [true, false]
        #     Optional. If true, all instances in the cluster will only have internal IP
        #     addresses. By default, clusters are not restricted to internal IP
        #     addresses, and will have ephemeral external IP addresses assigned to each
        #     instance. This `internal_ip_only` restriction can only be enabled for
        #     subnetwork enabled networks, and all off-cluster dependencies must be
        #     configured to be accessible without external IP addresses.
        # @!attribute [rw] service_account
        #   @return [String]
        #     Optional. The service account of the instances. Defaults to the default
        #     Compute Engine service account. Custom service accounts need
        #     permissions equivalent to the following IAM roles:
        #
        #     * roles/logging.logWriter
        #     * roles/storage.objectAdmin
        #
        #     (see
        #     https://cloud.google.com/compute/docs/access/service-accounts#custom_service_accounts
        #     for more information).
        #     Example: `[account_id]@[project_id].iam.gserviceaccount.com`
        # @!attribute [rw] service_account_scopes
        #   @return [Array<String>]
        #     Optional. The URIs of service account scopes to be included in
        #     Compute Engine instances. The following base set of scopes is always
        #     included:
        #
        #     * https://www.googleapis.com/auth/cloud.useraccounts.readonly
        #     * https://www.googleapis.com/auth/devstorage.read_write
        #     * https://www.googleapis.com/auth/logging.write
        #
        #     If no scopes are specified, the following defaults are also provided:
        #
        #     * https://www.googleapis.com/auth/bigquery
        #     * https://www.googleapis.com/auth/bigtable.admin.table
        #     * https://www.googleapis.com/auth/bigtable.data
        #     * https://www.googleapis.com/auth/devstorage.full_control
        # @!attribute [rw] tags
        #   @return [Array<String>]
        #     The Compute Engine tags to add to all instances (see
        #     [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
        # @!attribute [rw] metadata
        #   @return [Hash{String => String}]
        #     The Compute Engine metadata entries to add to all instances (see
        #     [Project and instance
        #     metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
        class GceClusterConfig; end

        # Optional. The config settings for Compute Engine resources in
        # an instance group, such as a master or worker group.
        # @!attribute [rw] num_instances
        #   @return [Integer]
        #     Optional. The number of VM instances in the instance group.
        #     For master instance groups, must be set to 1.
        # @!attribute [rw] instance_names
        #   @return [Array<String>]
        #     Output only. The list of instance names. Cloud Dataproc derives the names
        #     from `cluster_name`, `num_instances`, and the instance group.
        # @!attribute [rw] image_uri
        #   @return [String]
        #     Optional. The Compute Engine image resource used for cluster
        #     instances. It can be specified or may be inferred from
        #     `SoftwareConfig.image_version`.
        # @!attribute [rw] machine_type_uri
        #   @return [String]
        #     Optional. The Compute Engine machine type used for cluster instances.
        #
        #     A full URL, partial URI, or short name are valid. Examples:
        #
        #     * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2`
        #     * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2`
        #     * `n1-standard-2`
        #
        #     **Auto Zone Exception**: If you are using the Cloud Dataproc
        #     [Auto Zone
        #     Placement](/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement)
        #     feature, you must use the short name of the machine type
        #     resource, for example, `n1-standard-2`.
        # @!attribute [rw] disk_config
        #   @return [Google::Cloud::Dataproc::V1::DiskConfig]
        #     Optional. Disk option config settings.
        # @!attribute [rw] is_preemptible
        #   @return [true, false]
        #     Optional. Specifies that this instance group contains preemptible
        #     instances.
        # @!attribute [rw] managed_group_config
        #   @return [Google::Cloud::Dataproc::V1::ManagedGroupConfig]
        #     Output only. The config for Compute Engine Instance Group
        #     Manager that manages this group.
        #     This is only used for preemptible instance groups.
        # @!attribute [rw] accelerators
        #   @return [Array<Google::Cloud::Dataproc::V1::AcceleratorConfig>]
        #     Optional. The Compute Engine accelerator configuration for these
        #     instances.
        #
        #     **Beta Feature**: This feature is still under development. It may be
        #     changed before final release.
        class InstanceGroupConfig; end

        # Specifies the resources used to actively manage an instance group.
        # @!attribute [rw] instance_template_name
        #   @return [String]
        #     Output only. The name of the Instance Template used for the Managed
        #     Instance Group.
        # @!attribute [rw] instance_group_manager_name
        #   @return [String]
        #     Output only. The name of the Instance Group Manager for this group.
        class ManagedGroupConfig; end

        # Specifies the type and number of accelerator cards attached to the instances
        # of an instance. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/).
        # @!attribute [rw] accelerator_type_uri
        #   @return [String]
        #     Full URL, partial URI, or short name of the accelerator type resource to
        #     expose to this instance. See
        #     [Compute Engine
        #     AcceleratorTypes](/compute/docs/reference/beta/acceleratorTypes).
        #
        #     Examples:
        #
        #     * `https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80`
        #     * `projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80`
        #     * `nvidia-tesla-k80`
        #
        #     **Auto Zone Exception**: If you are using the Cloud Dataproc
        #     [Auto Zone
        #     Placement](/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement)
        #     feature, you must use the short name of the accelerator type
        #     resource, for example, `nvidia-tesla-k80`.
        # @!attribute [rw] accelerator_count
        #   @return [Integer]
        #     The number of the accelerator cards of this type exposed to this instance.
        class AcceleratorConfig; end

        # Specifies the config of disk options for a group of VM instances.
        # @!attribute [rw] boot_disk_type
        #   @return [String]
        #     Optional. Type of the boot disk (default is "pd-standard").
        #     Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or
        #     "pd-standard" (Persistent Disk Hard Disk Drive).
        # @!attribute [rw] boot_disk_size_gb
        #   @return [Integer]
        #     Optional. Size in GB of the boot disk (default is 500GB).
        # @!attribute [rw] num_local_ssds
        #   @return [Integer]
        #     Optional. Number of attached SSDs, from 0 to 4 (default is 0).
        #     If SSDs are not attached, the boot disk is used to store runtime logs and
        #     [HDFS](https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data.
        #     If one or more SSDs are attached, this runtime bulk
        #     data is spread across them, and the boot disk contains only basic
        #     config and installed binaries.
        class DiskConfig; end

        # Specifies an executable to run on a fully configured node and a
        # timeout period for executable completion.
        # @!attribute [rw] executable_file
        #   @return [String]
        #     Required. Cloud Storage URI of executable file.
        # @!attribute [rw] execution_timeout
        #   @return [Google::Protobuf::Duration]
        #     Optional. Amount of time executable has to complete. Default is
        #     10 minutes. Cluster creation fails with an explanatory error message (the
        #     name of the executable that caused the error and the exceeded timeout
        #     period) if the executable is not completed at end of the timeout period.
        class NodeInitializationAction; end

        # The status of a cluster and its instances.
        # @!attribute [rw] state
        #   @return [Google::Cloud::Dataproc::V1::ClusterStatus::State]
        #     Output only. The cluster's state.
        # @!attribute [rw] detail
        #   @return [String]
        #     Output only. Optional details of cluster's state.
        # @!attribute [rw] state_start_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. Time when this state was entered.
        # @!attribute [rw] substate
        #   @return [Google::Cloud::Dataproc::V1::ClusterStatus::Substate]
        #     Output only. Additional state information that includes
        #     status reported by the agent.
        class ClusterStatus
          # The cluster state.
          module State
            # The cluster state is unknown.
            UNKNOWN = 0

            # The cluster is being created and set up. It is not ready for use.
            CREATING = 1

            # The cluster is currently running and healthy. It is ready for use.
            RUNNING = 2

            # The cluster encountered an error. It is not ready for use.
            ERROR = 3

            # The cluster is being deleted. It cannot be used.
            DELETING = 4

            # The cluster is being updated. It continues to accept and process jobs.
            UPDATING = 5
          end

          # The cluster substate.
          module Substate
            # The cluster substate is unknown.
            UNSPECIFIED = 0

            # The cluster is known to be in an unhealthy state
            # (for example, critical daemons are not running or HDFS capacity is
            # exhausted).
            #
            # Applies to RUNNING state.
            UNHEALTHY = 1

            # The agent-reported status is out of date (may occur if
            # Cloud Dataproc loses communication with Agent).
            #
            # Applies to RUNNING state.
            STALE_STATUS = 2
          end
        end

        # Specifies the selection and config of software inside the cluster.
        # @!attribute [rw] image_version
        #   @return [String]
        #     Optional. The version of software inside the cluster. It must be one of the
        #     supported [Cloud Dataproc
        #     Versions](/dataproc/docs/concepts/versioning/dataproc-versions#supported_cloud_dataproc_versions),
        #     such as "1.2" (including a subminor version, such as "1.2.29"), or the
        #     ["preview"
        #     version](/dataproc/docs/concepts/versioning/dataproc-versions#other_versions).
        #     If unspecified, it defaults to the latest Debian version.
        # @!attribute [rw] properties
        #   @return [Hash{String => String}]
        #     Optional. The properties to set on daemon config files.
        #
        #     Property keys are specified in `prefix:property` format, for example
        #     `core:hadoop.tmp.dir`. The following are supported prefixes
        #     and their mappings:
        #
        #     * capacity-scheduler: `capacity-scheduler.xml`
        #     * core:   `core-site.xml`
        #     * distcp: `distcp-default.xml`
        #     * hdfs:   `hdfs-site.xml`
        #     * hive:   `hive-site.xml`
        #     * mapred: `mapred-site.xml`
        #     * pig:    `pig.properties`
        #     * spark:  `spark-defaults.conf`
        #     * yarn:   `yarn-site.xml`
        #
        #     For more information, see
        #     [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
        # @!attribute [rw] optional_components
        #   @return [Array<Google::Cloud::Dataproc::V1::Component>]
        #     The set of optional components to activate on the cluster.
        class SoftwareConfig; end

        # Contains cluster daemon metrics, such as HDFS and YARN stats.
        #
        # **Beta Feature**: This report is available for testing purposes only. It may
        # be changed before final release.
        # @!attribute [rw] hdfs_metrics
        #   @return [Hash{String => Integer}]
        #     The HDFS metrics.
        # @!attribute [rw] yarn_metrics
        #   @return [Hash{String => Integer}]
        #     The YARN metrics.
        class ClusterMetrics; end

        # A request to create a cluster.
        # @!attribute [rw] project_id
        #   @return [String]
        #     Required. The ID of the Google Cloud Platform project that the cluster
        #     belongs to.
        # @!attribute [rw] region
        #   @return [String]
        #     Required. The Cloud Dataproc region in which to handle the request.
        # @!attribute [rw] cluster
        #   @return [Google::Cloud::Dataproc::V1::Cluster]
        #     Required. The cluster to create.
        # @!attribute [rw] request_id
        #   @return [String]
        #     Optional. A unique id used to identify the request. If the server
        #     receives two {Google::Cloud::Dataproc::V1::CreateClusterRequest CreateClusterRequest} requests  with the same
        #     id, then the second request will be ignored and the
        #     first {Google::Longrunning::Operation} created and stored in the backend
        #     is returned.
        #
        #     It is recommended to always set this value to a
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
        #
        #     The id must contain only letters (a-z, A-Z), numbers (0-9),
        #     underscores (_), and hyphens (-). The maximum length is 40 characters.
        class CreateClusterRequest; end

        # A request to update a cluster.
        # @!attribute [rw] project_id
        #   @return [String]
        #     Required. The ID of the Google Cloud Platform project the
        #     cluster belongs to.
        # @!attribute [rw] region
        #   @return [String]
        #     Required. The Cloud Dataproc region in which to handle the request.
        # @!attribute [rw] cluster_name
        #   @return [String]
        #     Required. The cluster name.
        # @!attribute [rw] cluster
        #   @return [Google::Cloud::Dataproc::V1::Cluster]
        #     Required. The changes to the cluster.
        # @!attribute [rw] graceful_decommission_timeout
        #   @return [Google::Protobuf::Duration]
        #     Optional. Timeout for graceful YARN decomissioning. Graceful
        #     decommissioning allows removing nodes from the cluster without
        #     interrupting jobs in progress. Timeout specifies how long to wait for jobs
        #     in progress to finish before forcefully removing nodes (and potentially
        #     interrupting jobs). Default timeout is 0 (for forceful decommission), and
        #     the maximum allowed timeout is 1 day.
        #
        #     Only supported on Dataproc image versions 1.2 and higher.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Required. Specifies the path, relative to `Cluster`, of
        #     the field to update. For example, to change the number of workers
        #     in a cluster to 5, the `update_mask` parameter would be
        #     specified as `config.worker_config.num_instances`,
        #     and the `PATCH` request body would specify the new value, as follows:
        #
        #         {
        #           "config":{
        #             "workerConfig":{
        #               "numInstances":"5"
        #             }
        #           }
        #         }
        #     Similarly, to change the number of preemptible workers in a cluster to 5,
        #     the `update_mask` parameter would be
        #     `config.secondary_worker_config.num_instances`, and the `PATCH` request
        #     body would be set as follows:
        #
        #         {
        #           "config":{
        #             "secondaryWorkerConfig":{
        #               "numInstances":"5"
        #             }
        #           }
        #         }
        #     <strong>Note:</strong> Currently, only the following fields can be updated:
        #
        #      <table>
        #      <tbody>
        #      <tr>
        #      <td><strong>Mask</strong></td>
        #      <td><strong>Purpose</strong></td>
        #      </tr>
        #      <tr>
        #      <td><strong><em>labels</em></strong></td>
        #      <td>Update labels</td>
        #      </tr>
        #      <tr>
        #      <td><strong><em>config.worker_config.num_instances</em></strong></td>
        #      <td>Resize primary worker group</td>
        #      </tr>
        #      <tr>
        #      <td><strong><em>config.secondary_worker_config.num_instances</em></strong></td>
        #      <td>Resize secondary worker group</td>
        #      </tr>
        #      </tbody>
        #      </table>
        # @!attribute [rw] request_id
        #   @return [String]
        #     Optional. A unique id used to identify the request. If the server
        #     receives two {Google::Cloud::Dataproc::V1::UpdateClusterRequest UpdateClusterRequest} requests  with the same
        #     id, then the second request will be ignored and the
        #     first {Google::Longrunning::Operation} created and stored in the
        #     backend is returned.
        #
        #     It is recommended to always set this value to a
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
        #
        #     The id must contain only letters (a-z, A-Z), numbers (0-9),
        #     underscores (_), and hyphens (-). The maximum length is 40 characters.
        class UpdateClusterRequest; end

        # A request to delete a cluster.
        # @!attribute [rw] project_id
        #   @return [String]
        #     Required. The ID of the Google Cloud Platform project that the cluster
        #     belongs to.
        # @!attribute [rw] region
        #   @return [String]
        #     Required. The Cloud Dataproc region in which to handle the request.
        # @!attribute [rw] cluster_name
        #   @return [String]
        #     Required. The cluster name.
        # @!attribute [rw] cluster_uuid
        #   @return [String]
        #     Optional. Specifying the `cluster_uuid` means the RPC should fail
        #     (with error NOT_FOUND) if cluster with specified UUID does not exist.
        # @!attribute [rw] request_id
        #   @return [String]
        #     Optional. A unique id used to identify the request. If the server
        #     receives two {Google::Cloud::Dataproc::V1::DeleteClusterRequest DeleteClusterRequest} requests  with the same
        #     id, then the second request will be ignored and the
        #     first {Google::Longrunning::Operation} created and stored in the
        #     backend is returned.
        #
        #     It is recommended to always set this value to a
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
        #
        #     The id must contain only letters (a-z, A-Z), numbers (0-9),
        #     underscores (_), and hyphens (-). The maximum length is 40 characters.
        class DeleteClusterRequest; end

        # Request to get the resource representation for a cluster in a project.
        # @!attribute [rw] project_id
        #   @return [String]
        #     Required. The ID of the Google Cloud Platform project that the cluster
        #     belongs to.
        # @!attribute [rw] region
        #   @return [String]
        #     Required. The Cloud Dataproc region in which to handle the request.
        # @!attribute [rw] cluster_name
        #   @return [String]
        #     Required. The cluster name.
        class GetClusterRequest; end

        # A request to list the clusters in a project.
        # @!attribute [rw] project_id
        #   @return [String]
        #     Required. The ID of the Google Cloud Platform project that the cluster
        #     belongs to.
        # @!attribute [rw] region
        #   @return [String]
        #     Required. The Cloud Dataproc region in which to handle the request.
        # @!attribute [rw] filter
        #   @return [String]
        #     Optional. A filter constraining the clusters to list. Filters are
        #     case-sensitive and have the following syntax:
        #
        #     field = value [AND [field = value]] ...
        #
        #     where **field** is one of `status.state`, `clusterName`, or `labels.[KEY]`,
        #     and `[KEY]` is a label key. **value** can be `*` to match all values.
        #     `status.state` can be one of the following: `ACTIVE`, `INACTIVE`,
        #     `CREATING`, `RUNNING`, `ERROR`, `DELETING`, or `UPDATING`. `ACTIVE`
        #     contains the `CREATING`, `UPDATING`, and `RUNNING` states. `INACTIVE`
        #     contains the `DELETING` and `ERROR` states.
        #     `clusterName` is the name of the cluster provided at creation time.
        #     Only the logical `AND` operator is supported; space-separated items are
        #     treated as having an implicit `AND` operator.
        #
        #     Example filter:
        #
        #     status.state = ACTIVE AND clusterName = mycluster
        #     AND labels.env = staging AND labels.starred = *
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Optional. The standard List page size.
        # @!attribute [rw] page_token
        #   @return [String]
        #     Optional. The standard List page token.
        class ListClustersRequest; end

        # The list of all clusters in a project.
        # @!attribute [rw] clusters
        #   @return [Array<Google::Cloud::Dataproc::V1::Cluster>]
        #     Output only. The clusters in the project.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     Output only. This token is included in the response if there are more
        #     results to fetch. To fetch additional results, provide this value as the
        #     `page_token` in a subsequent `ListClustersRequest`.
        class ListClustersResponse; end

        # A request to collect cluster diagnostic information.
        # @!attribute [rw] project_id
        #   @return [String]
        #     Required. The ID of the Google Cloud Platform project that the cluster
        #     belongs to.
        # @!attribute [rw] region
        #   @return [String]
        #     Required. The Cloud Dataproc region in which to handle the request.
        # @!attribute [rw] cluster_name
        #   @return [String]
        #     Required. The cluster name.
        class DiagnoseClusterRequest; end

        # The location of diagnostic output.
        # @!attribute [rw] output_uri
        #   @return [String]
        #     Output only. The Cloud Storage URI of the diagnostic output.
        #     The output report is a plain text file with a summary of collected
        #     diagnostics.
        class DiagnoseClusterResults; end
      end
    end
  end
end