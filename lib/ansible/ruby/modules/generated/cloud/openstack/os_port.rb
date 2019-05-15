# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, Update or Remove ports from an OpenStack cloud. A I(state) of 'present' will ensure the port is created or updated if required.
      class Os_port < Base
        # @return [String] Network ID or name this port belongs to.
        attribute :network
        validates :network, presence: true, type: String

        # @return [String, nil] Name that has to be given to the port.
        attribute :name
        validates :name, type: String

        # @return [Array<Hash>, Hash, nil] Desired IP and/or subnet for this port.  Subnet is referenced by subnet_id and IP is referenced by ip_address.
        attribute :fixed_ips
        validates :fixed_ips, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Sets admin state.
        attribute :admin_state_up

        # @return [Object, nil] MAC address of this port.
        attribute :mac_address

        # @return [Array<String>, String, nil] Security group(s) ID(s) or name(s) associated with the port (comma separated string or YAML list)
        attribute :security_groups
        validates :security_groups, type: TypeGeneric.new(String)

        # @return [String, nil] Do not associate a security group with this port.
        attribute :no_security_groups
        validates :no_security_groups, type: String

        # @return [Object, nil] Allowed address pairs list.  Allowed address pairs are supported with dictionary structure. e.g.  allowed_address_pairs: - ip_address: 10.1.0.12 mac_address: ab:cd:ef:12:34:56 - ip_address: ...
        attribute :allowed_address_pairs

        # @return [Object, nil] Extra dhcp options to be assigned to this port.  Extra options are supported with dictionary structure. e.g.  extra_dhcp_opts: - opt_name: opt name1 opt_value: value1 - opt_name: ...
        attribute :extra_dhcp_opts

        # @return [Object, nil] The ID of the entity that uses this port.
        attribute :device_owner

        # @return [Object, nil] Device ID of device using this port.
        attribute :device_id

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
