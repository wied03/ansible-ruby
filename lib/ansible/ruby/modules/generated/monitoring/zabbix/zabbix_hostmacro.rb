# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # manages Zabbix host macros, it can create, update or delete them.
      class Zabbix_hostmacro < Base
        # @return [String] Name of the host.
        attribute :host_name
        validates :host_name, presence: true, type: String

        # @return [String] Name of the host macro.
        attribute :macro_name
        validates :macro_name, presence: true, type: String

        # @return [String] Value of the host macro.
        attribute :macro_value
        validates :macro_value, presence: true, type: String

        # @return [:present, :absent, nil] State of the macro.,On C(present), it will create if macro does not exist or update the macro if the associated data is different.,On C(absent) will remove a macro if it exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Only updates an existing macro if set to C(yes).
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
