# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove CloudStack role permissions.
      # Managing role permissions only supported in CloudStack >= 4.9.
      class Cs_role_permission < Base
        # @return [String] The API name of the permission.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name or ID of the role.
        attribute :role
        validates :role, presence: true, type: String

        # @return [:allow, :deny, nil] The rule permission, allow or deny. Defaulted to deny.
        attribute :permission
        validates :permission, expression_inclusion: {:in=>[:allow, :deny], :message=>"%{value} needs to be :allow, :deny"}, allow_nil: true

        # @return [:present, :absent, nil] State of the role permission.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The description of the role permission.
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] The parent role permission uuid. use 0 to move this rule at the top of the list.
        attribute :parent
        validates :parent, type: Integer
      end
    end
  end
end
