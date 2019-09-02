# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Uses .net Environment to set or remove environment variables and can set at User, Machine or Process level.
      # User level environment variables will be set, but not available until the user has logged off and on again.
      class Win_environment < Base
        # @return [:absent, :present, nil] Set to C(present) to ensure environment variable is set.,Set to C(absent) to ensure it is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] The name of the environment variable.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The value to store in the environment variable.,Must be set when C(state=present) and cannot be an empty string.,Can be omitted for C(state=absent).
        attribute :value
        validates :value, type: String

        # @return [:machine, :user, :process] The level at which to set the environment variable.,Use C(machine) to set for all users.,Use C(user) to set for the current user that ansible is connected as.,Use C(process) to set for the current process.  Probably not that useful.
        attribute :level
        validates :level, presence: true, expression_inclusion: {:in=>[:machine, :user, :process], :message=>"%{value} needs to be :machine, :user, :process"}
      end
    end
  end
end
