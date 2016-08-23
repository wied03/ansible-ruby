# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_service < Base
        # @return [Object] Name of the service
        attribute :name
        validates :name, presence: true

        # @return [Object] Set the startup type for the service
        attribute :start_mode
        validates :start_mode, inclusion: {:in=>[:auto, :manual, :disabled], :message=>"%{value} needs to be :auto, :manual, :disabled"}, allow_nil: true

        # @return [Object] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the service.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted], :message=>"%{value} needs to be :started, :stopped, :restarted"}, allow_nil: true
      end
    end
  end
end
