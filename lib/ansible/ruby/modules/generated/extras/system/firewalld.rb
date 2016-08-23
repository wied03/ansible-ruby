# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Firewalld < Base
        # @return [Object] Name of a service to add/remove to/from firewalld - service must be listed in /etc/services.
        attribute :service

        # @return [String] Name of a port or port range to add/remove to/from firewalld. Must be in the form PORT/PROTOCOL or PORT-PORT/PROTOCOL for port ranges.
        attribute :port
        validates :port, type: String

        # @return [String] Rich rule to add/remove to/from firewalld.
        attribute :rich_rule
        validates :rich_rule, type: String

        # @return [String] The source/network you would like to add/remove to/from firewalld
        attribute :source
        validates :source, type: String

        # @return [String] The interface you would like to add/remove to/from a zone in firewalld
        attribute :interface
        validates :interface, type: String

        # @return [String] The firewalld zone to add/remove to/from (NOTE: default zone can be configured per system but "public" is default from upstream. Available choices can be extended based on per-system configs, listed here are "out of the box" defaults).
        attribute :zone
        validates :zone, inclusion: {:in=>[:work, :drop, :internal, :external, :trusted, :home, :dmz, :public, :block], :message=>"%{value} needs to be :work, :drop, :internal, :external, :trusted, :home, :dmz, :public, :block"}, allow_nil: true

        # @return [String] Should this configuration be in the running firewalld configuration or persist across reboots.
        attribute :permanent
        validates :permanent, type: String

        # @return [Object] Should this configuration be applied immediately, if set as permanent
        attribute :immediate

        # @return [String] Should this port accept(enabled) or reject(disabled) connections.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}

        # @return [Fixnum] The amount of time the rule should be in effect for when non-permanent.
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [String] The masquerade setting you would like to enable/disable to/from zones within firewalld
        attribute :masquerade
        validates :masquerade, type: String
      end
    end
  end
end
