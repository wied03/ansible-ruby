# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, deletes, or modifies amazon Redshift cluster instances.
      class Redshift < Base
        # @return [:create, :facts, :delete, :modify] Specifies the action to take.
        attribute :command
        validates :command, presence: true, inclusion: {:in=>[:create, :facts, :delete, :modify], :message=>"%{value} needs to be :create, :facts, :delete, :modify"}

        # @return [String] Redshift cluster identifier.
        attribute :identifier
        validates :identifier, presence: true, type: String

        # @return [:"ds1.xlarge", :"ds1.8xlarge", :"ds2.xlarge", :"ds2.8xlarge", :"dc1.large", :"dc1.8xlarge", :"dc2.large", :"dc2.8xlarge", :"dw1.xlarge", :"dw1.8xlarge", :"dw2.large", :"dw2.8xlarge", nil] The node type of the cluster. Must be specified when command=create.
        attribute :node_type
        validates :node_type, inclusion: {:in=>[:"ds1.xlarge", :"ds1.8xlarge", :"ds2.xlarge", :"ds2.8xlarge", :"dc1.large", :"dc1.8xlarge", :"dc2.large", :"dc2.8xlarge", :"dw1.xlarge", :"dw1.8xlarge", :"dw2.large", :"dw2.8xlarge"], :message=>"%{value} needs to be :\"ds1.xlarge\", :\"ds1.8xlarge\", :\"ds2.xlarge\", :\"ds2.8xlarge\", :\"dc1.large\", :\"dc1.8xlarge\", :\"dc2.large\", :\"dc2.8xlarge\", :\"dw1.xlarge\", :\"dw1.8xlarge\", :\"dw2.large\", :\"dw2.8xlarge\""}, allow_nil: true

        # @return [String, nil] Master database username. Used only when command=create.
        attribute :username
        validates :username, type: String

        # @return [String, nil] Master database password. Used only when command=create.
        attribute :password
        validates :password, type: String

        # @return [:"multi-node", :"single-node", nil] The type of cluster.
        attribute :cluster_type
        validates :cluster_type, inclusion: {:in=>[:"multi-node", :"single-node"], :message=>"%{value} needs to be :\"multi-node\", :\"single-node\""}, allow_nil: true

        # @return [Object, nil] Name of the database.
        attribute :db_name

        # @return [Object, nil] availability zone in which to launch cluster
        attribute :availability_zone

        # @return [Object, nil] Number of nodes. Only used when cluster_type=multi-node.
        attribute :number_of_nodes

        # @return [Object, nil] which subnet to place the cluster
        attribute :cluster_subnet_group_name

        # @return [Object, nil] in which security group the cluster belongs
        attribute :cluster_security_groups

        # @return [Object, nil] VPC security group
        attribute :vpc_security_group_ids

        # @return [String, nil] skip a final snapshot before deleting the cluster. Used only when command=delete.
        attribute :skip_final_cluster_snapshot
        validates :skip_final_cluster_snapshot, type: String

        # @return [Object, nil] identifier of the final snapshot to be created before deleting the cluster. If this parameter is provided, final_cluster_snapshot_identifier must be false. Used only when command=delete.
        attribute :final_cluster_snapshot_identifier

        # @return [Object, nil] maintenance window
        attribute :preferred_maintenance_window

        # @return [Object, nil] name of the cluster parameter group
        attribute :cluster_parameter_group_name

        # @return [Object, nil] period when the snapshot take place
        attribute :automated_snapshot_retention_period

        # @return [Object, nil] which port the cluster is listining
        attribute :port

        # @return [1.0, nil] which version the cluster should have
        attribute :cluster_version
        validates :cluster_version, inclusion: {:in=>[1.0], :message=>"%{value} needs to be 1.0"}, allow_nil: true

        # @return [String, nil] flag to determinate if upgrade of version is possible
        attribute :allow_version_upgrade
        validates :allow_version_upgrade, type: String

        # @return [String, nil] if the cluster is accessible publicly or not
        attribute :publicly_accessible
        validates :publicly_accessible, type: String

        # @return [String, nil] if the cluster is encrypted or not
        attribute :encrypted
        validates :encrypted, type: String

        # @return [Object, nil] if the cluster has an elastic IP or not
        attribute :elastic_ip

        # @return [Object, nil] Only used when command=modify.
        attribute :new_cluster_identifier

        # @return [:yes, :no, nil] When command=create, modify or restore then wait for the database to enter the 'available' state. When command=delete wait for the database to be terminated.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
