# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete VLAN interfaces on Solaris/illumos systems.
      class Dladm_vlan < Base
        # @return [Object] VLAN interface name.
        attribute :name
        validates :name, presence: true

        # @return [Object] VLAN underlying link name.
        attribute :link
        validates :link, presence: true

        # @return [Boolean, nil] Specifies that the VLAN interface is temporary. Temporary VLANs do not persist across reboots.
        attribute :temporary
        validates :temporary, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] VLAN ID value for VLAN interface.
        attribute :vlan_id
        validates :vlan_id, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Create or delete Solaris/illumos VNIC.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
