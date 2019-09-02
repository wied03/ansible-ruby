# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to manage Chocolatey config settings as well as unset the values.
      class Win_chocolatey_config < Base
        # @return [String] The name of the config setting to manage.,See U(https://chocolatey.org/docs/chocolatey-configuration) for a list of valid configuration settings that can be changed.,Any config values that contain encrypted values like a password are not idempotent as the plaintext value cannot be read.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] When C(absent), it will ensure the setting is unset or blank.,When C(present), it will ensure the setting is set to the value of I(value).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Used when C(state=present) that contains the value to set for the config setting.,Cannot be null or an empty string, use C(state=absent) to unset a config value instead.
        attribute :value
        validates :value, type: String
      end
    end
  end
end
