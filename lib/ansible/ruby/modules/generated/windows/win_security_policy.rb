# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows you to set the local security policies that are configured by SecEdit.exe.
      class Win_security_policy < Base
        # @return [String] The ini section the key exists in.,If the section does not exist then the module will return an error.,Example sections to use are 'Account Policies', 'Local Policies', 'Event Log', 'Restricted Groups', 'System Services', 'Registry' and 'File System'
        attribute :section
        validates :section, presence: true, type: String

        # @return [String] The ini key of the section or policy name to modify.,The module will return an error if this key is invalid.
        attribute :key
        validates :key, presence: true, type: String

        # @return [String, Integer] The value for the ini key or policy name.,If the key takes in a boolean value then 0 = False and 1 = True.
        attribute :value
        validates :value, presence: true, type: MultipleTypes.new(String, Integer)
      end
    end
  end
end
