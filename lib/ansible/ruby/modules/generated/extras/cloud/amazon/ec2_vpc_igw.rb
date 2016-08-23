# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_vpc_igw < Base
        # @return [Object] The VPC ID for the VPC in which to manage the Internet Gateway.
        attribute :vpc_id
        validates :vpc_id, presence: true

        # @return [String] Create or terminate the IGW
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
