# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or diminish a GlusterFS trusted storage pool. A set of nodes can be added into an existing trusted storage pool or a new storage pool can be formed. Or, nodes can be removed from an existing trusted storage pool.
      class Gluster_peer < Base
        # @return [:present, :absent] Determines whether the nodes should be attached to the pool or removed from the pool. If the state is present, nodes will be attached to the pool. If state is absent, nodes will be detached from the pool.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Array<String>, String] List of nodes that have to be probed into the pool.
        attribute :nodes
        validates :nodes, presence: true, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Applicable only while removing the nodes from the pool. gluster will refuse to detach a node from the pool if any one of the node is down, in such cases force can be used.
        attribute :force
        validates :force, type: Symbol
      end
    end
  end
end
