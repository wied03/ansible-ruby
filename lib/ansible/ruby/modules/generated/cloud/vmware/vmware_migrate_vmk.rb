# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Migrate a VMK interface from VSS to VDS
      class Vmware_migrate_vmk < Base
        # @return [String] ESXi hostname to be managed
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String

        # @return [String] VMK interface name
        attribute :device
        validates :device, presence: true, type: String

        # @return [String] Switch VMK interface is currently on
        attribute :current_switch_name
        validates :current_switch_name, presence: true, type: String

        # @return [String] Portgroup name VMK interface is currently on
        attribute :current_portgroup_name
        validates :current_portgroup_name, presence: true, type: String

        # @return [String] Switch name to migrate VMK interface to
        attribute :migrate_switch_name
        validates :migrate_switch_name, presence: true, type: String

        # @return [String] Portgroup name to migrate VMK interface to
        attribute :migrate_portgroup_name
        validates :migrate_portgroup_name, presence: true, type: String
      end
    end
  end
end
