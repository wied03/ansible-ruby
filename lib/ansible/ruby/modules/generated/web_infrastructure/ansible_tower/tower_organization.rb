# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower organizations. See U(https://www.ansible.com/tower) for an overview.
      class Tower_organization < Base
        # @return [String] Name to use for the organization.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description to use for the organization.
        attribute :description
        validates :description, type: String

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
