# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Perform server actions on an existing compute instance from OpenStack. This module does not return any data other than changed true/false. When I(action) is 'rebuild', then I(image) parameter is required.
      class Os_server_action < Base
        # @return [String] Name or ID of the instance
        attribute :server
        validates :server, presence: true, type: String

        # @return [:yes, :no, nil] If the module should wait for the instance action to be performed.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] The amount of time the module should wait for the instance to perform the requested action.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:stop, :start, :pause, :unpause, :lock, :unlock, :suspend, :resume, :rebuild, nil] Perform the given action. The lock and unlock actions always return changed as the servers API does not provide lock status.
        attribute :action
        validates :action, inclusion: {:in=>[:stop, :start, :pause, :unpause, :lock, :unlock, :suspend, :resume, :rebuild], :message=>"%{value} needs to be :stop, :start, :pause, :unpause, :lock, :unlock, :suspend, :resume, :rebuild"}, allow_nil: true

        # @return [Object, nil] Image the server should be rebuilt with
        attribute :image

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
