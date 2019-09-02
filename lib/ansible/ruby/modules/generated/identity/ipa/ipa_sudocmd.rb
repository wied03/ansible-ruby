# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify or delete sudo command within FreeIPA server using FreeIPA API.
      class Ipa_sudocmd < Base
        # @return [Object] Sudo Command.
        attribute :sudocmd
        validates :sudocmd, presence: true

        # @return [String, nil] A description of this command.
        attribute :description
        validates :description, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] State to ensure
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
