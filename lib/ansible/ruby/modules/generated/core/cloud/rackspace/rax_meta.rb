# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_meta < Base
        # @return [Object, nil] Server IP address to modify metadata for, will match any IP assigned to the server
        attribute :address

        # @return [Object, nil] Server ID to modify metadata for
        attribute :id

        # @return [String, nil] Server name to modify metadata for
        attribute :name
        validates :name, type: String

        # @return [Object, nil] A hash of metadata to associate with the instance
        attribute :meta
      end
    end
  end
end
