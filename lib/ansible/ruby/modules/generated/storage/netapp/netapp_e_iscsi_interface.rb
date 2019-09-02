# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure settings of an E-Series iSCSI interface
      class Netapp_e_iscsi_interface < Base
        # @return [:A, :B] The controller that owns the port you want to configure.,Controller names are presented alphabetically, with the first controller as A, the second as B, and so on.,Current hardware models have either 1 or 2 available controllers, but that is not a guaranteed hard limitation and could change in the future.
        attribute :controller
        validates :controller, presence: true, expression_inclusion: {:in=>[:A, :B], :message=>"%{value} needs to be :A, :B"}

        # @return [String] The channel of the port to modify the configuration of.,The list of choices is not necessarily comprehensive. It depends on the number of ports that are available in the system.,The numerical value represents the number of the channel (typically from left to right on the HIC), beginning with a value of 1.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:enabled, :disabled, nil] When enabled, the provided configuration will be utilized.,When disabled, the IPv4 configuration will be cleared and IPv4 connectivity disabled.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] The IPv4 address to assign to the interface.,Should be specified in xx.xx.xx.xx form.,Mutually exclusive with I(config_method=dhcp)
        attribute :address
        validates :address, type: String

        # @return [String, nil] The subnet mask to utilize for the interface.,Should be specified in xx.xx.xx.xx form.,Mutually exclusive with I(config_method=dhcp)
        attribute :subnet_mask
        validates :subnet_mask, type: String

        # @return [String, nil] The IPv4 gateway address to utilize for the interface.,Should be specified in xx.xx.xx.xx form.,Mutually exclusive with I(config_method=dhcp)
        attribute :gateway
        validates :gateway, type: String

        # @return [:dhcp, :static, nil] The configuration method type to use for this interface.,dhcp is mutually exclusive with I(address), I(subnet_mask), and I(gateway).
        attribute :config_method
        validates :config_method, expression_inclusion: {:in=>[:dhcp, :static], :message=>"%{value} needs to be :dhcp, :static"}, allow_nil: true

        # @return [Integer, nil] The maximum transmission units (MTU), in bytes.,This allows you to configure a larger value for the MTU, in order to enable jumbo frames (any value > 1500).,Generally, it is necessary to have your host, switches, and other components not only support jumbo frames, but also have it configured properly. Therefore, unless you know what you're doing, it's best to leave this at the default.
        attribute :mtu
        validates :mtu, type: Integer

        # @return [Object, nil] A local path to a file to be used for debug logging
        attribute :log_path
      end
    end
  end
end
