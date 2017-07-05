# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Query / Set MySQL variables
      class Mysql_variables < Base
        # @return [String] Variable name to operate
        attribute :variable
        validates :variable, presence: true, type: String

        # @return [Integer, nil] If set, then sets variable value to this
        attribute :value
        validates :value, type: Integer
      end
    end
  end
end
