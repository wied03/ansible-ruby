# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will search through every target group in a region to find which ones have registered a given instance ID or IP.
      class Elb_target_facts < Base
        # @return [String] What instance ID to get facts for.
        attribute :instance_id
        validates :instance_id, presence: true, type: String

        # @return [Boolean, nil] Whether or not to get target groups not used by any load balancers.
        attribute :get_unused_target_groups
        validates :get_unused_target_groups, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
