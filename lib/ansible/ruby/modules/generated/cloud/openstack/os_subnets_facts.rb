# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more subnets from OpenStack.
      class Os_subnets_facts < Base
        # @return [Object, nil] Name or ID of the subnet
        attribute :subnet

        # @return [Hash, nil] A dictionary of meta data to use for further filtering.  Elements of this dictionary may be additional dictionaries.
        attribute :filters
        validates :filters, type: Hash

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
