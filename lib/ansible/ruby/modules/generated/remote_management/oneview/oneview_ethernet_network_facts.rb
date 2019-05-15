# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve the facts about one or more of the Ethernet Networks from OneView.
      class Oneview_ethernet_network_facts < Base
        # @return [String, nil] Ethernet Network name.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] List with options to gather additional facts about an Ethernet Network and related resources. Options allowed: C(associatedProfiles) and C(associatedUplinkGroups).
        attribute :options
        validates :options, type: TypeGeneric.new(String)
      end
    end
  end
end
