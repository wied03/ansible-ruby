# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove a Stack to an OpenStack Heat
      class Os_stack < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the stack that should be created, name could be char and digit, no space
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Path of the template file to use for the stack creation
        attribute :template
        validates :template, type: String

        # @return [Array<String>, String, nil] List of environment files that should be used for the stack creation
        attribute :environment
        validates :environment, type: TypeGeneric.new(String)

        # @return [Hash, nil] Dictionary of parameters for the stack creation
        attribute :parameters
        validates :parameters, type: Hash

        # @return [Boolean, nil] Rollback stack creation
        attribute :rollback
        validates :rollback, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Maximum number of seconds to wait for the stack creation
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
