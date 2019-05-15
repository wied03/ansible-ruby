# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a specific availability set or all availability sets.
      class Azure_rm_availabilityset_facts < Base
        # @return [String, nil] Limit results to a specific availability set
        attribute :name
        validates :name, type: String

        # @return [String, nil] The resource group to search for the desired availability set
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Object, nil] List of tags to be matched
        attribute :tags
      end
    end
  end
end
