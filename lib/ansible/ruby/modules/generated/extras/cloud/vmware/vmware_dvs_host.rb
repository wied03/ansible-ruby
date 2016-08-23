# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_dvs_host < Base
        # @return [String] The ESXi hostname
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String

        # @return [String] The name of the Distributed vSwitch
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [Array] The ESXi hosts vmnics to use with the Distributed vSwitch
        attribute :vmnics
        validates :vmnics, presence: true, type: Array

        # @return [:present, :absent] If the host should be present or absent attached to the vSwitch
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
