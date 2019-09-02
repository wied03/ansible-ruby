# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and remove local groups.
      # For non-Windows targets, please use the M(group) module instead.
      class Win_group < Base
        # @return [String] Name of the group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the group.
        attribute :description
        validates :description, type: String

        # @return [:absent, :present, nil] Create or remove the group.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
