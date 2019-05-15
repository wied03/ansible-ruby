# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module asserts that given expressions are true with an optional custom message.
      # This module is also supported for Windows targets.
      class Assert < Base
        # @return [Array<String>, String] A string expression of the same form that can be passed to the 'when' statement,Alternatively, a list of string expressions
        attribute :that
        validates :that, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] The customized message used for a failing assertion,This argument was called 'msg' before version 2.7, now it's renamed to 'fail_msg' with alias 'msg'
        attribute :fail_msg
        validates :fail_msg, type: String

        # @return [String, nil] The customized message used for a successful assertion
        attribute :success_msg
        validates :success_msg, type: String
      end
    end
  end
end
