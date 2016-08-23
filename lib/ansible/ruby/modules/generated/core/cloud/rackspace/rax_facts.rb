# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_facts < Base
        # @return [Object] Server IP address to retrieve facts for, will match any IP assigned to the server
        attribute :address

        # @return [Object] Server ID to retrieve facts for
        attribute :id

        # @return [String] Server name to retrieve facts for
        attribute :name
        validates :name, type: String
      end
    end
  end
end
