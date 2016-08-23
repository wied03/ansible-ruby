# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_instancegroup < Base
        # @return [String] Name of the instance group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] Domain the instance group is related to.
        attribute :domain

        # @return [Object] Account the instance group is related to.
        attribute :account

        # @return [Object] Project the instance group is related to.
        attribute :project

        # @return [String] State of the instance group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
