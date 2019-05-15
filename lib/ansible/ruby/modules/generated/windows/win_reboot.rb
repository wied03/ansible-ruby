# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Reboot a Windows machine, wait for it to go down, come back up, and respond to commands.
      class Win_reboot < Base
        # @return [Integer, nil] Seconds for shutdown to wait before requesting reboot
        attribute :pre_reboot_delay
        validates :pre_reboot_delay, type: Integer

        # @return [Integer, nil] Seconds to wait after the reboot was successful and the connection was re-established,This is useful if you want wait for something to settle despite your connection already working
        attribute :post_reboot_delay
        validates :post_reboot_delay, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for shutdown to occur,Increase this timeout for very slow hardware, large update applications, etc,This option has been removed since Ansible 2.5 as the win_reboot behavior has changed
        attribute :shutdown_timeout
        validates :shutdown_timeout, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for machine to re-appear on the network and respond to a test command,This timeout is evaluated separately for both network appearance and test command success (so maximum clock time is actually twice this value)
        attribute :reboot_timeout
        validates :reboot_timeout, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for a single successful TCP connection to the WinRM endpoint before trying again
        attribute :connect_timeout
        validates :connect_timeout, type: Integer

        # @return [String, nil] Command to expect success for to determine the machine is ready for management
        attribute :test_command
        validates :test_command, type: String

        # @return [String, nil] Message to display to users
        attribute :msg
        validates :msg, type: String
      end
    end
  end
end
