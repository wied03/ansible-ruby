# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about the Network Sets from OneView.
      class Oneview_network_set_facts < Base
        # @return [String, nil] Network Set name.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] List with options to gather facts about Network Set. Option allowed: C(withoutEthernet). The option C(withoutEthernet) retrieves the list of network_sets excluding Ethernet networks.
        attribute :options
        validates :options, type: TypeGeneric.new(String)
      end
    end
  end
end
