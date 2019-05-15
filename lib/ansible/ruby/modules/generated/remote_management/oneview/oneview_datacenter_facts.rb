# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about the OneView Data Centers.
      class Oneview_datacenter_facts < Base
        # @return [String, nil] Data Center name.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] Retrieve additional facts. Options available: 'visualContent'.
        attribute :options
        validates :options, type: TypeGeneric.new(String)
      end
    end
  end
end
