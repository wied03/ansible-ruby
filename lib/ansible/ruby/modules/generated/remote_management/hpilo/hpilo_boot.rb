# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module boots a system through its HP iLO interface. The boot media can be one of: cdrom, floppy, hdd, network or usb.
      # This module requires the hpilo python module.
      class Hpilo_boot < Base
        # @return [String] The HP iLO hostname/address that is linked to the physical system.
        attribute :host
        validates :host, presence: true, type: String

        # @return [String, nil] The login name to authenticate to the HP iLO interface.
        attribute :login
        validates :login, type: String

        # @return [String, nil] The password to authenticate to the HP iLO interface.
        attribute :password
        validates :password, type: String

        # @return [:cdrom, :floppy, :hdd, :network, :normal, :usb, nil] The boot media to boot the system from
        attribute :media
        validates :media, inclusion: {:in=>[:cdrom, :floppy, :hdd, :network, :normal, :usb], :message=>"%{value} needs to be :cdrom, :floppy, :hdd, :network, :normal, :usb"}, allow_nil: true

        # @return [String, nil] The URL of a cdrom, floppy or usb boot media image. protocol://username:password@hostname:port/filename,protocol is either 'http' or 'https',username:password is optional,port is optional
        attribute :image
        validates :image, type: String

        # @return [:boot_always, :boot_once, :connect, :disconnect, :no_boot, :poweroff, nil] The state of the boot media.,no_boot: Do not boot from the device,boot_once: Boot from the device once and then notthereafter,boot_always: Boot from the device each time the serveris rebooted,connect: Connect the virtual media device and set to boot_always,disconnect: Disconnects the virtual media device and set to no_boot,poweroff: Power off the server
        attribute :state
        validates :state, inclusion: {:in=>[:boot_always, :boot_once, :connect, :disconnect, :no_boot, :poweroff], :message=>"%{value} needs to be :boot_always, :boot_once, :connect, :disconnect, :no_boot, :poweroff"}, allow_nil: true

        # @return [Boolean, nil] Whether to force a reboot (even when the system is already booted).,As a safeguard, without force, hpilo_boot will refuse to reboot a server that is already running.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:SSLv3, :SSLv23, :TLSv1, :TLSv1_1, :TLSv1_2, nil] Change the ssl_version used.
        attribute :ssl_version
        validates :ssl_version, inclusion: {:in=>[:SSLv3, :SSLv23, :TLSv1, :TLSv1_1, :TLSv1_2], :message=>"%{value} needs to be :SSLv3, :SSLv23, :TLSv1, :TLSv1_1, :TLSv1_2"}, allow_nil: true
      end
    end
  end
end
