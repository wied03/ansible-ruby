# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and remove secondary IPs to and from a NIC of an instance.
      class Cs_instance_nic_secondaryip < Base
        # @return [String] Name of instance.
        attribute :vm
        validates :vm, presence: true, type: String

        # @return [Object, nil] Name of the network.,Required to find the NIC if instance has multiple networks assigned.
        attribute :network

        # @return [String, nil] Secondary IP address to be added to the instance nic.,If not set, the API always returns a new IP address and idempotency is not given.
        attribute :vm_guest_ip
        validates :vm_guest_ip, type: String

        # @return [Object, nil] Name of the VPC the C(vm) is related to.
        attribute :vpc

        # @return [Object, nil] Domain the instance is related to.
        attribute :domain

        # @return [Object, nil] Account the instance is related to.
        attribute :account

        # @return [Object, nil] Name of the project the instance is deployed in.
        attribute :project

        # @return [Object, nil] Name of the zone in which the instance is deployed in.,If not set, default zone is used.
        attribute :zone

        # @return [:present, :absent, nil] State of the ipaddress.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
