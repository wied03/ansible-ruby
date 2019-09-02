# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/Delete vserver peer
      class Na_ontap_vserver_peer < Base
        # @return [:present, :absent, nil] Whether the specified vserver peer should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Specifies name of the source Vserver in the relationship.
        attribute :vserver
        validates :vserver, type: String

        # @return [:snapmirror, :file_copy, :lun_copy, nil] List of applications which can make use of the peering relationship.
        attribute :applications
        validates :applications, expression_inclusion: {:in=>[:snapmirror, :file_copy, :lun_copy], :message=>"%{value} needs to be :snapmirror, :file_copy, :lun_copy"}, allow_nil: true

        # @return [String, nil] Specifies name of the peer Vserver in the relationship.
        attribute :peer_vserver
        validates :peer_vserver, type: String

        # @return [String, nil] Specifies name of the peer Cluster.,If peer Cluster is not given, it considers local Cluster.
        attribute :peer_cluster
        validates :peer_cluster, type: String

        # @return [String, nil] Destination hostname or IP address.,Required for creating the vserver peer relationship
        attribute :dest_hostname
        validates :dest_hostname, type: String

        # @return [Object, nil] Destination username.,Optional if this is same as source username.
        attribute :dest_username

        # @return [Object, nil] Destination password.,Optional if this is same as source password.
        attribute :dest_password
      end
    end
  end
end
