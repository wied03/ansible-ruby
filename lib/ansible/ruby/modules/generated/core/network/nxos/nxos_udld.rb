# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages UDLD global configuration params.
      class Nxos_udld < Base
        # @return [:enabled, :disabled, nil] Toggles aggressive mode.
        attribute :aggressive
        validates :aggressive, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Integer, nil] Message time in seconds for UDLD packets.
        attribute :msg_time
        validates :msg_time, type: Integer

        # @return [:true, :false, nil] Ability to reset UDLD down interfaces.
        attribute :reset
        validates :reset, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
