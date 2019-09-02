# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS VPC Internet gateway
      class Ec2_vpc_igw < Base
        # @return [Object] The VPC ID for the VPC in which to manage the Internet Gateway.
        attribute :vpc_id
        validates :vpc_id, presence: true

        # @return [Object, nil] A dict of tags to apply to the internet gateway. Any tags currently applied to the internet gateway and not present here will be removed.
        attribute :tags

        # @return [:present, :absent, nil] Create or terminate the IGW
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
