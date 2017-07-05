# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP system database variables
      class Bigip_sys_db < Base
        # @return [String] The database variable to manipulate.
        attribute :key
        validates :key, presence: true, type: String

        # @return [:present, :reset, nil] The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value). When C(reset) sets the variable back to the default value. At least one of value and state C(reset) are required.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :reset], :message=>"%{value} needs to be :present, :reset"}, allow_nil: true

        # @return [String, nil] The value to set the key to. At least one of value and state C(reset) are required.
        attribute :value
        validates :value, type: String
      end
    end
  end
end
