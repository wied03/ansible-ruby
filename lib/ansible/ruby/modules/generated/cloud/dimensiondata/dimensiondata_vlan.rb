# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage VLANs in Cloud Control network domains.
      class Dimensiondata_vlan < Base
        # @return [String, nil] The name of the target VLAN.,Required if C(state) is C(present).
        attribute :name
        validates :name, type: String

        # @return [String, nil] A description of the VLAN.
        attribute :description
        validates :description, type: String

        # @return [String] The Id or name of the target network domain.
        attribute :network_domain
        validates :network_domain, presence: true, type: String

        # @return [String, nil] The base address for the VLAN's IPv4 network (e.g. 192.168.1.0).
        attribute :private_ipv4_base_address
        validates :private_ipv4_base_address, type: String

        # @return [Integer, nil] The size of the IPv4 address space, e.g 24.,Required, if C(private_ipv4_base_address) is specified.
        attribute :private_ipv4_prefix_size
        validates :private_ipv4_prefix_size, type: Integer

        # @return [:present, :absent, :readonly, nil] The desired state for the target VLAN.,C(readonly) ensures that the state is only ever read, not modified (the module will fail if the resource does not exist).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :readonly], :message=>"%{value} needs to be :present, :absent, :readonly"}, allow_nil: true

        # @return [String, nil] Permit expansion of the target VLAN's network if the module parameters specify a larger network than the VLAN currently posesses?,If C(False), the module will fail under these conditions.,This is intended to prevent accidental expansion of a VLAN's network (since this operation is not reversible).
        attribute :allow_expand
        validates :allow_expand, type: String
      end
    end
  end
end
