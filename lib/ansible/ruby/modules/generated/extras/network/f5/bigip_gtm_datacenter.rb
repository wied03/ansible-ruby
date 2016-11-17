# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP data center configuration. A data center defines the location where the physical network components reside, such as the server and link objects that share the same subnet on the network. This module is able to manipulate the data center definitions in a BIG-IP
      class Bigip_gtm_datacenter < Base
        # @return [Object, nil] The name of the contact for the data center.
        attribute :contact

        # @return [Object, nil] The description of the data center.
        attribute :description

        # @return [Boolean, nil] Whether the data center should be enabled. At least one of C(state) and C(enabled) are required.
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The location of the data center.
        attribute :location
        validates :location, type: String

        # @return [String] The name of the data center.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] The state of the datacenter on the BIG-IP. When C(present), guarantees that the data center exists. When C(absent) removes the data center from the BIG-IP. C(enabled) will enable the data center and C(disabled) will ensure the data center is disabled. At least one of state and enabled are required.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
