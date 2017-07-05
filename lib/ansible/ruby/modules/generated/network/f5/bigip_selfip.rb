# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Self-IPs on a BIG-IP system
      class Bigip_selfip < Base
        # @return [String, nil] The IP addresses for the new self IP. This value is ignored upon update as addresses themselves cannot be changed after they are created.
        attribute :address
        validates :address, type: String

        # @return [Array<String>, String, nil] Configure port lockdown for the Self IP. By default, the Self IP has a "default deny" policy. This can be changed to allow TCP and UDP ports as well as specific protocols. This list should contain C(protocol):C(port) values.
        attribute :allow_service
        validates :allow_service, type: TypeGeneric.new(String)

        # @return [String] The self IP to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The netmasks for the self IP.
        attribute :netmask
        validates :netmask, presence: true, type: String

        # @return [:absent, :present, nil] The state of the variable on the system. When C(present), guarantees that the Self-IP exists with the provided attributes. When C(absent), removes the Self-IP from the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] The traffic group for the self IP addresses in an active-active, redundant load balancer configuration.
        attribute :traffic_group

        # @return [String] The VLAN that the new self IPs will be on.
        attribute :vlan
        validates :vlan, presence: true, type: String

        # @return [String, nil] The route domain id of the system. If none, id of the route domain will be "0" (default route domain)
        attribute :route_domain
        validates :route_domain, type: String
      end
    end
  end
end
