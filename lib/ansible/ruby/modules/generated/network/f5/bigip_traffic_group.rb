# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Supports managing traffic groups and their attributes on a BIG-IP.
      class Bigip_traffic_group < Base
        # @return [String] The name of the traffic group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the traffic group exists.,When C(absent), ensures the traffic group is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Specifies the floating Media Access Control (MAC) address associated with the floating IP addresses defined for a traffic group.,Primarily, a MAC masquerade address minimizes ARP communications or dropped packets as a result of failover.,A MAC masquerade address ensures that any traffic destined for a specific traffic group reaches an available device after failover, which happens because along with the traffic group, the MAC masquerade address floats to the available device.,Without a MAC masquerade address, the sending host must learn the MAC address for a newly-active device, either by sending an ARP request or by relying on the gratuitous ARP from the newly-active device.,To unset the MAC address, specify an empty value (C("")) to this parameter.
        attribute :mac_address
      end
    end
  end
end
