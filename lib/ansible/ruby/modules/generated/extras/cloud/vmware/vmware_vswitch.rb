# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_vswitch < Base
        # @return [String] vSwitch name to add
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [String] vmnic name to attach to vswitch
        attribute :nic_name
        validates :nic_name, presence: true, type: String

        # @return [Integer, nil] Number of port to configure on vswitch
        attribute :number_of_ports
        validates :number_of_ports, type: Integer

        # @return [Integer, nil] MTU to configure on vswitch
        attribute :mtu
        validates :mtu, type: Integer

        # @return [:present, :absent, nil] Add or remove the switch
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end