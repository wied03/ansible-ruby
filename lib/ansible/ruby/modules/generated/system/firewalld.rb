# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows for addition or deletion of services and ports either tcp or udp in either running or permanent firewalld rules.
      class Firewalld < Base
        # @return [String, nil] Name of a service to add/remove to/from firewalld - service must be listed in output of firewall-cmd --get-services.
        attribute :service
        validates :service, type: String

        # @return [String, nil] Name of a port or port range to add/remove to/from firewalld. Must be in the form PORT/PROTOCOL or PORT-PORT/PROTOCOL for port ranges.
        attribute :port
        validates :port, type: String

        # @return [String, nil] Rich rule to add/remove to/from firewalld.
        attribute :rich_rule
        validates :rich_rule, type: String

        # @return [String, nil] The source/network you would like to add/remove to/from firewalld
        attribute :source
        validates :source, type: String

        # @return [String, nil] The interface you would like to add/remove to/from a zone in firewalld
        attribute :interface
        validates :interface, type: String

        # @return [:work, :drop, :internal, :external, :trusted, :home, :dmz, :public, :block, nil] The firewalld zone to add/remove to/from (NOTE: default zone can be configured per system but "public" is default from upstream. Available choices can be extended based on per-system configs, listed here are "out of the box" defaults).\r\n
        attribute :zone
        validates :zone, expression_inclusion: {:in=>[:work, :drop, :internal, :external, :trusted, :home, :dmz, :public, :block], :message=>"%{value} needs to be :work, :drop, :internal, :external, :trusted, :home, :dmz, :public, :block"}, allow_nil: true

        # @return [Symbol, nil] Should this configuration be in the running firewalld configuration or persist across reboots. As of Ansible version 2.3, permanent operations can operate on firewalld configs when it's not running (requires firewalld >= 3.0.9). (NOTE: If this is false, immediate is assumed true.)\r\n
        attribute :permanent
        validates :permanent, type: Symbol

        # @return [:yes, :no, nil] Should this configuration be applied immediately, if set as permanent
        attribute :immediate
        validates :immediate, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:enabled, :disabled, :present, :absent] Enable or disable a setting. For ports: Should this port accept(enabled) or reject(disabled) connections. The states "present" and "absent" can only be used in zone level operations (i.e. when no other parameters but zone and state are set).\r\n
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:enabled, :disabled, :present, :absent], :message=>"%{value} needs to be :enabled, :disabled, :present, :absent"}

        # @return [Integer, nil] The amount of time the rule should be in effect for when non-permanent.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Boolean, nil] The masquerade setting you would like to enable/disable to/from zones within firewalld
        attribute :masquerade
        validates :masquerade, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
