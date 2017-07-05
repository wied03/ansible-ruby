# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module asserts that given expressions are true with an optional custom message.
      class Assert < Base
        # @return [Array<String>, String] A string expression of the same form that can be passed to the 'when' statement,Alternatively, a list of string expressions
        attribute :that
        validates :that, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] The customized message used for a failing assertion
        attribute :msg
        validates :msg, type: String
      end
    end
  end
end
