# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Clc_publicip < Base
        # @return [String] The protocol that the public IP will listen for.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:TCP, :UDP, :ICMP], :message=>"%{value} needs to be :TCP, :UDP, :ICMP"}, allow_nil: true

        # @return [String] A list of ports to expose. This is required when state is 'present'
        attribute :ports
        validates :ports, type: String

        # @return [Object] A list of servers to create public ips on.
        attribute :server_ids
        validates :server_ids, presence: true

        # @return [String] Determine whether to create or delete public IPs. If present module will not create a second public ip if one already exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [TrueClass] Whether to wait for the tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
