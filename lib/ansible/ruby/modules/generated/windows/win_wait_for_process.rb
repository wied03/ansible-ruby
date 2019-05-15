# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Waiting for a process to start or stop.
      # This is useful when Windows services behave poorly and do not enumerate external dependencies in their manifest.
      class Win_wait_for_process < Base
        # @return [String, nil] The name of the process(es) for which to wait.
        attribute :process_name_exact
        validates :process_name_exact, type: String

        # @return [Object, nil] RegEx pattern matching desired process(es).
        attribute :process_name_pattern

        # @return [Integer, nil] Number of seconds to sleep between checks.,Only applies when waiting for a process to start.  Waiting for a process to start does not have a native non-polling mechanism. Waiting for a stop uses native PowerShell and does not require polling.
        attribute :sleep
        validates :sleep, type: Integer

        # @return [Integer, nil] Minimum number of process matching the supplied pattern to satisfy C(present) condition.,Only applies to C(present).
        attribute :process_min_count
        validates :process_min_count, type: Integer

        # @return [Object, nil] The PID of the process.
        attribute :pid

        # @return [Object, nil] The owner of the process.,Requires PowerShell version 4.0 or newer.
        attribute :owner

        # @return [Integer, nil] Seconds to wait before checking processes.
        attribute :pre_wait_delay
        validates :pre_wait_delay, type: Integer

        # @return [Integer, nil] Seconds to wait after checking for processes.
        attribute :post_wait_delay
        validates :post_wait_delay, type: Integer

        # @return [:absent, :present, nil] When checking for a running process C(present) will block execution until the process exists, or until the timeout has been reached. C(absent) will block execution untile the processs no longer exists, or until the timeout has been reached.,When waiting for C(present), the module will return changed only if the process was not present on the initial check but became present on subsequent checks.,If, while waiting for C(absent), new processes matching the supplied pattern are started, these new processes will not be included in the action.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Integer, nil] The maximum number of seconds to wait for a for a process to start or stop before erroring out.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
