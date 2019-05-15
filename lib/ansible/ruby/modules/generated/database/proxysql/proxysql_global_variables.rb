# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(proxysql_global_variables) module gets or sets the proxysql global variables.
      class Proxysql_global_variables < Base
        # @return [String] Defines which variable should be returned, or if I(value) is specified which variable should be updated.
        attribute :variable
        validates :variable, presence: true, type: String

        # @return [Integer, nil] Defines a value the variable specified using I(variable) should be set to.
        attribute :value
        validates :value, type: Integer
      end
    end
  end
end
