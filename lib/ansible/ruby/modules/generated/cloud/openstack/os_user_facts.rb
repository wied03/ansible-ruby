# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about a one or more OpenStack users
      class Os_user_facts < Base
        # @return [String] Name or ID of the user
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name or ID of the domain containing the user if the cloud supports domains
        attribute :domain
        validates :domain, type: String

        # @return [Hash, nil] A dictionary of meta data to use for further filtering.  Elements of this dictionary may be additional dictionaries.
        attribute :filters
        validates :filters, type: Hash

        # @return [Object, nil] Ignored. Present for backwards compatability
        attribute :availability_zone
      end
    end
  end
end
