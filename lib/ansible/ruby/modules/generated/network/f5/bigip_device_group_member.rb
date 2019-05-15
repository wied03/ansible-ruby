# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages members in a device group. Members in a device group can only be added or removed, never updated. This is because the members are identified by unique name values and changing that name would invalidate the uniqueness.
      class Bigip_device_group_member < Base
        # @return [String] Specifies the name of the device that you want to add to the device group. Often this will be the hostname of the device. This member must be trusted by the device already. Trusting can be done with the C(bigip_device_trust) module and the C(peer_hostname) option to that module.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The device group that you want to add the member to.
        attribute :device_group
        validates :device_group, presence: true, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the device group member exists.,When C(absent), ensures the device group member is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
