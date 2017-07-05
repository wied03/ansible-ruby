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

        # @return [Object, nil] Inventory variables. Use '@' to get from file.
        attribute :variables

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] URL to your Tower instance.
        attribute :tower_host

        # @return [Object, nil] Username for your Tower instance.
        attribute :tower_username

        # @return [Object, nil] Password for your Tower instance.
        attribute :tower_password

        # @return [Boolean, nil] Dis/allow insecure connections to Tower. If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :tower_verify_ssl
        validates :tower_verify_ssl, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Path to the Tower config file. See notes.
        attribute :tower_config_file
        validates :tower_config_file, type: String
      end
    end
  end
end
