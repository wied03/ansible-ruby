# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_vm_vss_dvs_migrate < Base
        # @return [String] Name of the virtual machine to migrate to a dvSwitch
        attribute :vm_name
        validates :vm_name, presence: true, type: String

        # @return [String] Name of the portgroup to migrate to the virtual machine to
        attribute :dvportgroup_name
        validates :dvportgroup_name, presence: true, type: String
      end
    end
  end
end
