# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows modifications and reading of dconf database. The module is implemented as a wrapper around dconf tool. Please see the dconf(1) man page for more details.
      # Since C(dconf) requires a running D-Bus session to change values, the module will try to detect an existing session and reuse it, or run the tool via C(dbus-run-session).
      class Dconf < Base
        # @return [String] A dconf key to modify or read from the dconf database.
        attribute :key
        validates :key, presence: true, type: String

        # @return [Array<String>, String, nil] Value to set for the specified dconf key. Value should be specified in GVariant format. Due to complexity of this format, it is best to have a look at existing values in the dconf database. Required for C(state=present).
        attribute :value
        validates :value, type: TypeGeneric.new(String)

        # @return [:read, :present, :absent, nil] The action to take upon the key/value.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:read, :present, :absent], :message=>"%{value} needs to be :read, :present, :absent"}, allow_nil: true
      end
    end
  end
end
