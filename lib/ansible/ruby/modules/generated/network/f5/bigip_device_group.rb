# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Managing device groups allows you to create HA pairs and clusters of BIG-IP devices. Usage of this module should be done in conjunction with the C(bigip_configsync_actions) to sync configuration across the pair or cluster if auto-sync is disabled.
      class Bigip_device_group < Base
        # @return [String] Specifies the name of the device group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:"sync-failover", :"sync-only", nil] Specifies that the type of group.,A C(sync-failover) device group contains devices that synchronize their configuration data and fail over to one another when a device becomes unavailable.,A C(sync-only) device group has no such failover. When creating a new device group, this option will default to C(sync-only).,This setting cannot be changed once it has been set.
        attribute :type
        validates :type, inclusion: {:in=>[:"sync-failover", :"sync-only"], :message=>"%{value} needs to be :\"sync-failover\", :\"sync-only\""}, allow_nil: true

        # @return [Object, nil] Description of the device group.
        attribute :description

        # @return [Boolean, nil] Indicates whether configuration synchronization occurs manually or automatically.,When creating a new device group, this option will default to C(no).
        attribute :auto_sync
        validates :auto_sync, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] When performing an auto-sync, specifies whether the configuration will be saved or not.,When C(no), only the running configuration will be changed on the device(s) being synced to.,When creating a new device group, this option will default to C(no).
        attribute :save_on_auto_sync

        # @return [Object, nil] Specifies whether the system synchronizes the entire configuration during synchronization operations.,When C(no), the system performs incremental synchronization operations, based on the cache size specified in C(max_incremental_sync_size).,Incremental configuration synchronization is a mechanism for synchronizing a device-group's configuration among its members, without requiring a full configuration load for each configuration change.,In order for this to work, all devices in the device-group must initially agree on the configuration. Typically this requires at least one full configuration load to each device.,When creating a new device group, this option will default to C(no).
        attribute :full_sync

        # @return [Object, nil] Specifies the size of the changes cache for incremental sync.,For example, using the default, if you make more than 1024 KB worth of incremental changes, the system performs a full synchronization operation.,Using incremental synchronization operations can reduce the per-device sync/load time for configuration changes.,This setting is relevant only when C(full_sync) is C(no).
        attribute :max_incremental_sync_size

        # @return [:present, :absent, nil] When C(state) is C(present), ensures the device group exists.,When C(state) is C(absent), ensures that the device group is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Indicates whether failover occurs over the network or is hard-wired.,This parameter is only valid for C(type)'s that are C(sync-failover).
        attribute :network_failover
      end
    end
  end
end
