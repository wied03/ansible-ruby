# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Clc_group < Base
        # @return [String] The name of the Server Group
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] A description of the Server Group
        attribute :description

        # @return [Object] The parent group of the server group. If parent is not provided, it creates the group at top level.
        attribute :parent

        # @return [Object] Datacenter to create the group in. If location is not provided, the group gets created in the default datacenter associated with the account
        attribute :location

        # @return [String] Whether to create or delete the group
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [TrueClass] Whether to wait for the tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
