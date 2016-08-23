# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_migrate_vmk < Base
        # @return [Object] ESXi hostname to be managed
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true

        # @return [Object] VMK interface name
        attribute :device
        validates :device, presence: true

        # @return [Object] Switch VMK interface is currently on
        attribute :current_switch_name
        validates :current_switch_name, presence: true

        # @return [Object] Portgroup name VMK interface is currently on
        attribute :current_portgroup_name
        validates :current_portgroup_name, presence: true

        # @return [Object] Switch name to migrate VMK interface to
        attribute :migrate_switch_name
        validates :migrate_switch_name, presence: true

        # @return [Object] Portgroup name to migrate VMK interface to
        attribute :migrate_portgroup_name
        validates :migrate_portgroup_name, presence: true
      end
    end
  end
end
