# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about application ELBs in AWS
      class Elb_application_lb_facts < Base
        # @return [Array<String>, String, nil] The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.
        attribute :load_balancer_arns
        validates :load_balancer_arns, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] The names of the load balancers.
        attribute :names
        validates :names, type: TypeGeneric.new(String)
      end
    end
  end
end
