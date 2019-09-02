# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify or delete sudo command group within IPA server using IPA API.
      class Ipa_sudocmdgroup < Base
        # @return [Object] Sudo Command Group.
        attribute :cn
        validates :cn, presence: true

        # @return [String, nil] Group description.
        attribute :description
        validates :description, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] State to ensure
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [Array<String>, String, nil] List of sudo commands to assign to the group.,If an empty list is passed all assigned commands will be removed from the group.,If option is omitted sudo commands will not be checked or changed.
        attribute :sudocmd
        validates :sudocmd, type: TypeGeneric.new(String)
      end
    end
  end
end
