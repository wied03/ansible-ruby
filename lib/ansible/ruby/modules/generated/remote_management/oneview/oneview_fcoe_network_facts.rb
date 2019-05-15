# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve the facts about one or more of the FCoE Networks from OneView.
      class Oneview_fcoe_network_facts < Base
        # @return [String, nil] FCoE Network name.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
