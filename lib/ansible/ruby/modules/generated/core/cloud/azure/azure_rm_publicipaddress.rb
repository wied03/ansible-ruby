# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_publicipaddress < Base
        # @return [String] Name of resource group with which the Public IP is associated.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [:Dynamic, :Static, nil] Control whether the assigned Public IP remains permanently assigned to the object. If not set to 'Static', the IP address my changed anytime an associated virtual machine is power cycled.
        attribute :allocation_method
        validates :allocation_method, inclusion: {:in=>[:Dynamic, :Static], :message=>"%{value} needs to be :Dynamic, :Static"}, allow_nil: true

        # @return [Object, nil] The customizable portion of the FQDN assigned to public IP address. This is an explicit setting. If no value is provided, any existing value will be removed on an existing public IP.
        attribute :domain_name_label

        # @return [String] Name of the Public IP.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the Public IP. Use 'present' to create or update a and 'absent' to delete.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String
      end
    end
  end
end
