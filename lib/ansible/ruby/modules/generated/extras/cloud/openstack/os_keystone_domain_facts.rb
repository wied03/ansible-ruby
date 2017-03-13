# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about a one or more OpenStack domains
      class Os_keystone_domain_facts < Base
        # @return [String] Name or ID of the domain
        attribute :name
        validates :name, presence: true, type: String

        # @return [Hash, nil] A dictionary of meta data to use for further filtering.  Elements of this dictionary may be additional dictionaries.
        attribute :filters
        validates :filters, type: Hash
      end
    end
  end
end
