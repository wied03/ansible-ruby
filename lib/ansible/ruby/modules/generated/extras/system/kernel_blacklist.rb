# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Kernel_blacklist < Base
        # @return [String] Name of kernel module to black- or whitelist.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the module should be present in the blacklist or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] If specified, use this blacklist file instead of C(/etc/modprobe.d/blacklist-ansible.conf).
        attribute :blacklist_file
      end
    end
  end
end
