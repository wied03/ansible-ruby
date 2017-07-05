# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Like M(win_file), M(win_reg_stat) will return whether the key/property exists.
      # It also returns the sub keys and properties of the key specified.
      # If specifying a property name through I(property), it will return the information specific for that property.
      class Win_reg_stat < Base
        # @return [String] The full registry key path including the hive to search for.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] The registry property name to get information for, the return json will not include the sub_keys and properties entries for the I(key) specified.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
