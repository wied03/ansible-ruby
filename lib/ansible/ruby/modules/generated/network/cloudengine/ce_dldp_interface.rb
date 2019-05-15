# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages interface DLDP configuration on HUAWEI CloudEngine switches.
      class Ce_dldp_interface < Base
        # @return [Object] Must be fully qualified interface name, i.e. GE1/0/1, 10GE1/0/1, 40GE1/0/22, 100GE1/0/1.
        attribute :interface
        validates :interface, presence: true

        # @return [:enable, :disable, nil] Set interface DLDP enable state.
        attribute :enable
        validates :enable, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Set DLDP compatible-mode enable state.
        attribute :mode_enable
        validates :mode_enable, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Set the source MAC address for DLDP packets sent in the DLDP-compatible mode. The value of MAC address is in H-H-H format. H contains 1 to 4 hexadecimal digits.
        attribute :local_mac

        # @return [:enable, :disable, nil] Specify whether reseting interface DLDP state.
        attribute :reset
        validates :reset, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
