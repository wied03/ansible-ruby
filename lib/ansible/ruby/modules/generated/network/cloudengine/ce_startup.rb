# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages a system startup information on HUAWEI CloudEngine switches.
      class Ce_startup < Base
        # @return [String, nil] Name of the configuration file that is applied for the next startup. The value is a string of 5 to 255 characters.
        attribute :cfg_file
        validates :cfg_file, type: String

        # @return [Object, nil] File name of the system software that is applied for the next startup. The value is a string of 5 to 255 characters.
        attribute :software_file

        # @return [Object, nil] Name of the patch file that is applied for the next startup.
        attribute :patch_file

        # @return [Object, nil] Position of the device.The value is a string of 1 to 32 characters. The possible value of slot is all, slave-board, or the specific slotID.
        attribute :slot

        # @return [:display, nil] Display the startup information.
        attribute :action
        validates :action, expression_inclusion: {:in=>[:display], :message=>"%{value} needs to be :display"}, allow_nil: true
      end
    end
  end
end
