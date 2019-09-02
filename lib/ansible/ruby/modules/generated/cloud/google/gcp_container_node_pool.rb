# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # NodePool contains the name and configuration for a cluster's node pool.
      # Node pools are a set of nodes (i.e. VM's), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.
      class Gcp_container_node_pool < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name of the node pool.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The node configuration of the pool.
        attribute :config

        # @return [Integer] The initial node count for the pool. You must ensure that your Compute Engine resource quota is sufficient for this number of instances. You must also have available firewall and routes quota.
        attribute :initial_node_count
        validates :initial_node_count, presence: true, type: Integer

        # @return [Object, nil] Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
        attribute :autoscaling

        # @return [Object, nil] Management configuration for this NodePool.
        attribute :management

        # @return [String] The cluster this node pool belongs to.
        attribute :cluster
        validates :cluster, presence: true, type: String

        # @return [String] The zone where the node pool is deployed.
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
