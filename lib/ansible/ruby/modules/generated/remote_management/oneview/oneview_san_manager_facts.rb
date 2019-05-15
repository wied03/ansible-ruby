# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more of the SAN Managers from OneView
      class Oneview_san_manager_facts < Base
        # @return [String, nil] Provider Display Name.
        attribute :provider_display_name
        validates :provider_display_name, type: String

        # @return [Hash, nil] List of params to delimit, filter and sort the list of resources.,params allowed: - C(start): The first item to return, using 0-based indexing. - C(count): The number of resources to return. - C(query): A general query string to narrow the list of resources returned. - C(sort): The sort order of the returned data set.
        attribute :params
        validates :params, type: Hash
      end
    end
  end
end
