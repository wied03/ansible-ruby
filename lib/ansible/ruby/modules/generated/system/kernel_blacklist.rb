# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove kernel modules from blacklist.
      class Kernel_blacklist < Base
        # @return [String] Name of kernel module to black- or whitelist.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Whether the module should be present in the blacklist or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] If specified, use this blacklist file instead of C(/etc/modprobe.d/blacklist-ansible.conf).
        attribute :blacklist_file
      end
    end
  end
end
