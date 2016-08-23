# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_networks_facts < Base
        # @return [String] Name or ID of the Network
        attribute :name
        validates :name, type: String

        # @return [Hash] A dictionary of meta data to use for further filtering.  Elements of this dictionary may be additional dictionaries.
        attribute :filters
        validates :filters, type: Hash
      end
    end
  end
end
