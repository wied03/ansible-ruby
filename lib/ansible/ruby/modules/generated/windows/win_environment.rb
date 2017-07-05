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
        # @return [:present, :absent, nil] present to ensure environment variable is set, or absent to ensure it is removed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the environment variable
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The value to store in the environment variable. Can be omitted for state=absent
        attribute :value
        validates :value, type: String

        # @return [:machine, :process, :user] The level at which to set the environment variable.,Use 'machine' to set for all users.,Use 'user' to set for the current user that ansible is connected as.,Use 'process' to set for the current process.  Probably not that useful.
        attribute :level
        validates :level, presence: true, inclusion: {:in=>[:machine, :process, :user], :message=>"%{value} needs to be :machine, :process, :user"}
      end
    end
  end
end
