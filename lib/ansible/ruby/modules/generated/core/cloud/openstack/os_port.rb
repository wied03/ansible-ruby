# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_port < Base
        # @return [String] Network ID or name this port belongs to.
        attribute :network
        validates :network, presence: true, type: String

        # @return [String] Name that has to be given to the port.
        attribute :name
        validates :name, type: String

        # @return [String] Desired IP and/or subnet for this port.  Subnet is referenced by subnet_id and IP is referenced by ip_address.
        attribute :fixed_ips
        validates :fixed_ips, type: String

        # @return [String] Sets admin state.
        attribute :admin_state_up
        validates :admin_state_up, type: String

        # @return [String] MAC address of this port.
        attribute :mac_address
        validates :mac_address, type: String

        # @return [String] Security group(s) ID(s) or name(s) associated with the port (comma separated string or YAML list)
        attribute :security_groups
        validates :security_groups, type: String

        # @return [TrueClass] Do not associate a security group with this port.
        attribute :no_security_groups
        validates :no_security_groups, type: TrueClass

        # @return [String] Allowed address pairs list.  Allowed address pairs are supported with dictionary structure. e.g.  allowed_address_pairs: - ip_address: 10.1.0.12 mac_address: ab:cd:ef:12:34:56 - ip_address: ...
        attribute :allowed_address_pairs
        validates :allowed_address_pairs, type: String

        # @return [String] Extra dhcp options to be assigned to this port.  Extra options are supported with dictionary structure. e.g.  extra_dhcp_opts: - opt_name: opt name1 opt_value: value1 - opt_name: ...
        attribute :extra_dhcp_opts
        validates :extra_dhcp_opts, type: String

        # @return [String] The ID of the entity that uses this port.
        attribute :device_owner
        validates :device_owner, type: String

        # @return [String] Device ID of device using this port.
        attribute :device_id
        validates :device_id, type: String

        # @return [String] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
