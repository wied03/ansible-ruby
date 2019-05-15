# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(known_hosts) module lets you add or remove a host keys from the C(known_hosts) file.
      # Starting at Ansible 2.2, multiple entries per host are allowed, but only one for each key type supported by ssh. This is useful if you're going to want to use the M(git) module over ssh, for example.
      # If you have a very large number of host keys to manage, you will find the M(template) module more useful.
      class Known_hosts < Base
        # @return [String] The host to add or remove (must match a host specified in key). It will be converted to lowercase so that ssh-keygen can find it.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The SSH public host key, as a string (required if state=present, optional when state=absent, in which case all keys for the host are removed). The key must be in the right format for ssh (see sshd(8), section "SSH_KNOWN_HOSTS FILE FORMAT").\r\nSpecifically, the key should not match the format that is found in an SSH pubkey file, but should rather have the hostname prepended to a line that includes the pubkey, the same way that it would appear in the known_hosts file. The value prepended to the line must also match the value of the name parameter.
        attribute :key
        validates :key, type: String

        # @return [String, nil] The known_hosts file to edit
        attribute :path
        validates :path, type: String

        # @return [String, nil] Hash the hostname in the known_hosts file
        attribute :hash_host
        validates :hash_host, type: String

        # @return [:present, :absent, nil] I(present) to add the host key, I(absent) to remove it.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
