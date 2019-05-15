# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS VPC Egress Only Internet gateway
      class Ec2_vpc_egress_igw < Base
        # @return [Object] The VPC ID for the VPC that this Egress Only Internet Gateway should be attached.
        attribute :vpc_id
        validates :vpc_id, presence: true

        # @return [:present, :absent, nil] Create or delete the EIGW
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
