# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt networks.
      class Ovirt_networks_facts < Base
        # @return [String, nil] Search term which is accepted by oVirt search backend.,For example to search network starting with string vlan1 use: name=vlan1*
        attribute :pattern
        validates :pattern, type: String
      end
    end
  end
end
