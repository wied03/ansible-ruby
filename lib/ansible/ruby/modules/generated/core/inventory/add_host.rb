# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use variables to create new hosts and groups in inventory for use in later plays of the same playbook. Takes variables so you can define the new hosts more fully.
      class Add_host < Base
        # @return [String] The hostname/ip of the host to add to the inventory, can include a colon and a port number.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The groups to add the hostname to, comma separated.
        attribute :groups
        validates :groups, type: String
      end
    end
  end
end
