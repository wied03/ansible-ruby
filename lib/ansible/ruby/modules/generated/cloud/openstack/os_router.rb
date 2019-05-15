# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Delete routers from OpenStack. Although Neutron allows routers to share the same name, this module enforces name uniqueness to be more user friendly.
      class Os_router < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name to be give to the router
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Desired admin state of the created or existing router.
        attribute :admin_state_up
        validates :admin_state_up, type: String

        # @return [Object, nil] Enable Source NAT (SNAT) attribute.
        attribute :enable_snat

        # @return [String, nil] Unique name or ID of the external gateway network.,required I(interfaces) or I(enable_snat) are provided.
        attribute :network
        validates :network, type: String

        # @return [String, nil] Unique name or ID of the project.
        attribute :project
        validates :project, type: String

        # @return [Array<Hash>, Hash, nil] The IP address parameters for the external gateway network. Each is a dictionary with the subnet name or ID (subnet) and the IP address to assign on the subnet (ip). If no IP is specified, one is automatically assigned from that subnet.
        attribute :external_fixed_ips
        validates :external_fixed_ips, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] List of subnets to attach to the router internal interface. Default gateway associated with the subnet will be automatically attached with the router's internal interface. In order to provide an ip address different from the default gateway,parameters are passed as dictionary with keys as network name or ID(net), subnet name or ID (subnet) and the IP of port (portip) from the network. User defined portip is often required when a multiple router need to be connected to a single subnet for which the default gateway has been already used.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String, Hash)

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
