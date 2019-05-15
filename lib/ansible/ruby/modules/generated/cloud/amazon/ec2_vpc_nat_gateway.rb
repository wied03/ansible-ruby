# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Ensure the state of AWS VPC NAT Gateways based on their id, allocation and subnet ids.
      class Ec2_vpc_nat_gateway < Base
        # @return [:present, :absent, nil] Ensure NAT Gateway is present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The id AWS dynamically allocates to the NAT Gateway on creation. This is required when the absent option is present.
        attribute :nat_gateway_id
        validates :nat_gateway_id, type: String

        # @return [String, nil] The id of the subnet to create the NAT Gateway in. This is required with the present option.
        attribute :subnet_id
        validates :subnet_id, type: String

        # @return [String, nil] The id of the elastic IP allocation. If this is not passed and the eip_address is not passed. An EIP is generated for this NAT Gateway.
        attribute :allocation_id
        validates :allocation_id, type: String

        # @return [String, nil] The elastic IP address of the EIP you want attached to this NAT Gateway. If this is not passed and the allocation_id is not passed, an EIP is generated for this NAT Gateway.
        attribute :eip_address
        validates :eip_address, type: String

        # @return [Boolean, nil] if a NAT Gateway exists already in the subnet_id, then do not create a new one.
        attribute :if_exist_do_not_create
        validates :if_exist_do_not_create, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Deallocate the EIP from the VPC.,Option is only valid with the absent state.,You should use this with the wait option. Since you can not release an address while a delete operation is happening.
        attribute :release_eip
        validates :release_eip, type: String

        # @return [String, nil] Wait for operation to complete before returning.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] How many seconds to wait for an operation to complete before timing out.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [String, nil] Optional unique token to be used during create to ensure idempotency. When specifying this option, ensure you specify the eip_address parameter as well otherwise any subsequent runs will fail.
        attribute :client_token
        validates :client_token, type: String
      end
    end
  end
end
