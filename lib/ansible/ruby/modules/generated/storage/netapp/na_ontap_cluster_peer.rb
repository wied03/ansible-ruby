# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/Delete cluster peer relations on ONTAP
      class Na_ontap_cluster_peer < Base
        # @return [:present, :absent, nil] Whether the specified cluster peer should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Intercluster address of the source cluster.,Used as peer-address in destination cluster.
        attribute :source_intercluster_lif
        validates :source_intercluster_lif, type: String

        # @return [String, nil] Intercluster address of the destination cluster.,Used as peer-address in source cluster.
        attribute :dest_intercluster_lif
        validates :dest_intercluster_lif, type: String

        # @return [String, nil] The arbitrary passphrase that matches the one given to the peer cluster.
        attribute :passphrase
        validates :passphrase, type: String

        # @return [String, nil] The name of the source cluster name in the peer relation to be deleted.
        attribute :source_cluster_name
        validates :source_cluster_name, type: String

        # @return [String, nil] The name of the destination cluster name in the peer relation to be deleted.
        attribute :dest_cluster_name
        validates :dest_cluster_name, type: String

        # @return [String] Destination cluster IP or hostname which needs to be peered.
        attribute :dest_hostname
        validates :dest_hostname, presence: true, type: String

        # @return [Object, nil] Destination username.,Optional if this is same as source username.
        attribute :dest_username

        # @return [Object, nil] Destination password.,Optional if this is same as source password.
        attribute :dest_password
      end
    end
  end
end
