# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete a Rackspace Cloud Monitoring entity, which represents a device to monitor. Entities associate checks and alarms with a target system and provide a convenient, centralized place to store IP addresses. Rackspace monitoring module flow | *rax_mon_entity* -> rax_mon_check -> rax_mon_notification -> rax_mon_notification_plan -> rax_mon_alarm
      class Rax_mon_entity < Base
        # @return [Object] Defines a name for this entity. Must be a non-empty string between 1 and 255 characters long.
        attribute :label
        validates :label, presence: true

        # @return [:present, :absent, nil] Ensure that an entity with this C(name) exists or does not exist.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Rackspace monitoring agent on the target device to which this entity is bound. Necessary to collect C(agent.) rax_mon_checks against this entity.
        attribute :agent_id

        # @return [Object, nil] Hash of IP addresses that may be referenced by name by rax_mon_checks added to this entity. Must be a dictionary of with keys that are names between 1 and 64 characters long, and values that are valid IPv4 or IPv6 addresses.
        attribute :named_ip_addresses

        # @return [Object, nil] Hash of arbitrary C(name), C(value) pairs that are passed to associated rax_mon_alarms. Names and values must all be between 1 and 255 characters long.
        attribute :metadata
      end
    end
  end
end
