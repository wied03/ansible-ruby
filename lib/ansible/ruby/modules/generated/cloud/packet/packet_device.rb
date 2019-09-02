# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage a bare metal server in the Packet Host (a "device" in the API terms).
      # When the machine is created it can optionally wait for public IP address, or for active state.
      # This module has a dependency on packet >= 1.0.
      # API is documented at U(https://www.packet.net/developers/api/devices).
      class Packet_device < Base
        # @return [Object, nil] Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).
        attribute :auth_token

        # @return [Integer, nil] The number of devices to create. Count number can be included in hostname via the %d string formatter.
        attribute :count
        validates :count, type: Integer

        # @return [Integer, nil] From which number to start the count.
        attribute :count_offset
        validates :count_offset, type: Integer

        # @return [Object, nil] List of device IDs on which to operate.
        attribute :device_ids

        # @return [Object, nil] Facility slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/facilities/).
        attribute :facility

        # @return [Object, nil] Dict with "features" for device creation. See Packet API docs for details.
        attribute :features

        # @return [Object, nil] A hostname of a device, or a list of hostnames.,If given string or one-item list, you can use the C("%d") Python string format to expand numbers from I(count).,If only one hostname, it might be expanded to list if I(count)>1.
        attribute :hostnames

        # @return [Boolean, nil] Whether to lock a created device.
        attribute :locked
        validates :locked, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] OS slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/operatingsystems/).
        attribute :operating_system

        # @return [Object, nil] Plan slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/plans/).
        attribute :plan

        # @return [Object] ID of project of the device.
        attribute :project_id
        validates :project_id, presence: true

        # @return [:present, :absent, :active, :inactive, :rebooted, nil] Desired state of the device.,If set to C(present) (the default), the module call will return immediately after the device-creating HTTP request successfully returns.,If set to C(active), the module call will block until all the specified devices are in state active due to the Packet API, or until I(wait_timeout).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :active, :inactive, :rebooted], :message=>"%{value} needs to be :present, :absent, :active, :inactive, :rebooted"}, allow_nil: true

        # @return [Object, nil] Userdata blob made available to the machine
        attribute :user_data

        # @return [4, 6, nil] Whether to wait for the instance to be assigned a public IPv4/IPv6 address.,If set to 4, it will wait until IPv4 is assigned to the instance.,If set to 6, wait until public IPv6 is assigned to the instance.
        attribute :wait_for_public_IPv
        validates :wait_for_public_IPv, expression_inclusion: {:in=>[4, 6], :message=>"%{value} needs to be 4, 6"}, allow_nil: true

        # @return [Integer, nil] How long (seconds) to wait either for automatic IP address assignment, or for the device to reach the C(active) I(state).,If I(wait_for_public_IPv) is set and I(state) is C(active), the module will wait for both events consequently, applying the timeout twice.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Object, nil] URL of custom iPXE script for provisioning.,More about custome iPXE for Packet devices at U(https://help.packet.net/technical/infrastructure/custom-ipxe).
        attribute :ipxe_script_url

        # @return [Boolean, nil] Persist PXE as the first boot option.,Normally, the PXE process happens only on the first boot. Set this arg to have your device continuously boot to iPXE.
        attribute :always_pxe
        validates :always_pxe, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
