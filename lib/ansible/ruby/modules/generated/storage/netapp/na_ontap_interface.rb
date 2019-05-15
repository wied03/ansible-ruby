# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creating / deleting and modifying the LIF.
      class Na_ontap_interface < Base
        # @return [:present, :absent, nil] Whether the specified interface should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Specifies the logical interface (LIF) name.
        attribute :interface_name
        validates :interface_name, presence: true, type: String

        # @return [String, nil] Specifies the LIF's home node.,Required when C(state=present).
        attribute :home_node
        validates :home_node, type: String

        # @return [String, nil] Specifies the LIF's home port.,Required when C(state=present)
        attribute :home_port
        validates :home_port, type: String

        # @return [String, nil] Specifies the role of the LIF.,Required when C(state=present).
        attribute :role
        validates :role, type: String

        # @return [String, nil] Specifies the LIF's IP address.,Required when C(state=present)
        attribute :address
        validates :address, type: String

        # @return [String, nil] Specifies the LIF's netmask.,Required when C(state=present).
        attribute :netmask
        validates :netmask, type: String

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [String, nil] Specifies the firewall policy for the LIF.
        attribute :firewall_policy
        validates :firewall_policy, type: String

        # @return [String, nil] Specifies the failover policy for the LIF.
        attribute :failover_policy
        validates :failover_policy, type: String

        # @return [:up, :down, nil] Specifies the administrative status of the LIF.
        attribute :admin_status
        validates :admin_status, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [Boolean, nil] If true, data LIF will revert to its home node under certain circumstances such as startup, and load balancing migration capability is disabled automatically
        attribute :is_auto_revert
        validates :is_auto_revert, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specifies the list of data protocols configured on the LIF. By default, the values in this element are nfs, cifs and fcache. Other supported protocols are iscsi and fcp. A LIF can be configured to not support any data protocols by specifying 'none'. Protocol values of none, iscsi or fcp can't be combined with any other data protocol(s).
        attribute :protocols
        validates :protocols, type: String
      end
    end
  end
end
