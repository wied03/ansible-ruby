# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_resourcegroup < Base
        # @return [Object] Remove a resource group and all associated resources. Use with state 'absent' to delete a resource group that contains resources.
        attribute :force

        # @return [String] Azure location for the resource group. Required when creating a new resource group. Cannot be changed once resource group is created.
        attribute :location
        validates :location, type: String

        # @return [String] Name of the resource group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the resource group. Use 'present' to create or update and 'absent' to delete. When 'absent' a resource group containing resources will not be removed unless the force option is used.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
