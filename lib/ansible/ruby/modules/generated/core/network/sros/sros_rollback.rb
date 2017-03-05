# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure the rollback feature on remote Nokia devices running the SR OS operating system.  this module provides a stateful implementation for managing the configuration of the rollback feature
      class Sros_rollback < Base
        # @return [Object, nil] The I(rollback_location) specifies the location and filename of the rollback checkpoint files.   This argument supports any valid local or remote URL as specified in SR OS
        attribute :rollback_location

        # @return [Object, nil] The I(remote_max_checkpoints) argument configures the maximum number of rollback files that can be transfered and saved to a remote location.  Valid values for this argument are in the range of 1 to 50
        attribute :remote_max_checkpoints

        # @return [Object, nil] The I(local_max_checkpoints) argument configures the maximum number of rollback files that can be saved on the devices local compact flash.  Valid values for this argument are in the range of 1 to 50
        attribute :local_max_checkpoints

        # @return [Object, nil] The I(rescue_location) specifies the location of the rescue file.  This argument supports any valid local or remote URL as specified in SR OS
        attribute :rescue_location

        # @return [:present, :absent, nil] The I(state) argument specifies the state of the configuration entries in the devices active configuration.  When the state value is set to C(true) the configuration is present in the devices active configuration.  When the state value is set to C(false) the configuration values are removed from the devices active configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
