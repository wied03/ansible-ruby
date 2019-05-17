# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove static NATs.
      class Cs_staticnat < Base
        # @return [String] Public IP address the static NAT is assigned to.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] Name of virtual machine which we make the static NAT for.,Required if C(state=present).
        attribute :vm
        validates :vm, type: String

        # @return [:yes, :no, nil] VM guest NIC secondary IP address for the static NAT.
        attribute :vm_guest_ip
        validates :vm_guest_ip, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Network the IP address is related to.
        attribute :network

        # @return [Object, nil] VPC the network related to.
        attribute :vpc

        # @return [:present, :absent, nil] State of the static NAT.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the static NAT is related to.
        attribute :domain

        # @return [Object, nil] Account the static NAT is related to.
        attribute :account

        # @return [Object, nil] Name of the project the static NAT is related to.
        attribute :project

        # @return [Object, nil] Name of the zone in which the virtual machine is in.,If not set, default zone is used.
        attribute :zone

        # @return [:yes, :no, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
