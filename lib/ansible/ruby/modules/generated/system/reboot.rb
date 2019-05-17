# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Reboot a machine, wait for it to go down, come back up, and respond to commands.
      class Reboot < Base
        # @return [Integer, nil] Seconds for shutdown to wait before requesting reboot.,On Linux, macOS, and OpenBSD this is converted to minutes and rounded down. If less than 60, it will be set to 0.,On Solaris and FreeBSD this will be seconds.
        attribute :pre_reboot_delay
        validates :pre_reboot_delay, type: Integer

        # @return [Integer, nil] Seconds to wait after the reboot was successful and the connection was re-established.,This is useful if you want wait for something to settle despite your connection already working.
        attribute :post_reboot_delay
        validates :post_reboot_delay, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for machine to reboot and respond to a test command.,This timeout is evaluated separately for both network connection and test command success so the maximum execution time for the module is twice this amount.
        attribute :reboot_timeout
        validates :reboot_timeout, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for a successful connection to the managed hosts before trying again.,If unspecified, the default setting for the underlying connection plugin is used.
        attribute :connect_timeout
        validates :connect_timeout, type: Integer

        # @return [String, nil] Command to run on the rebooted host and expect success from to determine the machine is ready for further tasks.
        attribute :test_command
        validates :test_command, type: String

        # @return [String, nil] Message to display to users before reboot.
        attribute :msg
        validates :msg, type: String
      end
    end
  end
end
