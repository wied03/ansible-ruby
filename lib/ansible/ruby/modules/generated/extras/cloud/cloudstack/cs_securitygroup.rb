# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_securitygroup < Base
        # @return [String] Name of the security group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the security group.
        attribute :description
        validates :description, type: String

        # @return [:present, :absent, nil] State of the security group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the security group is related to.
        attribute :domain

        # @return [Object, nil] Account the security group is related to.
        attribute :account

        # @return [Object, nil] Name of the project the security group to be created in.
        attribute :project
      end
    end
  end
end
