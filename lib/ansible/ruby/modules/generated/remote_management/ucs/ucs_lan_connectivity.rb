# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures LAN Connectivity Policies on Cisco UCS Manager.
      # Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).
      class Ucs_lan_connectivity < Base
        # @return [:present, :absent, nil] If C(present), will verify LAN Connectivity Policies are present and will create if needed.,If C(absent), will verify LAN Connectivity Policies are absent and will delete if needed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the LAN Connectivity Policy.,This name can be between 1 and 16 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after the policy is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A description of the LAN Connectivity Policy.,Cisco recommends including information about where and when to use the policy.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :description

        # @return [Array<Hash>, Hash, nil] List of vNICs used by the LAN Connectivity Policy.,vNICs used by the LAN Connectivity Policy must be created from a vNIC template.,Each list element has the following suboptions:,= name,  The name of the vNIC (required).,= vnic_template,  The name of the vNIC template (required).,- adapter_policy,  The name of the Ethernet adapter policy.,  A user defined policy can be used, or one of the system defined policies.,- order,  String specifying the vNIC assignment order (e.g., '1', '2').,  [Default: unspecified]
        attribute :vnic_list
        validates :vnic_list, type: TypeGeneric.new(Hash)

        # @return [String, nil] Org dn (distinguished name)
        attribute :org_dn
        validates :org_dn, type: String
      end
    end
  end
end
