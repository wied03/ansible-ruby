# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # allows the addition, modification and deletion of sessions in a consul cluster. These sessions can then be used in conjunction with key value pairs to implement distributed locks. In depth documentation for working with sessions can be found here http://www.consul.io/docs/internals/sessions.html
      class Consul_session < Base
        # @return [:present, :absent, :info, :node, :list, nil] whether the session should be present i.e. created if it doesn't exist, or absent, removed if present. If created, the ID for the session is returned in the output. If absent, the name or ID is required to remove the session. Info for a single session, all the sessions for a node or all available sessions can be retrieved by specifying info, node or list for the state; for node or info, the node name or session id is required as parameter.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :info, :node, :list], :message=>"%{value} needs to be :present, :absent, :info, :node, :list"}, allow_nil: true

        # @return [String, nil] the name that should be associated with the session. This is opaque to Consul and not required.
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] the optional lock delay that can be attached to the session when it is created. Locks for invalidated sessions ar blocked from being acquired until this delay has expired. Durations are in seconds
        attribute :delay
        validates :delay, type: Integer

        # @return [Object, nil] the name of the node that with which the session will be associated. by default this is the name of the agent.
        attribute :node

        # @return [Object, nil] name of the datacenter in which the session exists or should be created.
        attribute :datacenter

        # @return [Array<String>, String, nil] a list of checks that will be used to verify the session health. If all the checks fail, the session will be invalidated and any locks associated with the session will be release and can be acquired once the associated lock delay has expired.
        attribute :checks
        validates :checks, type: TypeGeneric.new(String)

        # @return [String, nil] host of the consul agent defaults to localhost
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] the port on which the consul agent is running
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] the protocol scheme on which the consul agent is running
        attribute :scheme
        validates :scheme, type: String

        # @return [Boolean, nil] whether to verify the tls certificate of the consul agent
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] the optional behavior that can be attached to the session when it is created. This can be set to either ‘release’ or ‘delete’. This controls the behavior when a session is invalidated.
        attribute :behavior
        validates :behavior, type: String
      end
    end
  end
end
