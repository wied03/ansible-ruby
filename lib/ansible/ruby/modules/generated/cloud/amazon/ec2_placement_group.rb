# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create an EC2 Placement Group; if the placement group already exists, nothing is done. Or, delete an existing placement group. If the placement group is absent, do nothing. See also http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
      class Ec2_placement_group < Base
        # @return [String] The name for the placement group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Create or delete placement group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:cluster, :spread, nil] Placement group strategy. Cluster will cluster instances into a low-latency group in a single Availability Zone, while Spread spreads instances across underlying hardware.
        attribute :strategy
        validates :strategy, inclusion: {:in=>[:cluster, :spread], :message=>"%{value} needs to be :cluster, :spread"}, allow_nil: true
      end
    end
  end
end
