# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure the E-Series management interfaces
      class Netapp_e_mgmt_interface < Base
        # @return [:enable, :disable, nil] Enable or disable IPv4 network interface configuration.,Either IPv4 or IPv6 must be enabled otherwise error will occur.,Only required when enabling or disabling IPv4 network interface
        attribute :state
        validates :state, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:A, :B] The controller that owns the port you want to configure.,Controller names are represented alphabetically, with the first controller as A, the second as B, and so on.,Current hardware models have either 1 or 2 available controllers, but that is not a guaranteed hard limitation and could change in the future.
        attribute :controller
        validates :controller, presence: true, inclusion: {:in=>[:A, :B], :message=>"%{value} needs to be :A, :B"}

        # @return [String, nil] The port to modify the configuration for.,The list of choices is not necessarily comprehensive. It depends on the number of ports that are present in the system.,The name represents the port number (typically from left to right on the controller), beginning with a value of 1.,Mutually exclusive with I(channel).
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The port to modify the configuration for.,The channel represents the port number (typically from left to right on the controller), beginning with a value of 1.,Mutually exclusive with I(name).
        attribute :channel

        # @return [String, nil] The IPv4 address to assign to the interface.,Should be specified in xx.xx.xx.xx form.,Mutually exclusive with I(config_method=dhcp)
        attribute :address
        validates :address, type: String

        # @return [String, nil] The subnet mask to utilize for the interface.,Should be specified in xx.xx.xx.xx form.,Mutually exclusive with I(config_method=dhcp)
        attribute :subnet_mask
        validates :subnet_mask, type: String

        # @return [String, nil] The IPv4 gateway address to utilize for the interface.,Should be specified in xx.xx.xx.xx form.,Mutually exclusive with I(config_method=dhcp)
        attribute :gateway
        validates :gateway, type: String

        # @return [:dhcp, :static, nil] The configuration method type to use for network interface ports.,dhcp is mutually exclusive with I(address), I(subnet_mask), and I(gateway).
        attribute :config_method
        validates :config_method, inclusion: {:in=>[:dhcp, :static], :message=>"%{value} needs to be :dhcp, :static"}, allow_nil: true

        # @return [:dhcp, :static, nil] The configuration method type to use for DNS services.,dhcp is mutually exclusive with I(dns_address), and I(dns_address_backup).
        attribute :dns_config_method
        validates :dns_config_method, inclusion: {:in=>[:dhcp, :static], :message=>"%{value} needs to be :dhcp, :static"}, allow_nil: true

        # @return [String, nil] Primary IPv4 DNS server address
        attribute :dns_address
        validates :dns_address, type: String

        # @return [String, nil] Backup IPv4 DNS server address,Queried when primary DNS server fails
        attribute :dns_address_backup
        validates :dns_address_backup, type: String

        # @return [:disable, :dhcp, :static, nil] The configuration method type to use for NTP services.,disable is mutually exclusive with I(ntp_address) and I(ntp_address_backup).,dhcp is mutually exclusive with I(ntp_address) and I(ntp_address_backup).
        attribute :ntp_config_method
        validates :ntp_config_method, inclusion: {:in=>[:disable, :dhcp, :static], :message=>"%{value} needs to be :disable, :dhcp, :static"}, allow_nil: true

        # @return [String, nil] Primary IPv4 NTP server address
        attribute :ntp_address
        validates :ntp_address, type: String

        # @return [String, nil] Backup IPv4 NTP server address,Queried when primary NTP server fails
        attribute :ntp_address_backup
        validates :ntp_address_backup, type: String

        # @return [Boolean, nil] Enable ssh access to the controller for debug purposes.,This is a controller-level setting.,rlogin/telnet will be enabled for ancient equipment where ssh is not available.
        attribute :ssh
        validates :ssh, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] A local path to a file to be used for debug logging
        attribute :log_path
      end
    end
  end
end
