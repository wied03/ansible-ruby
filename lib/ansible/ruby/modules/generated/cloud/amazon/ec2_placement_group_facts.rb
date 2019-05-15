# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # List details of EC2 Placement Group(s).
      class Ec2_placement_group_facts < Base
        # @return [Object, nil] A list of names to filter on. If a listed group does not exist, there will be no corresponding entry in the result; no error will be raised.
        attribute :names
      end
    end
  end
end
