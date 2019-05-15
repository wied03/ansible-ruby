# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages local Windows computer name.
      # A reboot is required for the computer name to take effect.
      class Win_hostname < Base
        # @return [String] The hostname to set for the computer.
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
