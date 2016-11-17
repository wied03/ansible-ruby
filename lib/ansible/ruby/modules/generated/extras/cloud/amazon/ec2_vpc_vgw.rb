# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates AWS VPN Virtual Gateways
      # Deletes AWS VPN Virtual Gateways
      # Attaches Virtual Gateways to VPCs
      # Detaches Virtual Gateways from VPCs
      class Ec2_vpc_vgw < Base
        # @return [:present, :absent, nil] present to ensure resource is created.,absent to remove resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] name of the vgw to be created or deleted
        attribute :name
        validates :name, type: String

        # @return [:"ipsec.1", nil] type of the virtual gateway to be created
        attribute :type
        validates :type, inclusion: {:in=>[:"ipsec.1"], :message=>"%{value} needs to be :\"ipsec.1\""}, allow_nil: true

        # @return [String, nil] vpn gateway id of an existing virtual gateway
        attribute :vpn_gateway_id
        validates :vpn_gateway_id, type: String

        # @return [String, nil] the vpc-id of a vpc to attach or detach
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [Integer, nil] number of seconds to wait for status during vpc attach and detach
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Hash, nil] dictionary of resource tags
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end
