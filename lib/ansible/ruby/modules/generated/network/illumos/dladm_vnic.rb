# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete VNICs on Solaris/illumos systems.
      class Dladm_vnic < Base
        # @return [String] VNIC name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] VNIC underlying link name.
        attribute :link
        validates :link, presence: true, type: String

        # @return [Boolean, nil] Specifies that the VNIC is temporary. Temporary VNICs do not persist across reboots.
        attribute :temporary
        validates :temporary, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Sets the VNIC's MAC address. Must be valid unicast MAC address.
        attribute :mac
        validates :mac, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable VLAN tagging for this VNIC. The VLAN tag will have id I(vlan).
        attribute :vlan
        validates :vlan, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Create or delete Solaris/illumos VNIC.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
