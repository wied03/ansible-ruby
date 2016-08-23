# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Known_hosts < Base
        # @return [String] The host to add or remove (must match a host specified in key)
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The SSH public host key, as a string (required if state=present, optional when state=absent, in which case all keys for the host are removed)
        attribute :key
        validates :key, type: String

        # @return [String] The known_hosts file to edit
        attribute :path
        validates :path, type: String

        # @return [String] I(present) to add the host, I(absent) to remove it.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
