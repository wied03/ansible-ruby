# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows one to run different config-sync actions. These actions allow you to manually sync your configuration across multiple BIG-IPs when those devices are in an HA pair.
      class Bigip_configsync_action < Base
        # @return [String] The device group that you want to perform config-sync actions on.
        attribute :device_group
        validates :device_group, presence: true, type: String

        # @return [Symbol, nil] Specifies that the system synchronizes configuration data from this device to other members of the device group. In this case, the device will do a "push" to all the other devices in the group. This option is mutually exclusive with the C(sync_group_to_device) option.
        attribute :sync_device_to_group
        validates :sync_device_to_group, type: Symbol

        # @return [Symbol, nil] Specifies that the system synchronizes configuration data from the device with the most recent configuration. In this case, the device will do a "pull" from the most recently updated device. This option is mutually exclusive with the C(sync_device_to_group) options.
        attribute :sync_most_recent_to_device
        validates :sync_most_recent_to_device, type: Symbol

        # @return [Symbol, nil] Indicates that the sync operation overwrites the configuration on the target.
        attribute :overwrite_config
        validates :overwrite_config, type: Symbol
      end
    end
  end
end
