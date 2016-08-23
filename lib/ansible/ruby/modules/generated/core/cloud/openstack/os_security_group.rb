# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_security_group < Base
        # @return [String] Name that has to be given to the security group. This module requires that security group names be unique.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Long description of the purpose of the security group
        attribute :description
        validates :description, type: String

        # @return [String] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
