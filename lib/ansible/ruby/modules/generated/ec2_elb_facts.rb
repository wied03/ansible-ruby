# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_elb_facts < Base
        # @return [Array] List of ELB names to gather facts about. Pass this option to gather facts about a set of ELBs, otherwise, all ELBs are returned.
        attribute :names
        validates :names, type: Array
      end
    end
  end
end
