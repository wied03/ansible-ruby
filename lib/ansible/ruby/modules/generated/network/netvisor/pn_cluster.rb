# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute cluster-create or cluster-delete command.
      # A cluster allows two switches to cooperate in high-availability (HA) deployments. The nodes that form the cluster must be members of the same fabric. Clusters are typically used in conjunction with a virtual link aggregation group (VLAG) that allows links physically connected to two separate switches appear as a single trunk to a third device. The third device can be a switch,server, or any Ethernet device.
      class Pn_cluster < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch to run the cli on.
        attribute :pn_cliswitch

        # @return [:present, :absent] Specify action to perform. Use 'present' to create cluster and 'absent' to delete cluster.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Specify the name of the cluster.
        attribute :pn_name
        validates :pn_name, presence: true, type: String

        # @return [String, nil] Specify the name of the first switch in the cluster.,Required for 'cluster-create'.
        attribute :pn_cluster_node1
        validates :pn_cluster_node1, type: String

        # @return [String, nil] Specify the name of the second switch in the cluster.,Required for 'cluster-create'.
        attribute :pn_cluster_node2
        validates :pn_cluster_node2, type: String

        # @return [:validate, :"no-validate", nil] Validate the inter-switch links and state of switches in the cluster.
        attribute :pn_validate
        validates :pn_validate, expression_inclusion: {:in=>[:validate, :"no-validate"], :message=>"%{value} needs to be :validate, :\"no-validate\""}, allow_nil: true
      end
    end
  end
end
