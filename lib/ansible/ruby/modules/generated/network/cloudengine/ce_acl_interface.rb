# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages applying ACLs to interfaces on HUAWEI CloudEngine switches.
      class Ce_acl_interface < Base
        # @return [Object] ACL number or name. For a numbered rule group, the value ranging from 2000 to 4999. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.
        attribute :acl_name
        validates :acl_name, presence: true

        # @return [Object] Interface name. Only support interface full name, such as "40GE2/0/1".
        attribute :interface
        validates :interface, presence: true

        # @return [:inbound, :outbound] Direction ACL to be applied in on the interface.
        attribute :direction
        validates :direction, presence: true, inclusion: {:in=>[:inbound, :outbound], :message=>"%{value} needs to be :inbound, :outbound"}

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
