# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove security groups from an OpenStack cloud.
      class Os_security_group < Base
        # @return [String] Name that has to be given to the security group. This module requires that security group names be unique.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Long description of the purpose of the security group
        attribute :description
        validates :description, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Unique name or ID of the project.
        attribute :project
        validates :project, type: String

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
