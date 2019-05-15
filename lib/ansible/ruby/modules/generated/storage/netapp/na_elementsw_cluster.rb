# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Initialize Element Software node ownership to form a cluster.
      class Na_elementsw_cluster < Base
        # @return [String] Floating (virtual) IP address for the cluster on the management network.
        attribute :management_virtual_ip
        validates :management_virtual_ip, presence: true, type: String

        # @return [String] Floating (virtual) IP address for the cluster on the storage (iSCSI) network.
        attribute :storage_virtual_ip
        validates :storage_virtual_ip, presence: true, type: String

        # @return [String, nil] Number of replicas of each piece of data to store in the cluster.
        attribute :replica_count
        validates :replica_count, type: String

        # @return [String, nil] Username for the cluster admin.,If not provided, default to login username.
        attribute :cluster_admin_username
        validates :cluster_admin_username, type: String

        # @return [String, nil] Initial password for the cluster admin account.,If not provided, default to login password.
        attribute :cluster_admin_password
        validates :cluster_admin_password, type: String

        # @return [Boolean, nil] Required to indicate your acceptance of the End User License Agreement when creating this cluster.,To accept the EULA, set this parameter to true.
        attribute :accept_eula
        validates :accept_eula, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] Storage IP (SIP) addresses of the initial set of nodes making up the cluster.,nodes IP must be in the list.
        attribute :nodes
        validates :nodes, type: TypeGeneric.new(String)

        # @return [Object, nil] List of name-value pairs in JSON object format.
        attribute :attributes
      end
    end
  end
end
