# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage VLANs on a BIG-IP system
      class Bigip_vlan < Base
        # @return [Object, nil] The description to give to the VLAN.
        attribute :description

        # @return [Array<Float>, Float, nil] Specifies a list of tagged interfaces and trunks that you want to configure for the VLAN. Use tagged interfaces or trunks when you want to assign a single interface or trunk to multiple VLANs.
        attribute :tagged_interfaces
        validates :tagged_interfaces, type: TypeGeneric.new(Float)

        # @return [Object, nil] Specifies a list of untagged interfaces and trunks that you want to configure for the VLAN.
        attribute :untagged_interfaces

        # @return [String] The VLAN to manage. If the special VLAN C(ALL) is specified with the C(state) value of C(absent) then all VLANs will be removed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] The state of the VLAN on the system. When C(present), guarantees that the VLAN exists with the provided attributes. When C(absent), removes the VLAN from the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Tag number for the VLAN. The tag number can be any integer between 1 and 4094. The system automatically assigns a tag number if you do not specify a value.
        attribute :tag
        validates :tag, type: String
      end
    end
  end
end
