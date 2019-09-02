# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An Ansible module to add or delete public ip addresses on an existing server or servers in CenturyLink Cloud.
      class Clc_publicip < Base
        # @return [:TCP, :UDP, :ICMP, nil] The protocol that the public IP will listen for.
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:TCP, :UDP, :ICMP], :message=>"%{value} needs to be :TCP, :UDP, :ICMP"}, allow_nil: true

        # @return [Object, nil] A list of ports to expose. This is required when state is 'present'
        attribute :ports

        # @return [Object] A list of servers to create public ips on.
        attribute :server_ids
        validates :server_ids, presence: true

        # @return [:present, :absent, nil] Determine whether to create or delete public IPs. If present module will not create a second public ip if one already exists.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to wait for the tasks to finish before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
