# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, remove cluster node on Element Software Cluster.
      class Na_elementsw_node < Base
        # @return [:present, :absent, nil] Element Software Storage Node operation state.,present - To add pending node to participate in cluster data storage.,absent  - To remove node from active cluster.  A node cannot be removed if active drives are present.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, Integer] List of IDs or Names or IP Address of nodes from cluster used for operation.
        attribute :node_id
        validates :node_id, presence: true, type: MultipleTypes.new(String, Integer)
      end
    end
  end
end
