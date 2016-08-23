# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_server_actions < Base
        # @return [String] Name or ID of the instance
        attribute :server
        validates :server, presence: true, type: String

        # @return [String, nil] If the module should wait for the instance action to be performed.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] The amount of time the module should wait for the instance to perform the requested action.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:stop, :start, :pause, :unpause, :lock, :unlock, :suspend, :resume, nil] Perform the given action. The lock and unlock actions always return changed as the servers API does not provide lock status.
        attribute :action
        validates :action, inclusion: {:in=>[:stop, :start, :pause, :unpause, :lock, :unlock, :suspend, :resume], :message=>"%{value} needs to be :stop, :start, :pause, :unpause, :lock, :unlock, :suspend, :resume"}, allow_nil: true
      end
    end
  end
end
