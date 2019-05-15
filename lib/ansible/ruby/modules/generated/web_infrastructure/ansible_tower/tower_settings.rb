# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get, Modify Ansible Tower settings. See U(https://www.ansible.com/tower) for an overview.
      class Tower_settings < Base
        # @return [String, nil] Name of setting to get/modify
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] Value to be modified for given setting.
        attribute :value
        validates :value, type: TypeGeneric.new(String)
      end
    end
  end
end
