# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_router < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name to be give to the router
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] Desired admin state of the created or existing router.
        attribute :admin_state_up
        validates :admin_state_up, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable Source NAT (SNAT) attribute.
        attribute :enable_snat
        validates :enable_snat, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Unique name or ID of the external gateway network.,required I(interfaces) or I(enable_snat) are provided.
        attribute :network
        validates :network, type: String

        # @return [Array<Hash>, nil] The IP address parameters for the external gateway network. Each is a dictionary with the subnet name or ID (subnet) and the IP address to assign on the subnet (ip). If no IP is specified, one is automatically assigned from that subnet.
        attribute :external_fixed_ips
        validates :external_fixed_ips, type: TypeGeneric.new(Hash)

        # @return [Array<String>, nil] List of subnets to attach to the router internal interface.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)
      end
    end
  end
end
