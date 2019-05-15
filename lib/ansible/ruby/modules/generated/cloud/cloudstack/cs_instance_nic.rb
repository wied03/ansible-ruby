# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and remove nic to and from network
      class Cs_instance_nic < Base
        # @return [String] Name of instance.
        attribute :vm
        validates :vm, presence: true, type: String

        # @return [String] Name of the network.
        attribute :network
        validates :network, presence: true, type: String

        # @return [String, nil] IP address to be used for the nic.
        attribute :ip_address
        validates :ip_address, type: String

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

        # @return [:present, :absent, nil] State of the nic.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: String
      end
    end
  end
end
