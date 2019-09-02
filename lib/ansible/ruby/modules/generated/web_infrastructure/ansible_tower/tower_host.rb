# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower hosts. See U(https://www.ansible.com/tower) for an overview.
      class Tower_host < Base
        # @return [String] The name to use for the host.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description to use for the host.
        attribute :description
        validates :description, type: String

        # @return [String] Inventory the host should be made a member of.
        attribute :inventory
        validates :inventory, presence: true, type: String

        # @return [:yes, :no, nil] If the host should be enabled.
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Variables to use for the host. Use C(@) for a file.
        attribute :variables

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
