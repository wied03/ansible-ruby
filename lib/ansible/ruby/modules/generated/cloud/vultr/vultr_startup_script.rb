# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove startup scripts.
      class Vultr_startup_script < Base
        # @return [String] The script name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:boot, :pxe, nil] The script type, can not be changed once created.
        attribute :script_type
        validates :script_type, expression_inclusion: {:in=>[:boot, :pxe], :message=>"%{value} needs to be :boot, :pxe"}, allow_nil: true

        # @return [String, nil] The script source code.,Required if (state=present).
        attribute :script
        validates :script, type: String

        # @return [:present, :absent, nil] State of the script.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
