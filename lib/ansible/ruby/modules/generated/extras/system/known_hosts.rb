# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(known_hosts) module lets you add or remove a host from the C(known_hosts) file. This is useful if you're going to want to use the M(git) module over ssh, for example. If you have a very large number of host keys to manage, you will find the M(template) module more useful.
      class Known_hosts < Base
        # @return [String] The host to add or remove (must match a host specified in key)
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The SSH public host key, as a string (required if state=present, optional when state=absent, in which case all keys for the host are removed)
        attribute :key
        validates :key, type: String

        # @return [String, nil] The known_hosts file to edit
        attribute :path
        validates :path, type: String

        # @return [:present, :absent, nil] I(present) to add the host, I(absent) to remove it.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
