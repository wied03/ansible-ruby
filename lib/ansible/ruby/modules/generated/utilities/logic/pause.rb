# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Pauses playbook execution for a set amount of time, or until a prompt is acknowledged. All parameters are optional. The default behavior is to pause with a prompt.
      # To pause/wait/sleep per host, use the M(wait_for) module.
      # You can use C(ctrl+c) if you wish to advance a pause earlier than it is set to expire or if you need to abort a playbook run entirely. To continue early press C(ctrl+c) and then C(c). To abort a playbook press C(ctrl+c) and then C(a).
      # The pause module integrates into async/parallelized playbooks without any special considerations (see Rolling Updates). When using pauses with the C(serial) playbook parameter (as in rolling updates) you are only prompted once for the current group of hosts.
      # This module is also supported for Windows targets.
      class Pause < Base
        # @return [Integer, nil] A positive number of minutes to pause for.
        attribute :minutes
        validates :minutes, type: Integer

        # @return [Object, nil] A positive number of seconds to pause for.
        attribute :seconds

        # @return [String, nil] Optional text to use for the prompt message.
        attribute :prompt
        validates :prompt, type: String

        # @return [:yes, :no, nil] Controls whether or not keyboard input is shown when typing.,Has no effect if 'seconds' or 'minutes' is set.
        attribute :echo
        validates :echo, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
