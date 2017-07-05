# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # create, destroy, update, start, stop, and reboot a Packet Host machine. When the machine is created it can optionally wait for it to have an IP address before returning. This module has a dependency on packet >= 1.0.
      # API is documented at U(https://www.packet.net/help/api/#page:devices,header:devices-devices-post).
      class Packet_device < Base
        # @return [Object, nil] Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).
        attribute :auth_token

        # @return [Object, nil] The number of devices to create. Count number can be included in hostname via the %d string formatter.
        attribute :count

        # @return [Object, nil] From which number to start the count.
        attribute :count_offset

        # @return [Object, nil] List of device IDs on which to operate.
        attribute :device_ids

        # @return [Object, nil] Facility slug for device creation. As of 2016, it should be one of [ewr1, sjc1, ams1, nrt1].
        attribute :facility

        # @return [Object, nil] Dict with "features" for device creation. See Packet API docs for details.
        attribute :features

        # @return [Object, nil] A hostname of a device, or a list of hostnames.,If given string or one-item list, you can use the C("%d") Python string format to expand numbers from count.,If only one hostname, it might be expanded to list if count>1.
        attribute :hostnames

        # @return [Boolean, nil] Whether to lock a created device.
        attribute :lock
        validates :lock, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] OS slug for device creation. See Packet docs or API for current list.
        attribute :operating_system

        # @return [Object, nil] Plan slug for device creation. See Packet docs or API for current list.
        attribute :plan

        # @return [Object] ID of project of the device.
        attribute :project_id
        validates :project_id, presence: true

        # @return [:present, :absent, :active, :inactive, :rebooted, nil] Desired state of the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :active, :inactive, :rebooted], :message=>"%{value} needs to be :present, :absent, :active, :inactive, :rebooted"}, allow_nil: true

        # @return [Object, nil] Userdata blob made available to the machine
        attribute :user_data

        # @return [Boolean, nil] Whether to wait for the instance to be assigned IP address before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long to wait for IP address of new devices before quitting. In seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
