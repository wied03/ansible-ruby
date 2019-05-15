# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve the facts about one or more of the Fibre Channel Networks from OneView.
      class Oneview_fc_network_facts < Base
        # @return [String, nil] Fibre Channel Network name.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
