# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV HostStorages (applicable only for block storage).
      class Ovirt_host_storage_facts < Base
        # @return [String] Host to get device list from.
        attribute :host
        validates :host, presence: true, type: String

        # @return [Hash, nil] Dictionary with values for iSCSI storage type:,C(address) - Address of the iSCSI storage server.,C(target) - The target IQN for the storage device.,C(username) - A CHAP user name for logging into a target.,C(password) - A CHAP password for logging into a target.
        attribute :iscsi
        validates :iscsi, type: Hash

        # @return [Object, nil] Dictionary with values for fibre channel storage type:,C(address) - Address of the fibre channel storage server.,C(port) - Port of the fibre channel storage server.,C(lun_id) - LUN id.
        attribute :fcp
      end
    end
  end
end
