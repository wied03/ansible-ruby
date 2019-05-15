# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provices support for executing Cisco NSO actions and then verifying that the output is as expected.
      class Nso_action < Base
        # @return [String] Path to NSO action.
        attribute :path
        validates :path, presence: true, type: String

        # @return [Object, nil] NSO action parameters.\r\n
        attribute :input

        # @return [Hash, nil] Required output parameters.\r\n
        attribute :output_required
        validates :output_required, type: Hash

        # @return [Object, nil] List of result parameter names that will cause the task to fail if they are present.\r\n
        attribute :output_invalid

        # @return [Object, nil] If set to true, the task will fail if any output parameters not in output_required is present in the output.\r\n
        attribute :validate_strict
      end
    end
  end
end
