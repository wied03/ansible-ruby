# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use this module to manage order of boot devices
      class Ipmi_boot < Base
        # @return [String] Hostname or ip address of the BMC.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Remote RMCP port.
        attribute :port
        validates :port, type: Integer

        # @return [String] Username to use to connect to the BMC.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Password to connect to the BMC.
        attribute :password
        validates :password, presence: true, type: String

        # @return [:"network -- Request network boot", :"floppy -- Boot from floppy", :"hd -- Boot from hard drive", :"safe -- Boot from hard drive, requesting 'safe mode'", :"optical -- boot from CD/DVD/BD drive", :"setup -- Boot into setup utility", :"default -- remove any IPMI directed boot device request"] Set boot device to use on next reboot
        attribute :bootdev
        validates :bootdev, presence: true, expression_inclusion: {:in=>[:"network -- Request network boot", :"floppy -- Boot from floppy", :"hd -- Boot from hard drive", :"safe -- Boot from hard drive, requesting 'safe mode'", :"optical -- boot from CD/DVD/BD drive", :"setup -- Boot into setup utility", :"default -- remove any IPMI directed boot device request"], :message=>"%{value} needs to be :\"network -- Request network boot\", :\"floppy -- Boot from floppy\", :\"hd -- Boot from hard drive\", :\"safe -- Boot from hard drive, requesting 'safe mode'\", :\"optical -- boot from CD/DVD/BD drive\", :\"setup -- Boot into setup utility\", :\"default -- remove any IPMI directed boot device request\""}

        # @return [:"present -- Request system turn on", :"absent -- Request system turn on", nil] Whether to ensure that boot devices is desired.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:"present -- Request system turn on", :"absent -- Request system turn on"], :message=>"%{value} needs to be :\"present -- Request system turn on\", :\"absent -- Request system turn on\""}, allow_nil: true

        # @return [:yes, :no, nil] If set, ask that system firmware uses this device beyond next boot. Be aware many systems do not honor this.
        attribute :persistent
        validates :persistent, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set, request UEFI boot explicitly. Strictly speaking, the spec suggests that if not set, the system should BIOS boot and offers no "don't care" option. In practice, this flag not being set does not preclude UEFI boot on any system I've encountered.
        attribute :uefiboot
        validates :uefiboot, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
