# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV virtual machine network interfaces.
      class Ovirt_nic_facts < Base
        # @return [String] Name of the VM where NIC is attached.
        attribute :vm
        validates :vm, presence: true, type: String

        # @return [String, nil] Name of the NIC, can be used as glob expression.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
