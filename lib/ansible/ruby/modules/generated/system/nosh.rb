# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Control running and enabled state for system-wide or user services.
      # BSD and Linux systems are supported.
      class Nosh < Base
        # @return [String] Name of the service to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:started, :stopped, :reset, :restarted, :reloaded, nil] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will send a SIGHUP or start the service. C(reset) will start or stop the service according to whether it is enabled or not.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :reset, :restarted, :reloaded], :message=>"%{value} needs to be :started, :stopped, :reset, :restarted, :reloaded"}, allow_nil: true

        # @return [String, nil] Enable or disable the service, independently of C(*.preset) file preference or running state. Mutually exclusive with I(preset). Will take effect prior to I(state=reset).
        attribute :enabled
        validates :enabled, type: String

        # @return [String, nil] Enable or disable the service according to local preferences in *.preset files. Mutually exclusive with I(enabled). Only has an effect if set to true. Will take effect prior to I(state=reset).
        attribute :preset
        validates :preset, type: String

        # @return [String, nil] Run system-control talking to the calling user's service manager, rather than the system-wide service manager.
        attribute :user
        validates :user, type: String
      end
    end
  end
end
