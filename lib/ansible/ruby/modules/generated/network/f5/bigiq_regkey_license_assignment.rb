# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages the assignment of regkey licenses on a BIG-IQ. Assignment means that the license is assigned to a BIG-IP, or, it needs to be assigned to a BIG-IP. Additionally, this module supported revoking the assignments from BIG-IP devices.
      class Bigiq_regkey_license_assignment < Base
        # @return [String] The registration key pool to use.
        attribute :pool
        validates :pool, presence: true, type: String

        # @return [String] The registration key that you want to assign from the pool.
        attribute :key
        validates :key, presence: true, type: String

        # @return [String, nil] When C(managed) is C(no), specifies the address, or hostname, where the BIG-IQ can reach the remote device to register.,When C(managed) is C(yes), specifies the managed device, or device UUID, that you want to register.,If C(managed) is C(yes), it is very important that you do not have more than one device with the same name. BIG-IQ internally recognizes devices by their ID, and therefore, this module's cannot guarantee that the correct device will be registered. The device returned is the device that will be used.
        attribute :device
        validates :device, type: String

        # @return [Symbol, nil] Whether the specified device is a managed or un-managed device.,When C(state) is C(present), this parameter is required.
        attribute :managed
        validates :managed, type: Symbol

        # @return [Integer, nil] Specifies the port of the remote device to connect to.,If this parameter is not specified, the default of C(443) will be used.
        attribute :device_port
        validates :device_port, type: Integer

        # @return [String, nil] The username used to connect to the remote device.,This username should be one that has sufficient privileges on the remote device to do licensing. Usually this is the C(Administrator) role.,When C(managed) is C(no), this parameter is required.
        attribute :device_username
        validates :device_username, type: String

        # @return [String, nil] The password of the C(device_username).,When C(managed) is C(no), this parameter is required.
        attribute :device_password
        validates :device_password, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the device is assigned the specified license.,When C(absent), ensures the license is revokes from the remote device and freed on the BIG-IQ.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
