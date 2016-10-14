# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about EC2 Elastic Load Balancers in AWS
      class Ec2_elb_facts < Base
        # @return [Array<String>, String, nil] List of ELB names to gather facts about. Pass this option to gather facts about a set of ELBs, otherwise, all ELBs are returned.
        attribute :names
        validates :names, type: TypeGeneric.new(String)
      end
    end
  end
end
