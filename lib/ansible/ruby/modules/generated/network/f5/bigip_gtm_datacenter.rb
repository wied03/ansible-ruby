# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP data center configuration. A data center defines the location where the physical network components reside, such as the server and link objects that share the same subnet on the network. This module is able to manipulate the data center definitions in a BIG-IP.
      class Bigip_gtm_datacenter < Base
        # @return [Object, nil] The name of the contact for the data center.
        attribute :contact

        # @return [Object, nil] The description of the data center.
        attribute :description

        # @return [String, nil] The location of the data center.
        attribute :location
        validates :location, type: String

        # @return [String] The name of the data center.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] The virtual address state. If C(absent), an attempt to delete the virtual address will be made. This will only succeed if this virtual address is not in use by a virtual server. C(present) creates the virtual address and enables it. If C(enabled), enable the virtual address if it exists. If C(disabled), create the virtual address if needed, and set state to C(disabled).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
