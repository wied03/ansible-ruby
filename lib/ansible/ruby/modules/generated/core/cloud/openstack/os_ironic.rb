# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_ironic < Base
        # @return [:present, :absent, nil] Indicates desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] globally unique identifier (UUID) to be given to the resource. Will be auto-generated if not specified, and name is specified.,Definition of a UUID will always take precedence to a name value.
        attribute :uuid
        validates :uuid, type: String

        # @return [String] unique name identifier to be given to the resource.
        attribute :name
        validates :name, type: String

        # @return [String] The name of the Ironic Driver to use with this node.
        attribute :driver
        validates :driver, presence: true, type: String

        # @return [String] Associate the node with a pre-defined chassis.
        attribute :chassis_uuid
        validates :chassis_uuid, type: String

        # @return [String] If noauth mode is utilized, this is required to be set to the endpoint URL for the Ironic API.  Use with "auth" and "auth_type" settings set to None.
        attribute :ironic_url
        validates :ironic_url, type: String

        # @return [Hash] Information for this server's driver. Will vary based on which driver is in use. Any sub-field which is populated will be validated during creation.
        attribute :driver_info
        validates :driver_info, type: Hash

        # @return [Array] A list of network interface cards, eg, " - mac: aa:bb:cc:aa:bb:cc"
        attribute :nics
        validates :nics, presence: true, type: Array

        # @return [Hash] Definition of the physical characteristics of this server, used for scheduling purposes
        attribute :properties
        validates :properties, type: Hash

        # @return [Object] Allows the code that would assert changes to nodes to skip the update if the change is a single line consisting of the password field.  As of Kilo, by default, passwords are always masked to API requests, which means the logic as a result always attempts to re-assert the password field.
        attribute :skip_update_of_driver_password
      end
    end
  end
end
