# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, Erase or Remove drive for nodes on Element Software Cluster.
      class Na_elementsw_drive < Base
        # @return [String, nil] Drive ID or Serial Name of Node drive.,If not specified, add and remove action will be performed on all drives of node_id
        attribute :drive_id
        validates :drive_id, type: String

        # @return [:present, :absent, :clean, nil] Element SW Storage Drive operation state.,present - To add drive of node to participate in cluster data storage.,absent  - To remove the drive from being part of active cluster.,clean   - Clean-up any residual data persistent on a *removed* drive in a secured method.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :clean], :message=>"%{value} needs to be :present, :absent, :clean"}, allow_nil: true

        # @return [String] ID or Name of cluster node.
        attribute :node_id
        validates :node_id, presence: true, type: String

        # @return [Symbol, nil] Flag to force drive operation during upgrade.
        attribute :force_during_upgrade
        validates :force_during_upgrade, type: Symbol

        # @return [Symbol, nil] Flag to force during a bin sync operation.
        attribute :force_during_bin_sync
        validates :force_during_bin_sync, type: Symbol
      end
    end
  end
end
