# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower inventories. See U(https://www.ansible.com/tower) for an overview.
      class Tower_inventory < Base
        # @return [String] The name to use for the inventory.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description to use for the inventory.
        attribute :description
        validates :description, type: String

        # @return [String] Organization the inventory belongs to.
        attribute :organization
        validates :organization, presence: true, type: String

        # @return [Object, nil] Inventory variables. Use C(@) to get from file.
        attribute :variables

        # @return [:"", :smart, nil] The kind field. Cannot be modified after created.
        attribute :kind
        validates :kind, inclusion: {:in=>[:"", :smart], :message=>"%{value} needs to be :\"\", :smart"}, allow_nil: true

        # @return [Object, nil] The host_filter field. Only useful when C(kind=smart).
        attribute :host_filter

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
