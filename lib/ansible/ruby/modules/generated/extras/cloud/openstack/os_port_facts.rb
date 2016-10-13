# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about ports from OpenStack.
      class Os_port_facts < Base
        # @return [String, nil] Unique name or ID of a port.
        attribute :port
        validates :port, type: String

        # @return [Hash, nil] A dictionary of meta data to use for further filtering. Elements of this dictionary will be matched against the returned port dictionaries. Matching is currently limited to strings within the port dictionary, or strings within nested dictionaries.
        attribute :filters
        validates :filters, type: Hash
      end
    end
  end
end
