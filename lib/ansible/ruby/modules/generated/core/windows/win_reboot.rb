# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_reboot < Base
        # @return [Integer, nil] Seconds for shutdown to wait before requesting reboot
        attribute :pre_reboot_delay_sec
        validates :pre_reboot_delay_sec, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for shutdown to occur,Increase this timeout for very slow hardware, large update applications, etc
        attribute :shutdown_timeout_sec
        validates :shutdown_timeout_sec, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for machine to re-appear on the network and respond to a test command,This timeout is evaluated separately for both network appearance and test command success (so maximum clock time is actually twice this value)
        attribute :reboot_timeout_sec
        validates :reboot_timeout_sec, type: Integer

        # @return [Integer, nil] Maximum seconds to wait for a single successful TCP connection to the WinRM endpoint before trying again
        attribute :connect_timeout_sec
        validates :connect_timeout_sec, type: Integer

        # @return [String, nil] Command to expect success for to determine the machine is ready for management
        attribute :test_command
        validates :test_command, type: String
      end
    end
  end
end
