# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_vpc_subnet < Base
        # @return [Object] The availability zone for the subnet. Only required when state=present.
        attribute :az

        # @return [String] The CIDR block for the subnet. E.g. 10.0.0.0/16. Only required when state=present.
        attribute :cidr
        validates :cidr, type: String

        # @return [Object] A dict of tags to apply to the subnet. Any tags currently applied to the subnet and not present here will be removed.
        attribute :tags

        # @return [:present, :absent, nil] Create or remove the subnet
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] VPC ID of the VPC in which to create the subnet.
        attribute :vpc_id
        validates :vpc_id, type: String
      end
    end
  end
end
