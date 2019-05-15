# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # List details of EC2 Elastic IP addresses.
      class Ec2_eip_facts < Base
        # @return [Object, nil] A set of filters to use. Each filter is a name:value pair. The value may be a list or a single element.
        attribute :filters
      end
    end
  end
end
