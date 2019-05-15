# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about DigitalOcean provided load balancers.
      class Digital_ocean_load_balancer_facts < Base
        # @return [String, nil] Load balancer ID that can be used to identify and reference a load_balancer.
        attribute :load_balancer_id
        validates :load_balancer_id, type: String
      end
    end
  end
end
