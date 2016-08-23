# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Add_host < Base
        # @return [String] The hostname/ip of the host to add to the inventory, can include a colon and a port number.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The groups to add the hostname to, comma separated.
        attribute :groups
        validates :groups, type: String
      end
    end
  end
end
