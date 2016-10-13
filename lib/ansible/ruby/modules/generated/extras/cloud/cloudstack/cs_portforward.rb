# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove port forwarding rules.
      class Cs_portforward < Base
        # @return [String] Public IP address the rule is assigned to.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] Name of virtual machine which we make the port forwarding rule for.,Required if C(state=present).
        attribute :vm
        validates :vm, type: String

        # @return [:present, :absent, nil] State of the port forwarding rule.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:tcp, :udp, nil] Protocol of the port forwarding rule.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}, allow_nil: true

        # @return [Integer, String] Start public port for this rule.
        attribute :public_port
        validates :public_port, presence: true, type: MultipleTypes.new(Integer, String)

        # @return [Object, nil] End public port for this rule.,If not specified equal C(public_port).
        attribute :public_end_port

        # @return [Integer] Start private port for this rule.
        attribute :private_port
        validates :private_port, presence: true, type: Integer

        # @return [Object, nil] End private port for this rule.,If not specified equal C(private_port).
        attribute :private_end_port

        # @return [Boolean, nil] Whether the firewall rule for public port should be created, while creating the new rule.,Use M(cs_firewall) for managing firewall rules.
        attribute :open_firewall
        validates :open_firewall, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] VM guest NIC secondary IP address for the port forwarding rule.
        attribute :vm_guest_ip
        validates :vm_guest_ip, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Domain the C(vm) is related to.
        attribute :domain

        # @return [Object, nil] Account the C(vm) is related to.
        attribute :account

        # @return [Object, nil] Name of the project the C(vm) is located in.
        attribute :project

        # @return [Object, nil] Name of the zone in which the virtual machine is in.,If not set, default zone is used.
        attribute :zone

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
