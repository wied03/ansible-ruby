# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Self-IPs on a BIG-IP system.
      class Bigip_selfip < Base
        # @return [String, nil] The IP addresses for the new self IP. This value is ignored upon update as addresses themselves cannot be changed after they are created.,This value is required when creating new self IPs.
        attribute :address
        validates :address, type: String

        # @return [Array<String>, String, nil] Configure port lockdown for the Self IP. By default, the Self IP has a "default deny" policy. This can be changed to allow TCP and UDP ports as well as specific protocols. This list should contain C(protocol):C(port) values.
        attribute :allow_service
        validates :allow_service, type: TypeGeneric.new(String)

        # @return [String] The self IP to create.,If this parameter is not specified, then it will default to the value supplied in the C(address) parameter.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The netmask for the self IP. When creating a new Self IP, this value is required.
        attribute :netmask
        validates :netmask, type: String

        # @return [:absent, :present, nil] When C(present), guarantees that the Self-IP exists with the provided attributes.,When C(absent), removes the Self-IP from the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] The traffic group for the Self IP addresses in an active-active, redundant load balancer configuration. When creating a new Self IP, if this value is not specified, the default of C(/Common/traffic-group-local-only) will be used.
        attribute :traffic_group

        # @return [String, nil] The VLAN that the new self IPs will be on. When creating a new Self IP, this value is required.
        attribute :vlan
        validates :vlan, type: String

        # @return [Integer, nil] The route domain id of the system. When creating a new Self IP, if this value is not specified, a default value of C(0) will be used.,This value cannot be changed after it is set.
        attribute :route_domain
        validates :route_domain, type: Integer

        # @return [String, nil] Device partition to manage resources on. You can set different partitions for Self IPs, but the address used may not match any other address used by a Self IP. In that sense, Self IPs are not isolated by partitions as other resources on a BIG-IP are.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
