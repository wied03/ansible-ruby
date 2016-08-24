# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_vmkernel_ip_config < Base
        # @return [String] VMkernel interface name
        attribute :vmk_name
        validates :vmk_name, presence: true, type: String

        # @return [String] IP address to assign to VMkernel interface
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] Subnet Mask to assign to VMkernel interface
        attribute :subnet_mask
        validates :subnet_mask, presence: true, type: String
      end
    end
  end
end
