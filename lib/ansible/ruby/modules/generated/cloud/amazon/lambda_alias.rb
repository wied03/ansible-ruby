# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the management of AWS Lambda functions aliases via the Ansible framework.  It is idempotent and supports "Check" mode.    Use module M(lambda) to manage the lambda function itself and M(lambda_event) to manage event source mappings.
      class Lambda_alias < Base
        # @return [Object] The name of the function alias.
        attribute :function_name
        validates :function_name, presence: true

        # @return [:present, :absent] Describes the desired state.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Name of the function alias.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A short, user-defined function alias description.
        attribute :description

        # @return [Object, nil] Version associated with the Lambda function alias. A value of 0 (or omitted parameter) sets the alias to the $LATEST version.
        attribute :version
      end
    end
  end
end
