# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, update and remove load balancer rules.
      class Cs_loadbalancer_rule < Base
        # @return [String] The name of the load balancer rule.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The description of the load balancer rule.
        attribute :description

        # @return [:source, :roundrobin, :leastconn, nil] Load balancer algorithm,Required when using C(state=present).
        attribute :algorithm
        validates :algorithm, inclusion: {:in=>[:source, :roundrobin, :leastconn], :message=>"%{value} needs to be :source, :roundrobin, :leastconn"}, allow_nil: true

        # @return [Integer, nil] The private port of the private ip address/virtual machine where the network traffic will be load balanced to.,Required when using C(state=present).,Can not be changed once the rule exists due API limitation.
        attribute :private_port
        validates :private_port, type: Integer

        # @return [Integer] The public port from where the network traffic will be load balanced from.,Required when using C(state=present).,Can not be changed once the rule exists due API limitation.
        attribute :public_port
        validates :public_port, presence: true, type: Integer

        # @return [Object] Public IP address from where the network traffic will be load balanced from.
        attribute :ip_address
        validates :ip_address, presence: true

        # @return [Boolean, nil] Whether the firewall rule for public port should be created, while creating the new rule.,Use M(cs_firewall) for managing firewall rules.
        attribute :open_firewall
        validates :open_firewall, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] CIDR (full notation) to be used for firewall rule if required.
        attribute :cidr

        # @return [Object, nil] The protocol to be used on the load balancer
        attribute :protocol

        # @return [Object, nil] Name of the project the load balancer IP address is related to.
        attribute :project

        # @return [:present, :absent] State of the rule.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] Domain the rule is related to.
        attribute :domain

        # @return [Object, nil] Account the rule is related to.
        attribute :account

        # @return [Object, nil] Name of the zone in which the rule shoud be created.,If not set, default zone is used.
        attribute :zone
      end
    end
  end
end
