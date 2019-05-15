# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more of the Enclosures from OneView.
      class Oneview_enclosure_facts < Base
        # @return [String, nil] Enclosure name.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] List with options to gather additional facts about an Enclosure and related resources. Options allowed: C(script), C(environmentalConfiguration), and C(utilization). For the option C(utilization), you can provide specific parameters.
        attribute :options
        validates :options, type: TypeGeneric.new(String, Hash)
      end
    end
  end
end
